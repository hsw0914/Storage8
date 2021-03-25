<?php
define('PATH',$_SERVER['DOCUMENT_ROOT'].'/');

require PATH.'app/db/db.php';
require PATH.'app/view/header.php';

$stmt = $db->prepare('SELECT * FROM `user` WHERE 1');
$stmt->execute();
$data = $stmt->fetchAll();

$lv = isset($_SESSION['lv']) ? $_SESSION['lv'] : "";

if ($lv == "99") {
        ?>

            <table class="table table-striped table_center">
                <thead>
                <tr>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Username</th>
                    <th>Level</th>
                    <th>#</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($data as $list) { ?>
                    <form action="/app/controll/update_user.php" method="post">
                        <tr>
                            <td scope="row"><input type="text" name="Email" class="form-control" value="<?= $list['Email'] ?>" readonly></td>
                            <td><input type="password" name="Password" class="form-control"></td>
                            <td><input type="text" name="Username" class="form-control" value="<?= $list['Username'] ?>">
                            </td>
                            <td>
                                <select name="lv" style="width: 100%;" class="form-control">
                                    <option value="1" <?= ($list['lv'] == 1) ? "selected" : "" ?>>회원</option>
                                    <option value="99" <?= ($list['lv'] == 99) ? "selected" : "" ?>>관리자</option>
                                </select>
                            </td>
                            <td>
                                <input type="submit" class="btn btn-success" value="수정">
                                <a href="/app/controll/del_user.php?idx=<?= $list['idx'] ?>" class="btn btn-danger">탈퇴</a>
                                <input type="hidden" name="idx" value="<?= $list['idx'] ?>">
                            </td>
                        </tr>
                    </form>
                <?php } ?>
                </tbody>
            </table>

        <?php
    } else {
        echo "<script> alert('잘못된 접근입니다!'); history.back()</script>";
    }
require PATH.'app/view/footer.php';
?>