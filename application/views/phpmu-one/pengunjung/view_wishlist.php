<p class='titleProductWishlist'> Wishlist</p>
<hr>
<?php
if ($record->num_rows() == '0') {
  echo "<center style='padding:15%'><i class='text-danger'>Maaf, Produk Wishlist anda saat ini masih kosong,...</i><br>
            <a class='btn btn-warning btn-sm' href='" . base_url() . "produk'>Klik Disini Untuk menambahkan Wishlist Mu!</a></center>";
} else {
  $no = 1;
  echo "<div class='produkAll' style='margin-bottom:5rem;'>";
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
  }
  echo "</div>";

  echo "<div style='clear:both'></div>";
} ?>