<?php
if ($reseller) {
  $ktpinput = "<img width='250px' src='asset/reseller/$reseller[ktp]' />";
  $namatoko = "$reseller[nama_olshop]";
  $linktoko = "$reseller[link_olshop]";
  $button = "<button class='form-control required' disabled name='submit'>Sudah Mendaftar</button>";
} else {
  $ktpinput = "<input type='file' name='f' class='required form-control' placeholder='Masukkan Username' required>";
  $namatoko = "$reseller[nama_olshop]";
  $linktoko = "$reseller[link_olshop]";
  $button = "<input class='btn btn-primary' type='submit' name='submit' value='Daftar'>";
}
if ($reseller['status'] == 1) {
  $status = "Terkonfirmasi";
  $konfirm = "";
} else {
  $status = "Belum Dikonfirmasi";
  $konfirm = "* Bila sudah melewati 12 jam dari daftar akun reseller belum Terkonfirmasi harap hubungi admin";
}
echo "<p class='titleProductWishlist'>Daftar Reseller</p><p align='center'>
           Pastikan data-data dibawah ini sudah benar, agar tidak terjadi kesalahan saat admin menkonfirmasi KTP.</p>
           <p align='center' style='color:red;'>$konfirm</p>";
$attributes = array('id' => 'formku', 'class' => 'form-horizontal', 'role' => 'form');
echo form_open_multipart('reseller', $attributes);
echo "
<div class='container formRegis' style='margin-top:3rem;'>
  <label for='inputEmail'>KTP</label>
  <div class='contactForm'>
    $ktpinput
  </div>  
  <label for='inputEmail'>Nama Toko</label>
  <div class='contactForm'>
    <input type='text' name='b' value='$namatoko' required class='required form-control' placeholder='Masukkan Nama Toko'>
  </div>
  <label for='inputPassword'>Link Toko</label>
  <div class='contactForm'>
    <input type='text' name='c' value='$linktoko' class='form-control required' placeholder='Masukkan Link'>
  </div>
  <label for='inputPassword'>Status</label>
  <div class='contactForm'>
    <input readonly type='text' name='d' value='$status' class='form-control required'>
  </div>
  <div class='purchase-info' style='margin-bottom:4rem;'>
    $button
  </div>
</div>";
echo form_close();
?>