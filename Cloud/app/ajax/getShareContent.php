<?php

include '../db/db.php';

    $content = $db->prepare('SELECT * FROM `in_shape` WHERE `idx` = ?');
    $content->execute([$_POST['content-index']]);
    echo json_encode($content->fetch());
