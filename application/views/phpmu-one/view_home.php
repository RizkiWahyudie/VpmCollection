<?php
if ($this->uri->segment(1) == 'produk') {
  echo "<p class='titleProduct'>Category</p>
        <hr><div class='category'>";
  $kategori = $this->model_app->view('rb_kategori_produk');
  foreach ($kategori->result_array() as $row) {
    echo "<a style='text-decoration:none' class='xs-hidden categoryBtn' href='" . base_url() . "produk/kategori/$row[kategori_seo]'>$row[nama_kategori]</a>";
  }
  echo "</div>";
}
?>

<p class='titleProduct'> &nbsp;
  <?php echo $judul; ?>
</p>
<hr>

<?php
foreach ($iklantengah->result_array() as $row) {
  $hitung = $this->model_iklan->iklan_tengah()->num_rows();
  if ($hitung >= 1) {
    if (preg_match("/swf\z/i", $row['gambar'])) {
      echo "<div style='margin-bottom:4rem;'><a target='_BLANK' title='" . $row['judul'] . "' href='" . $row['url'] . "'><embed class='img-thumbnail' src='" . base_url() . "asset/foto_iklan/" . $row['gambar'] . "' width='100%' quality='high' type='application/x-shockwave-flash'></a></div>";
    } else {
      echo "<div style='margin-bottom:4rem;'><a target='_BLANK' title='" . $row['judul'] . "' href='" . $row['url'] . "'><img class='img-thumbnail' width='100%' src='" . base_url() . "asset/foto_iklan/" . $row['gambar'] . "'></a></div>";
    }
  }
}
?>

<?php
if ($this->uri->segment(2) == 'kategori') {
  $cek = $this->model_app->edit('rb_kategori_produk', array('kategori_seo' => $this->uri->segment(3)))->row_array();
  $jumlah = $this->model_app->view_where('rb_produk', array('id_kategori_produk' => $cek['id_kategori_produk']))->num_rows();
  if ($jumlah <= 0) {
    echo "<div  style='margin:10%' class='alert alert-info'><center>Maaf, Produk pada Kategori ini belum tersedia..!</center></div>";
  }
}

$no = 1;
echo "<div class='produkAll'>";
foreach ($record->result_array() as $row) {
  if (trim($row['gambar']) == '') {
    $foto_produk = 'no-image.png';
  } else {
    $foto_produk = $row['gambar'];
  }
  $j = $this->model_app->jual_umum($row['id_produk'])->row_array();
  $b = $this->model_app->beli_umum($row['id_produk'])->row_array();
  $stok = $b['beli'] - $j['jual'];
  // harus di kasi if login user
  $this->load->database();
  $user_id = $this->session->id_konsumen;
  $querySaleJumlah = $this->db->query("SELECT SUM(a.jumlah) as sales FROM `rb_penjualan_detail` a where a.id_produk=$row[id_produk]")->row_array();
  if ($user_id) {
    $queryWishlist = $this->db->query("SELECT * FROM `rb_wishlist` a where a.id_produk=$row[id_produk] AND a.id_konsumen=$user_id");
    $wishlistLike = $queryWishlist->num_rows();
    $wishlistData = $queryWishlist->row_array();

    echo "<div class='produk'><center>";
    if ($stok == '0') {
      $blur = 'blur';
      $status = '<div class="stok">SOLD OUT</div>';
      $wishlist = "";
    } else {
      $blur = 'normal';
      $status = '';
      if ($wishlistLike == 1) {
        $wishlist = "<a href='" . base_url() . "produk/wishlist_delete/$wishlistData[id_wishlist]'>
    <img style='position:absolute;top:15px;right:15px;cursor:pointer;' src='https://svgshare.com/i/stv.svg' width='25px' >
    </a>";
      } else {
        $wishlist = "<a href='" . base_url() . "produk/wishlist_add/$row[id_produk]/$user_id'>
    <img style='position:absolute;top:15px;right:15px;cursor:pointer;' src='https://svgshare.com/i/st8.svg' width='25px' >
    </a>";
      }
    }
    echo "<a href='" . base_url() . "produk/detail/$row[produk_seo]'>
                                  <img class='$blur imgProduk' src='" . base_url() . "asset/foto_produk/$foto_produk' style='object-fit:cover;border-radius:6px;'>
                                  <p class='produkTitle'>$row[nama_produk]</p>
                                  $wishlist
                                  $status";
    if ($row['diskon'] == '0') {
      echo "<span class='hargaProduk'>Rp " . rupiah($row['harga_reseller']) . "</span><br>";
    } else {
      echo "<span class='hargaProduk'>Rp " . rupiah($row['harga_reseller'] - $row['diskon']) . "</span>
                                         <span style='color:#8a8a8a;'><del>" . rupiah($row['harga_reseller']) . "</del></span><br>";
    }

    if ($querySaleJumlah['sales'] == '') {
      echo "<b>Terjual 0</b><br>
            </a><br>
          </center>
      </div>";
    } else {
      echo "<b>Terjual $querySaleJumlah[sales]</b><br>
            </a><br>
          </center>
      </div>";
    }
    $no++;
  } else {
    $querySaleJumlah = $this->db->query("SELECT SUM(a.jumlah) as sales FROM `rb_penjualan_detail` a where a.id_produk=$row[id_produk]")->row_array();
    echo "<div class='produk'><center>";
    if ($stok == '0') {
      $blur = 'blur';
      $status = '<div class="stok">SOLD OUT</div>';
      $wishlist = "";
    } else {
      $blur = 'normal';
      $status = '';
      $wishlist = "<a href='" . base_url() . "auth/login'><img style='position:absolute;top:15px;right:15px;cursor:pointer;' src='https://svgshare.com/i/st8.svg' width='25px' ></a>";
    }
    echo "<a href='" . base_url() . "produk/detail/$row[produk_seo]'>
                                  <img class='$blur imgProduk' src='" . base_url() . "asset/foto_produk/$foto_produk' style='object-fit:cover;border-radius:6px;'>
                                  <p class='produkTitle'>$row[nama_produk]</p>
                                  $wishlist
                                  $status";
    if ($row['diskon'] == '0') {
      echo "<span class='hargaProduk'>Rp " . rupiah($row['harga_reseller']) . "</span><br>";
    } else {
      echo "<span class='hargaProduk'>Rp " . rupiah($row['harga_reseller'] - $row['diskon']) . "</span>
                                                                       <span style='color:#8a8a8a;'><del>" . rupiah($row['harga_reseller']) . "</del></span><br>";
    }

    if ($querySaleJumlah['sales'] == '') {
      echo "<b>Terjual 0</b><br>
            </a><br>
          </center>
      </div>";
    } else {
      echo "<b>Terjual $querySaleJumlah[sales]</b><br>
            </a><br>
          </center>
      </div>";
    }
    $no++;
  }
}
echo "</div>";

echo "<div style='clear:both'></div>";
echo $this->pagination->create_links(); ?>

<?php
if ($this->uri->segment(1) == '' or $this->uri->segment(1) == 'main') {
  ?>
  <div class="testimonials-clean">
    <div class="">
      <div class="intro">
        <span class="titleProduct" style="margin-bottom:8px;display:block;">Testimonials </span>
        <p class="text-center">Our customers love us! Read what they have to say below. Aliquam sed justo ligula.
          Vestibulum nibh erat, pellentesque ut laoreet vitae.</p>
      </div>
      <div class="row people">
        <div class="col-md-6 col-lg-4 item">
          <div class="box">
            <p class="description">"Mukena 'Corak' sangat nyaman dipakai saat saya beribadah di masjid. Bahan yang
              digunakan sangat lembut dan tidak panas, serta motifnya yang cantik membuat saya semakin semangat untuk
              beribadah. Saya sangat merekomendasikan produk ini kepada teman-teman muslimah. Terima kasih Mukena
              'Corak'!"</p>
          </div>
          <div class="author"><img style="border-radius:1000px;"
              src="https://i.pinimg.com/564x/86/a6/cc/86a6cc779b8798c9195f332f65ac2a69.jpg">
            <h5 class="name">Nurul Hidayah</h5>
            <p class="title">Ibu Rumah Tangga</p>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 item">
          <div class="box">
            <p class="description">"Dress 'Amanda' sangat cocok untuk dipakai dalam acara formal maupun informal.
              Desainnya yang elegan dan simpel membuat saya merasa percaya diri dan nyaman. Bahan yang digunakan pun
              sangat nyaman dan tidak membuat gerah. Saya sangat suka dengan produk ini dan akan membelinya lagi di lain
              waktu."</p>
          </div>
          <div class="author"><img style="border-radius:1000px;"
              src="https://i.pinimg.com/564x/ba/bb/99/babb99f0724ef363c1b14f4f3fb0bc0b.jpg">
            <h5 class="name">Yuniarti</h5>
            <p class="title">Mahasiswa</p>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 item">
          <div class="box">
            <p class="description">"Gamis 'Naura' sangat cocok dipakai saat acara keluarga maupun formal. Desainnya yang
              modern dan elegan membuat saya terlihat lebih anggun. Bahan yang digunakan pun sangat nyaman dan tidak mudah
              kusut. Saya sangat merekomendasikan produk ini kepada teman-teman muslimah yang ingin tampil elegan dan
              sopan dalam berbusana."</p>
          </div>
          <div class="author"><img style="border-radius:1000px;"
              src="https://i.pinimg.com/564x/55/de/23/55de23d964ba0baf877e4787b76bdcb5.jpg">
            <h5 class="name">Naura Fitri</h5>
            <p class="title">Pengusaha</p>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php } ?>