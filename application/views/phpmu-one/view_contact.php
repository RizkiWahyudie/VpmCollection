<p class='titleProductWishlist'>Contact</p>
<hr>
<?php
$attributes = array('id' => 'formku', 'class' => 'form-horizontal', 'role' => 'form');
$ip = $_SERVER['REMOTE_ADDR'];
echo form_open_multipart('contact', $attributes);
echo "<div class='contact'>
<div class='container formContact'>
    <label>Nama</label>
    <div class='contactForm'>
        <input type='text' name='a'>
    </div>
    <label>Email</label>
    <div class='contactForm'>
        <input type='text' name='b'>
    </div>
    <label>Pesan</label>
    <div class='contactForm'>
        <input type='textarea' name='d' style='height:130px' minlength='10'>
    </div>
    <input type='hidden' class='required form-control' name='c' value='$ip'>
    <div class='purchase-info'>
        <button type='submit' name='submit' class='btn'>
            Kirim Pesan<i class='fas fa-shopping-cart'></i>
        </button>
    </div>
</div>
<div class='container formSosmed'>
    <h4>Telephone</h4>
    <div style='margin-bottom:3rem;'>
          <a class='contactItem2'>
            <img class='contactImg' width='30px' src='https://svgshare.com/i/suR.svg'>
            <span class='contactSubItem2'>0124 - 2784 - 2984</span>
          </a>
          <a class='contactItem2'>
            <img class='contactImg' width='30px' src='https://svgshare.com/i/sx1.svg'>
            <span class='contactSubItem2'>0895 - 2736 - 3619</span>
          </a>
      </div>
    <h4>Social Media</h4>
    <div style='margin-bottom:3rem;'>
        <div>
          <a href='https://www.facebook.com' class='contactItem2'>
            <img class='contactImg' width='30px' src='https://svgshare.com/i/sv8.svg'>
            <span class='contactSubItem2'>vpm_collection</span>
          </a>
          <a href='https://www.instagram.com' class='contactItem2'>
            <img class='contactImg' width='30px' src='https://svgshare.com/i/sv9.svg'>
            <span class='contactSubItem2'>vpm_collection</span>
          </a>
        </div>
    </div>
    <h4>Alamat</h4>
    <span>$alamat</span>
</div>
</div>
</form>
<iframe width='100%' height='350' style='margin-top:2rem;margin-bottom:4rem;border-radius:2rem;' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='$maps'></iframe>";