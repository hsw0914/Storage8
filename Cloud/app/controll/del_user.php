<?php
define('PATH',$_SERVER['DOCUMENT_ROOT'].'/');
require PATH.'app/db/db.php';

$GLOBALS['db']->prepare('DELETE FROM `user` WHERE idx = ?')->execute([$_GET['idx']]);

echo "<script>alert('탈퇴 완료!'); location.replace('/')</script>";