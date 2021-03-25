<?php
define('PATH',$_SERVER['DOCUMENT_ROOT'].'/');

require PATH.'app/db/db.php';
if (isset($_GET['q'])) {
    $name = $GLOBALS['db']->prepare('SELECT * FROM `in_shape` WHERE Outsrc = ?');
    $name -> execute([$_GET['q']]);
    $namee = $name->fetch();

    $download = $GLOBALS['db']->prepare('SELECT * FROM `outset` WHERE shape_idx = ?');
    $download -> execute([$namee['idx']]);
    $downloader = $download->fetch();
    $down = $downloader['Download'];

    $GLOBALS['db']->prepare('UPDATE `outset` SET `download`=? WHERE 1')->execute([$down + 1]);
    header('Content-Disposition:attachment; filename="'.$namee['Filesrc']);
    echo file_get_contents(PATH.'static/file/'.$namee['Filesrc']);
    exit;
}
require PATH.'app/view/header.php';
require PATH.'app/view/index.php';
require PATH.'app/view/dialog.php';
require PATH.'app/view/footer.php';