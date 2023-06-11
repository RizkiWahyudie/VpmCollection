<?php
echo "<p class='titleProductWishlist'>Register</p>";
$attributes = array('id' => 'formku', 'class' => 'form-horizontal', 'role' => 'form');
echo form_open_multipart('auth/register', $attributes);
echo "<div class='form-group' style='margin-bottom: 4rem;'>
  <div class='container formRegis'>
    <label>Nama</label>
    <div class='contactForm'>
        <input type='text' name='c' required>
    </div>
    <label>Email</label>
    <div class='contactForm'>
        <input type='email' name='d' required>
    </div>
    <label>Username</label>
    <div class='contactForm'>
        <input type='text' name='a' minlength='5' required onkeyup=\"nospaces(this)\">
    </div>
    <label>No Hp</label>
    <div class='contactForm'>
        <input type='text' name='j' required>
    </div>
    <label>Alamat</label>
    <div class='contactForm'>
        <input type='text' name='e' required>
    </div>
    <label>Kota Domisili</label>
    <div class='contactForm'>
        <select class='form-control' name='h' required>
        <option value=''>- Pilih -</option>";
foreach ($kota as $rows) {
    echo "<option value='$rows[kota_id]'>$rows[nama_kota]</option>";
}
echo "</select>
    </div>
    <label>Password</label>
    <div class='contactForm'>
        <input type='password' name='b' required onkeyup=\"nospaces(this)\">
    </div>
    <div class='purchase-info'>
        <button type='submit' name='submit' class='btn'>
            Register<i class='fas fa-shopping-cart'></i>
        </button>
        <a  style='margin-left:1rem;' href='" . base_url() . "auth/login'>Sudah Punya Akun?</a>
    </div>
  </div>
</div>
</form>";
?>