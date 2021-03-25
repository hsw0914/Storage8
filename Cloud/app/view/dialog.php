

<div class="container">
    <div class="modal fade" id="login" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">LOGIN</h4>
                </div>
                <div class="modal-body">
                    <form action="/app/controll/login.php" method="post">

                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required name="Email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required name="Password">
                        </div>

                        <div class="modal-footer">
                            <input type="submit" class="btn btn-primary" value="Login" style="font-size: .8em">
                            <button type="button" class="btn btn-default" data-dismiss="modal"  style="font-size: .8em">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="modal fade" id="register" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Register</h4>
                </div>
                <div class="modal-body">
                    <form action="/app/controll/add_user.php" method="post">

                        <div class="form-group">
                            <label for="exampleInputEmail1">User Name</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="User Name" required name="Name">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Email Adress</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required name="Email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required name="Password">
                            <small id="emailHelp" class="form-text text-muted">The password you choose will be encrypted.</small>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Confilm Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confilm Password" required name="C_Password">
                        </div>


                        <div class="modal-footer">
                            <input type="submit" class="btn btn-primary" value="Join" style="font-size: .8em">
                            <button type="button" class="btn btn-default" data-dismiss="modal" style="font-size: .8em">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div id="shareModal" class="modal fade" id="Link">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Share Link</h4>
                    </div>
                    <div class="modal-body">
                        <form action="#" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="share-link" aria-describedby="emailHelp" readonly>
                                <small id="emailHelp" class="form-text text-muted">Copy the above address to download from anywhere</small>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" style="font-size: .8em">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="modal fade" id="upload" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">File Upload And Add Folder</h4>
                    </div>
                    <div class="modal-body">
                        <form action="/app/controll/add_file.php" method="post" enctype="multipart/form-data"  class="form-inline">
                            <div class="form-group" style="width: 100%;">
                                <label for="ex_file" class="form-control upload-name" style="cursor: pointer; width: 78%; margin: 1%;">파일을 선택해주세요</label>
                                <input type="file" name="file" class="form-control upload-hidden" id="ex_file" style="display: none;">
                                <input type="hidden" name="idx" value="<?=$_GET['idx']?>">
                                <input type="submit" value="생성"  class="btn btn-primary " style="width: 18%; margin: 1%;">
                            </div>
                        </form>
                        <hr>
                        <div class="panel panel-default">
                            <form action="/app/controll/add_dir.php" method="post" class="form-inline">
                                <input type="text" name="dir" class="form-control" placeholder="폴더명을 작성해주세요" style="width: 78%; margin: 1%;">
                                <input type="hidden" name="idx" value="<?=$_GET['idx']?>">
                                <input type="submit" value="생성" class="btn btn-success" style="width: 18%; margin: 1%;">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>