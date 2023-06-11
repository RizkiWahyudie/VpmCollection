<?php
if (trim($row['foto']) == '') {
  $foto_user = 'users.gif';
} else {
  $foto_user = $row['foto'];
}
echo "<p class='titleProductWishlist'>Profile</p>
<center><img width='150px' style='margin-bottom:2rem;' src='" . base_url() . "asset/foto_user/$foto_user' class='img-circle'></center>
<center>
<a class='btn btn-success' href='" . base_url() . "members/edit_profile'><span class='glyphicon glyphicon-edit'></span> Edit Data</a>
<a style='margin-right:5px' class='btn btn-info href='#uploadfoto' data-toggle='modal' data-target='#uploadfoto'>Ganti Foto</a>
</center>
<div class='form-group' style='margin-bottom: 4rem; margin-top:2rem;'>
  <div class='container formRegis'>
    <label>Username</label>
    <div class='contactForm'>
        <input type='text' value='$row[username]' readonly>
    </div>
    <label>Nama</label>
    <div class='contactForm'>
        <input type='text' value='$row[nama_lengkap]' readonly>
    </div>
    <label>Email</label>
    <div class='contactForm'>
        <input type='text' value='$row[email]' readonly>
    </div>
    <label>Jenis Kelamin</label>
    <div class='contactForm'>
        <input type='text' value='$row[jenis_kelamin]' readonly>
    </div>
    <label>Tempat Tanggal Lahir</label>
    <div class='contactForm'>
        <input type='text' value='$row[tempat_lahir], " . tgl_indo($row['tanggal_lahir']) . "' readonly>
    </div>
    <label>Kota Domisili</label>
    <div class='contactForm'>
        <input type='text' value='$row[kota]' readonly>
    </div>
    <label>Alamat</label>
    <div class='contactForm'>
        <input type='text' value='$row[alamat_lengkap]' readonly>
    </div>
    <label>No Hp</label>
    <div class='contactForm'>
        <input type='text' value='$row[no_hp]' readonly>
    </div>
  </div>
</div>";
?>