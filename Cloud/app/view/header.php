<?php

$isset_idx = "";
$isset_lv = "";
if (isset($_SESSION['idx'])) {
    $isset_idx = $_SESSION['idx'];
    $isset_lv = $_SESSION['lv'];
}

// paging

?>

<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>:: File Could ::</title>
    <link rel="stylesheet" href="/static/css/bootstrap-4.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <script src="/static/css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"></script>
</head>
<body>
<div class="container">
    <div class="nav" data-example-id="navbar-form">
        <ul class="more" style="margin: 0 10px 0 0; float: right;">
        </ul>
    </div>
        <div class="panel-body">
            <form class="navbar-form navbar-left" style="width: 100%;" action="/index.php" method="get">
                <div class="form-group mb-0" style="width: 100%;">
                    <h2 style="display: inline-block"><a href="/" class="btn btn-default font-weight-bold">File Could</a></h2>
                    <div class="btn-group" style="float: right; padding-top: 4px; ">
                        <?php if (!$isset_idx) { ?>
                            <a href="#" data-toggle="modal" data-target="#login" class="btn btn-primary font-weight-light">Login</a>
                            <a href="#" data-toggle="modal" data-target="#register" class="btn btn-warning font-weight-light">Register</a>
                        <?php } else { ?>
                            <a href="/app/view/posts.php" class="btn btn-primary font-weight-light">My posts</a>
                            <a href="/app/controll/logout.php" class="btn btn-danger font-weight-light">Logout</a>
                            <a href="/app/view/inset.php" class="btn font-weight-light btn-warning" style="text-align: center" >내부공유</a>
                            <?php if ($_SESSION['lv'] == 99) {?>
                                <a href="/app/view/user.php" class="btn btn-success font-weight-light">회원관리</a>
                            <?php }?>
                        <?php } ?>
                    </div>
                </div>
            </form>
        </div>