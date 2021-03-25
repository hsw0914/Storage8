<?php
define('PATH',$_SERVER['DOCUMENT_ROOT'].'/');

require PATH.'app/db/db.php';
require PATH.'app/view/header.php';

$stmt = $db->prepare('SELECT * FROM `user` WHERE 1');
$stmt->execute();
$data = $stmt->fetchAll();

$isset_idx = "";
$isset_lv = "";
if (isset($_SESSION['idx'])) {
    $isset_idx = $_SESSION['idx'];
    $isset_lv = $_SESSION['lv'];
}

$search = isset($_GET['search']) ?
    "`in_shape`.`Filename` LIKE '%{$_GET['search']}%' or `user`.`Username` LIKE '%{$_GET['search']}%'" : '1';
$paging_index = isset($_GET['p']) ? $_GET['p'] : 1;
$paging_number = 20;
$paging_start = ($paging_index - 1) * $paging_number;


$paging_query = "
    SELECT
    `in_shape`.`idx`, `in_shape`.`Filename`, `in_shape`.`Filesize`, `in_shape`.`Outsrc`, `in_shape`.`Useridx`,
    `inset`.`Date`, `inset`.`Download`,`inset`.`shape_idx`,
    `user`.`Username`
    FROM `inset`
    INNER JOIN `in_shape` ON `inset`.`shape_idx` = `in_shape`.`idx`
    INNER JOIN `user` ON `in_shape`.`Useridx` = `user`.`idx`
    WHERE {$search}
    ORDER BY `idx` DESC
";

$inset_all = $GLOBALS['db']->prepare($paging_query);
$inset_all->execute([]);
$inset_all_count = $inset_all->rowCount();

$paging_all_block = ceil($inset_all_count / $paging_number);
$paging_block = 5;
$paging_all_block_number = ceil($paging_all_block / $paging_block);
$paging_block_now_all = ceil($paging_index / $paging_block);
$paging_block_start = ($paging_block_now_all * $paging_block - $paging_block) + 1;
$paging_block_end = ($paging_block_now_all * 5) + 1;
if ($paging_block_end > $paging_all_block + 1) {
    $paging_block_end = $paging_all_block + 1;
}

$inset = $GLOBALS['db']->prepare($paging_query."LIMIT {$paging_start}, {$paging_number}");
$inset->execute([]);
$inset_list = $inset->fetchAll();


?>


<form action="/app/view/inset.php" method="get">
    <div class="row full-width" style="margin-bottom: 10px;">
        <div class="col-4">
            <input type="text" class="form-control" placeholder="Search" style="width: 100%;" value="<?= !empty($_GET['data']) ? htmlentities($_GET['data']) : '' ?>" name="search">
        </div>
    </div>
</form>
<form action="/app/controll/del_dir_in.php" method="post">
    <table class="table table-striped table_center">
        <thead>
        <tr>
            <th><input type="checkbox" id="check_"><label for="check_" style="margin-bottom: 0;margin-left: 5px;"> 전체선택</label></th>
            <th>파일명</th>
            <th>파일용량</th>
            <th>공유자</th>
            <th>공유일</th>
            <th>다운로드 횟수</th>
            <th>다운로드 주소</th>
            <th>다운로드</th>
            <th>공유삭제</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($inset_list as $list ) :?>
            <tr>
                <td scope="row">
                    <?php if ($isset_idx === $list['Useridx'] || $isset_lv == 99) { ?>
                        <input type="checkbox" name="namee[]"  value="<?=$list['idx']?>">
                    <?php }?>
                </td>
                <td><?=$list['Filename']?></td>
                <td><?=$list['Filesize']?></td>
                <td><?=$list['Username']?></td>
                <td><?=$list['Date']?></td>
                <td><?=$list['Download']?></td>
                <td><a href="#" data-target="<?=$list['idx']?>" class="openShareModal"><i class="fa fa-link fa-2x"></i></a></td>
                <td><a href="/download.php?idx=<?=$list['shape_idx']?>"><i class="fa fa-download fa-2x" aria-hidden="true" ></i></a></td>
                <?php if ($isset_idx === $list['Useridx'] || $isset_lv == 99) { ?>
                    <td><a href="/app/controll/del_dir.php?idx=<?=$list['idx']?>&name=outset">공유삭제</a></td>
                <?php }else { ?>
                    <td></td>
                <?php }?>
            </tr>
        <?php endforeach;?>
        <tr style="background-color: rgba(0,0,0,.05)">
            <td><input type="submit" value="일괄 삭제" class="form-control" style="cursor: pointer;"></td>
            <td colspan="7">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center mb-0">
                        <?php if ($paging_index >= 6) {?>
                            <li class='page-item'><a href='/app/view/inset.php?p=<?= $paging_block_start - $paging_block ?>&search=<?=$_GET['search']?>' class='page-link' style='color: #333333;' tabindex='-1'>Previous</a></li>
                        <?php } ?>
                        <?php for ($i = $paging_block_start; $i < $paging_block_end; $i++) { ?>
                            <?php if ($paging_index == $i) { ?>
                                <li class='page-item'><a href="/app/view/inset.php?p=<?= $i ?>&search=<?=$_GET['search']?>" class='page-link' style='color:#fff; background: #555'><?= $i ?></a></li>
                            <?php } else { ?>
                                <li class='page-item'><a href="/app/view/inset.php?p=<?= $i ?>&search=<?=$_GET['search']?>" class='page-link' style='color:#333'><?= $i ?></a></li>
                            <?php } ?>
                        <?php } ?>
                        <?php if ($paging_block_start < ($paging_all_block_number * $paging_block - $paging_block) + 1) {?>
                            <li class='page-item'><a href="/app/view/inset.php?p=<?= $paging_block_start + $paging_block ?>&search=<?=$_GET['search']?>" class='page-link' style='color: #333333;'>Next</a></li>
                        <?php } ?>
                    </ul>
                </nav>
            </td>
            <td><span class="form-control" style="cursor: pointer;"  onclick="$('html, body').stop().animate( { scrollTop : 0 } );" ><i class="fa fa-arrow-up"></i></span></td>
        </tr>
    </table>
</form>

<?php

require PATH.'app/view/dialog.php';
require PATH.'app/view/footer.php';
?>
