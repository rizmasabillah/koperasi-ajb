<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <div class="login-form">
                <form action="<?= base_url() ?>auth/prosesLoginPegawai" method="POST">
                    <div class="form-group">
                        <center><label style="font-weight: bold;">Login Pegawai</label></center>
                        <div class="login-logo">
                            <a href="<?= base_url() ?>">
                                <img class="align-content" src="<?= base_url() ?>assets/datakoperasi/logo_koperasi.png" width="20%" alt="">
                            </a>
                        </div>
                        <?= $this->session->flashdata('message'); ?><br>
                        <label>Email / Username Pegawai</label>
                        <input type="text" name="email" class="form-control" placeholder="Email or Username" autofocus required>
                    </div>
                    <div class="form-group">
                        <label>Password Pegawai</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" onclick="passwordShowUnshow()"> <i class="fa fa-eye"></i> Show/Unshow Password
                        </label>
                        <label class="pull-right">
                            <a href="#">Lupa Password?</a>
                        </label>
                    </div>
                    <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Login <i class="fa fa-sign-in"></i></button>
                    <div class="register-link m-t-15 text-center">
                        <p>Login Sebagai Anggota?<a href="<?= base_url() ?>auth/loginAnggota"> Klik Disini!</a></p>
                    </div>
                </form>
				
            </div>
        </div>
    </div>
</div>

</body>

</html>
