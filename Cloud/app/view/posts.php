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

$paging_index = isset($_GET['p']) ? $_GET['p'] : 1;
$paging_number = 20;
$paging_start = ($paging_index - 1) * $paging_number;




$paging_query = "
    SELECT * FROM `in_shape`
    WHERE 1
    ORDER BY `idx` DESC
";

$in_shape_all = $GLOBALS['db']->prepare($paging_query);
$in_shape_all->execute([]);
$in_shape_all_count = $in_shape_all->rowCount();

$paging_all_block = ceil($in_shape_all_count / $paging_number);
$paging_block = 5;
$paging_all_block_number = ceil($paging_all_block / $paging_block);
$paging_block_now_all = ceil($paging_index / $paging_block);
$paging_block_start = ($paging_block_now_all * $paging_block - $paging_block) + 1;
$paging_block_end = ($paging_block_now_all * 5) + 1;
if ($paging_block_end > $paging_all_block + 1) {
    $paging_block_end = $paging_all_block + 1;
}

$in_shape = $GLOBALS['db']->prepare($paging_query."LIMIT {$paging_start}, {$paging_number}");
$in_shape->execute([]);
$in_shape_list = $in_shape->fetchAll();


?>

<div class="col-12">
    <form action="/app/controll/del_dir_out.php" method="post">
        <table class="table table-striped table_center">
            <?php
            $parent = 0;
            if (isset($_GET['idx'])) {
                $parent = $_GET['idx'];
            }

            $dir = $GLOBALS['db']->prepare('SELECT * FROM `in_shape`WHERE Useridx = ? && parent = ?');
            $dir->execute([$_SESSION['idx'],$parent]);
            $dir_list = $dir->fetchAll();

            $par = $GLOBALS['db']->prepare('SELECT * FROM `in_shape` WHERE Useridx = ? && idx =?');
            $par->execute([$_SESSION['idx'],$parent]);
            $id = $par->fetch();
            ?>
            <tr>
                <?php if ( $parent > 1) { ?>
                <td><a href="?idx=<?=$id['parent']?>"><i class="fa fa-arrow-left" aria-hidden="true"> 뒤로가기</i></a></td>
                <?php } else { ?>
                <td></td>
                <?php } ?>
                <td>파일 / 디렉토리명</td>
                <td><a href="#" data-toggle="modal" data-target="#upload"><i class="fa fa-plus" aria-hidden="true" title="파일 또는 폴더를 생성할수 있습니다"> 파일올리기</i></a></td>
            </tr>
                <tr>
                    <td colspan="3">
                        <?php foreach ($dir_list as $list) { ?>
                            <?php if ($list['is_dir'] === "Y") {?>
                                <a href="?idx=<?=$list['idx']?>">
                                    <div class="card" style="width: 18%; float: left; margin: 1%;  background: #daffff;">
                                        <div class="card-body" style="width:188.08px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;">
                                            <i class="fa fa-folder" aria-hidden="true"></i>
                                            <?=$list['Filename']?>
                                        </div>
                                    </div>
                                </a>
                            <?php } else { ?>
                                <a href="/download.php?idx=<?=$list['idx']?>" class="file_">
                                    <div class="card" style="width: 18%; float: left; margin: 1%;">
                                        <div class="card-body" style="width:188.08px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;">
                                            <i class="fa fa-file" aria-hidden="true"></i>
                                            <?=$list['Filename']?>
                                        </div>
                                        <div class="card func dn" style="position: absolute; bottom: -100%; z-index:2; width: 100%;">
                                            <ul>
                                                <li style="width:50%;"><div class="btn btn-success" style="width: 98%;"> 내부공유 </div></li>
                                                <li style="width:50%;"><div class="btn btn-primary" style="width: 98%;"> 외부공유 </div></li>
                                                <li style="width:50%;"><div class="btn btn-dark" style="width: 98%;"> 다운 </div></li>
                                                <li style="width:50%;"><div class="btn btn-danger" style="width: 98%;"> 삭제 </div></li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                            <?php } ?>
                        <?php } ?>
                    </td>
                </tr>
        </table>
    </form>
</div>
<a href="#" class="btn border pull-right">회원탈퇴</a>
<?php

require PATH.'app/view/dialog.php';
require PATH.'app/view/footer.php';
?>
