<?php
$attributes = array('id' => 'formku', 'class' => 'form-horizontal', 'role' => 'form');
echo form_open_multipart('members/edit_profile', $attributes);
echo "<p class='titleProductWishlist'>Edit Profile</p>
  <div class='form-group' style='margin-bottom: 4rem; margin-top:2rem;'>
    <div class='container formRegis'>
      <label>Username</label>
      <div class='contactForm'>
          <input type='text' value='$row[username]' name='aa' required>
      </div>
      <label>Password</label>
      <div class='contactForm'>
          <input type='password' minlength='6' value='' name='a' placeholder='kosongkan jika tidak dirubah'>
      </div>
      <label>Nama</label>
      <div class='contactForm'>
          <input type='text' value='$row[nama_lengkap]' name='b' required>
      </div>
      <label>Email</label>
      <div class='contactForm'>
          <input type='email' value='$row[email]' name='c' required>
      </div>
      <label>Jenis Kelamin</label>
      <div class='' style='margin-bottom:1rem;'>
      ";
if ($row['jenis_kelamin'] == 'Laki-laki') {
  echo "<input type='radio' value='Laki-laki' name='d' checked> Laki-laki <input type='radio' value='Perempuan' name='d'> Perempuan ";
} else {
  echo "<input type='radio' value='Laki-laki' name='d'> Laki-laki <input type='radio' value='Perempuan' name='d' checked> Perempuan ";
}
echo "
      </div>
      <label>Tanggal Lahir</label>
      <div class='contactForm'>
          <input class='datepicker' type='text' name='e' value='$row[tanggal_lahir]' data-date-format='yyyy-mm-dd' required>
      </div>
      <label>Tempat Lahir</label>
      <div class='contactForm'>
          <input type='text' type='text' name='f' value='$row[tempat_lahir]'  required>
      </div>
      <label>Kota Domisili</label>
      <div class='contactForm'>
        <select class='form-control' name='j' id='city' required>
          <option value=''>- Pilih -</option>";
foreach ($kota->result_array() as $rows) {
  if ($row['kota_id'] == $rows['kota_id']) {
    echo "<option value='$rows[kota_id]' selected>$rows[nama_kota]</option>";
  } else {
    echo "<option value='$rows[kota_id]'>$rows[nama_kota]</option>";
  }
}
echo "  </select>
      </div>
      <label>Alamat</label>
      <div class='contactForm'>
          <input type='textarea' value='$row[alamat_lengkap]' name='g' required>
      </div>
      <label>No Hp</label>
      <div class='contactForm'>
          <input type='number' value='$row[no_hp]' name='l' required>
      </div>
      <div class='purchase-info'>
        <button type='submit' name='submit' class='btn'>Simpan Perubahan
        </button>
      </div>
    </div>
  </div>";
echo form_close();