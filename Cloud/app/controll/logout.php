<?php
include '../db/db.php';

session_destroy();
echo '<script>alert("로그아웃 되었습니다."); history.back();</script>';