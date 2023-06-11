<div class='aboutusHero'>
    <div class='heroItem'>
        <center>
            <img src="https://i.ibb.co/vDBm3KK/hijab-Photo-Room-png-Photo-Room.png" alt="">
        </center>
    </div>
    <div class='heroItem'>
        <span>VPM Collection</span>
        <p>Selamat datang di VPM Collection, toko online yang menawarkan beragam produk busana muslim berkualitas
            tinggi dan nyaman untuk kebutuhan sehari-hari Anda. Kami memiliki berbagai macam pilihan busana muslim
            yang dapat memenuhi kebutuhan Anda mulai dari mukena, baju setelan wanita, dress, kaftan, hingga gamis.
        </p>
    </div>
</div>
<?php
echo "<p class='titleProduct'>Category</p>
<hr>
<div class='category'>";
$kategori = $this->model_app->view('rb_kategori_produk');
foreach ($kategori->result_array() as $row) {
    echo "<a style='text-decoration:none' class='xs-hidden categoryBtn'
        href='" . base_url() . "produk/kategori/$row[kategori_seo]'>$row[nama_kategori]</a>";
}
echo "</div>"; ?>
<p class='titleProductWishlist' style='margin-top:4rem;'>Tentang Kami</p>
<p style='text-align:center; margin-top:-1rem; margin-bottom:2rem; color: gray;'>Tempatnya Wanita untuk menentukan
    Fashionnya!
</p>
<p style='text-align:center;line-height: 1.6;font-size: 15px;letter-spacing: 1px; margin-bottom: 5rem;'>
    Selamat datang di VPM Collection, toko online yang menawarkan beragam produk busana muslim berkualitas tinggi dan
    nyaman untuk kebutuhan sehari-hari Anda. Kami memiliki berbagai macam pilihan busana muslim yang dapat memenuhi
    kebutuhan Anda mulai dari mukena, baju setelan wanita, dress, kaftan, hingga gamis.

    Setiap produk yang kami tawarkan dibuat dengan bahan yang berkualitas tinggi dan desain yang menarik. Kami yakin
    Anda akan merasa nyaman dan percaya diri ketika mengenakan produk kami. <br><br>

    Bagi Anda yang ingin bergabung dengan kami sebagai reseller, VPM Collection menawarkan peluang yang menarik untuk
    meningkatkan penghasilan Anda. Dengan bergabung bersama kami, Anda akan mendapatkan keuntungan dari produk-produk
    kami yang laris di pasaran. Kami juga akan memberikan dukungan penuh dalam memasarkan produk kami.

    Keunggulan VPM Collection tidak hanya terletak pada kualitas produk yang kami tawarkan, tetapi juga pada pelayanan
    yang kami berikan kepada pelanggan. Kami selalu siap memberikan pelayanan yang terbaik untuk memenuhi kebutuhan Anda
    dengan cepat dan efisien. Kami juga menawarkan harga yang terjangkau sehingga produk-produk kami dapat dinikmati
    oleh semua kalangan. <br><br>

    Jangan ragu untuk bergabung dengan VPM Collection dan menikmati produk busana muslim berkualitas tinggi yang nyaman
    dan laris di pasaran. Segera kunjungi toko online kami untuk melihat koleksi produk kami yang lengkap dan dapatkan
    pengalaman berbelanja yang menyenangkan dengan pelayanan yang terbaik dari kami. Terima kasih telah mempercayakan
    kebutuhan fashion muslim Anda kepada VPM Collection. <br>
</p>
<p class='titleProductWishlist' style='margin-top:4rem;'>Keunggulan</p>
<p style='text-align:center; margin-top:-1rem; color: gray;'>Produk dengan Kualitas Terbaik dan Nyaman!</p>
<div class='aboutuskeunggulan'>
    <div class='heroItem2'>
        <center><img src="https://i.ibb.co/QF67fDk/dress1111.jpg" alt=""></center>
    </div>
    <div class="heroItem2">
        <span>Busana Muslim Nyaman dan Berkualitas Tinggi</span>
        <p>Kami mengutamakan kualitas dan kenyamanan pada setiap produk yang kami tawarkan. Bahan yang kami
            gunakan berkualitas tinggi dan desain yang menarik sehingga Anda dapat tampil percaya diri dan merasa
            nyaman sepanjang hari.</p>
    </div>
</div>

<div class='aboutuskeunggulan'>
    <div class="heroItem2 heroItem21">
        <span>Tahan Lama dan Sangat Mudah Dirawat</span>
        <p>Kami menggunakan bahan-bahan terbaik yang berkualitas tinggi dan awet sehingga produk kami dapat tahan lama
            dan tidak mudah sobek ketika dicuci. Kami juga memberikan tips dan panduan perawatan produk kami agar tetap
            terlihat baru dan awet. Dengan produk kami, dapat memiliki busana muslim yang nyaman dan tahan lama
            dengan perawatan yang mudah.</p>
    </div>
    <div class='heroItem2 heroItem22'>
        <center><img src="https://i.ibb.co/rM25cKj/mukena-1-1-Copy.jpg" alt=""></center>
    </div>
</div>

<div class='aboutuskeunggulan'>
    <div class='heroItem2'>
        <center><img src="https://i.ibb.co/f8m5q5v/gamis11.jpg" alt=""></center>
    </div>
    <div class="heroItem2">
        <span>Tampil Menarik dengan Busana Muslim Terbaru</span>
        <p>Kami selalu menghadirkan produk terbaru dan Trendy pastinya yang sesuai dengan tren fashion busana muslim
            saat ini. Dengan
            pilihan model yang bervariasi, Anda dapat tampil modis dan menarik dengan produk kami.</p>
    </div>
</div>
<div style='height: 5rem;'></div>
</div>
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