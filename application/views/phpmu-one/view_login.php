<p class='titleProductWishlist'>Login</p>
<div class="">
    <form method="post" action="<?php echo base_url(); ?>auth/login" role="form" id='formku'>
        <div class="form-group">
            <div class='container formRegis'>
                <label for="inputEmail">Username</label>
                <div class="contactForm">
                    <input type="text" name="a" class="required form-control" placeholder="Masukkan Username"
                        autofocus="" minlength='5' onkeyup="nospaces(this)">
                </div>
                <label for="inputPassword">Password</label>
                <div class="contactForm">
                    <input type="password" name="b" class="form-control required" placeholder="Masukkan Password"
                        onkeyup=\"nospaces(this)\" autocomplete="off">
                </div>
                <a href="#" data-toggle='modal' data-target='#lupass'>Lupa Password Anda?</a><br><br>
                <div class='purchase-info' style='margin-bottom:4rem;'>
                    <input type='submit' name='login' class='btn' value='Login'>
                    <a style='margin-left:1rem;' href='register'>Belum Punya Akun?</a>
                </div>
            </div>
        </div>
    </form>
</div>