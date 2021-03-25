<?php
define('PATH',$_SERVER['DOCUMENT_ROOT'].'/');
require PATH.'app/db/db.php';

$login = $GLOBALS['db']->prepare('SELECT * FROM `user` WHERE Email = ? && Password = ?');
$login->execute([$_POST['Email'],hash('sha256',$_POST['Email'].$_POST['Password'])]);
$login_ok = $login->fetch();

if ($login_ok) {
    $_SESSION['lv'] = $login_ok['lv'];
    $_SESSION['idx'] = $login_ok['idx'];
    echo "<script>alert('로그인 성공!'); location.replace('/')</script>";
}else {
    echo "<script>alert('로그인 실패!'); history.back()</script>";
}