<?php
$j = $this->model_app->jual_umum($row['id_produk'])->row_array();
$b = $this->model_app->beli_umum($row['id_produk'])->row_array();
$stok = $b['beli'] - $j['jual'];
echo "
<div class='card-wrapper' style='margin-top: 2rem;margin-bottom:10rem;'>
  <div class='card'>
    <!-- card left -->
    <div class='product-imgs'>
      <div class='img-display'>
        <div class='img-showcase'>
          <img class='imgDetail imgFirst'
            src='" . base_url() . "asset/foto_produk/$row[gambar]'
            alt='shoe image'>
          <img class='imgDetail imgFirst'
            src='" . base_url() . "asset/foto_produk/$row[gambar_2]'
            alt='shoe image'>
          <img class='imgDetail imgFirst'
            src='" . base_url() . "asset/foto_produk/$row[gambar_3]'
            alt='shoe image'>
          ";
if ($row['gambar_4']) {
  echo "<img class='imgDetail imgFirst'
    src='" . base_url() . "asset/foto_produk/$row[gambar_4]'
    alt='shoe image'>
  ";
}
if ($row['gambar_5']) {
  echo "<img class='imgDetail imgFirst'
    src='" . base_url() . "asset/foto_produk/$row[gambar_5]'
    alt='shoe image'>
  ";
}
if ($row['gambar_6']) {
  echo "<img class='imgDetail imgFirst'
    src='" . base_url() . "asset/foto_produk/$row[gambar_6]'
    alt='shoe image'>
  ";
}
if ($row['gambar_7']) {
  echo "<img class='imgDetail imgFirst'
    src='" . base_url() . "asset/foto_produk/$row[gambar_7]'
    alt='shoe image'>
  ";
}
if ($row['gambar_8']) {
  echo "<img class='imgDetail imgFirst'
    src='" . base_url() . "asset/foto_produk/$row[gambar_8]'
    alt='shoe image'>
  ";
}
if ($row['gambar_9']) {
  echo "<img class='imgDetail imgFirst'
    src='" . base_url() . "asset/foto_produk/$row[gambar_9]'
    alt='shoe image'>
  ";
}
if ($row['gambar_10']) {
  echo "<img class='imgDetail imgFirst'
    src='" . base_url() . "asset/foto_produk/$row[gambar_10]'
    alt='shoe image'>
  ";
}
echo "
        </div>
      </div>
      <div class='img-select'>
        <div class='img-item'>
          <a href='#' data-id='1'>
            <img class='imgDetail imgChild' 
              src='" . base_url() . "asset/foto_produk/$row[gambar]'
              alt='shoe image'>
          </a>
        </div>
        <div class='img-item'>
          <a href='#' data-id='2'>
            <img class='imgDetail imgChild' 
              src='" . base_url() . "asset/foto_produk/$row[gambar_2]'
              alt='shoe image'>
          </a>
        </div>
        <div class='img-item'>
          <a href='#' data-id='3'>
            <img class='imgDetail imgChild' 
              src='" . base_url() . "asset/foto_produk/$row[gambar_3]'
              alt='shoe image'>
          </a>
        </div>";
// style='height:70px; width:70px; object-fit:cover;'
if ($row['gambar_4']) {
  echo
    "<div class='img-item'>
      <a href='#' data-id='4'>
        <img class='imgDetail imgChild' 
          src='" . base_url() . "asset/foto_produk/$row[gambar_4]'
          alt='shoe image'>
      </a>
</div>";
}
if ($row['gambar_5']) {
  echo
    "<div class='img-item'>
      <a href='#' data-id='5'>
        <img class='imgDetail imgChild' 
          src='" . base_url() . "asset/foto_produk/$row[gambar_5]'
          alt='shoe image'>
      </a>
</div>";
}
if ($row['gambar_6']) {
  echo
    "<div class='img-item'>
      <a href='#' data-id='6'>
        <img class='imgDetail imgChild' 
          src='" . base_url() . "asset/foto_produk/$row[gambar_6]'
          alt='shoe image'>
      </a>
</div>";
}
if ($row['gambar_7']) {
  echo
    "<div class='img-item'>
      <a href='#' data-id='7'>
        <img class='imgDetail imgChild' 
          src='" . base_url() . "asset/foto_produk/$row[gambar_7]'
          alt='shoe image'>
      </a>
</div>";
}
if ($row['gambar_8']) {
  echo
    "<div class='img-item'>
      <a href='#' data-id='8'>
        <img class='imgDetail imgChild' 
          src='" . base_url() . "asset/foto_produk/$row[gambar_8]'
          alt='shoe image'>
      </a>
</div>";
}
if ($row['gambar_9']) {
  echo
    "<div class='img-item'>
      <a href='#' data-id='9'>
        <img class='imgDetail imgChild' 
          src='" . base_url() . "asset/foto_produk/$row[gambar_9]'
          alt='shoe image'>
      </a>
</div>";
}
if ($row['gambar_10']) {
  echo
    "<div class='img-item'>
      <a href='#' data-id='10'>
        <img class='imgDetail imgChild' 
          src='" . base_url() . "asset/foto_produk/$row[gambar_10]'
          alt='shoe image'>
      </a>
</div>";
}
echo "
      </div>
    </div>
    <!-- card right -->
    <div class='product-content'>
      <form action='" . base_url() . "produk/keranjang' method='POST'>
      <input type='hidden' name='id_produk' value='$row[id_produk]'>
      <h2 class='product-title'>$row[nama_produk]</h2>";
if ($row['diskon'] == '0') {
  echo "<span style='color:red; font-size:25px'>Rp " . rupiah($row['harga_reseller']) . "</span><br>";
} else {
  echo "<span style='color:red; font-size:25px'>Rp " . rupiah($row['harga_reseller'] - $row['diskon']) . "</span> &nbsp; 
                                        <span style='color:#8a8a8a; font-size:20px'><del>" . rupiah($row['harga_reseller']) . "</del></span><br>";
}
$this->load->database();
$user_id = $this->session->id_konsumen;
if ($user_id) {
  $queryWishlist = $this->db->query("SELECT * FROM `rb_wishlist` a where a.id_produk=$row[id_produk] AND a.id_konsumen=$user_id");
  $wishlistLike = $queryWishlist->num_rows();
  $wishlistData = $queryWishlist->row_array();
  if ($wishlistLike == 1) {
    $wishlist = "<a class='btn' style='background-color:red !important;' href='" . base_url() . "produk/wishlist_delete/$wishlistData[id_wishlist]'>Delete wishlist</a>";
  } else {
    $wishlist = "<a class='btn' style='background-color:purple !important;' href='" . base_url() . "produk/wishlist_add/$row[id_produk]/$user_id'>Add to wishlist</a>";
  }
} else {
  $wishlist = "";
}
echo
  "
      <div class='purchase-desc'>
        <input type='textarea' name='keterangan' placeholder='Tambahkan Catatan'>
      </div>
      <div class='purchase-info'>
        <input type='number' min='1' value='1' name='jumlah'>
        <button type='submit' class='btn'>
          Add to Cart <i class='fas fa-shopping-cart'></i>
        </button>
        $wishlist  
      </div>

      <div class='product-detail'>
        <h2>about this item: </h2>
        <p>$row[keterangan]</p>
      </div>
      </form>
    </div>
  </div>
</div>";
?>

<script>
  const imgs = document.querySelectorAll('.img-select a');
  const imgBtns = [...imgs];
  let imgId = 1;

  imgBtns.forEach((imgItem) => {
    imgItem.addEventListener('click', (event) => {
      event.preventDefault();
      imgId = imgItem.dataset.id;
      slideImage();
    });
  });

  function slideImage() {
    const displayWidth = document.querySelector('.img-showcase img:first-child').clientWidth;

    document.querySelector('.img-showcase').style.transform = `translateX(${- (imgId - 1) * displayWidth}px)`;
  }

  window.addEventListener('resize', slideImage);
</script>