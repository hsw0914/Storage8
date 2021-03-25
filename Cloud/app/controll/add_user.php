<?php
define('PATH',$_SERVER['DOCUMENT_ROOT'].'/');
require PATH.'app/db/db.php';

$email = filter_var($_POST['Email'], FILTER_VALIDATE_EMAIL);

$user = $GLOBALS['db']->prepare('SELECT * FROM `user` WHERE Email = ?');
$user -> execute([$_POST['Email']]);
$user_ok = $user->fetch();

if($email==true) {
    if ($_POST['C_Password'] == $_POST['Password']) {
        if (is_array($user_ok)) {
            echo "<script>alert('이메일이 중복되었습니다.'); history.back();</script>";
        }else {
            $GLOBALS['db']->prepare('INSERT INTO `user`(`Email`, `Password`, `Username`, `lv`) VALUES (?,?,?,?)')->execute([$_POST['Email'], hash("sha256", $_POST['Email'] . $_POST['Password']), $_POST['Name'], 1]);
            echo "<script>alert('회원가입 완료!!'); location.href = '/';</script>";
        }
    } else {
        echo "<script>alert('비밀번호가 일치하지 않습니다.'); history.back();</script>";
    }
} else {
    echo "<script>alert('잘못된 이메일 형식입니다.'); history.back();</script>";
}