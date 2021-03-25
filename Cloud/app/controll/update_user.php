<?php
define('PATH',$_SERVER['DOCUMENT_ROOT'].'/');
require PATH.'app/db/db.php';

    if ($_POST['Password'] == null) {
        $GLOBALS['db']->prepare('UPDATE `user` SET `Username`=?,`lv`=? WHERE `idx`=?')->execute([$_POST['Username'],$_POST['lv'],$_POST['idx']]);

        echo "<script>alert('수정완료!'); history.back()</script>";
    }else {
        $GLOBALS['db']->prepare('UPDATE `user` SET `Password`=?,`Username`=?,`lv`=? WHERE `idx`=?')->execute([hash('sha256', $_POST['Email'].$_POST['Password']),$_POST['Username'],$_POST['lv'],$_POST['idx']]);

        echo "<script>alert('수정완료!'); history.back()</script>";
    }
?>