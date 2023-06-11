<div class="container container-fluid" style="padding-top: 1rem;padding-bottom:1rem;">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
      data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <?php
    $logo = $this->model_app->view_ordering_limit('identitas', 'id_identitas', 'DESC', 0, 1);
    foreach ($logo->result_array() as $row) {
      echo "<a href='" . base_url() . "' style='margin-right:3rem; margin-left:1rem;'><img width='50px' style='border-radius:300px;' src='" . base_url() . "asset/images/$row[favicon]'/></a>";
    }
    ?>
    <!-- <a class="navbar-brand" href="#">Brand</a> -->
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <?php
    echo "
    <ul class='nav navbar-nav' style='font-size:16px;'>
      <li><a href='" . base_url() . "produk'>Catalog</a></li>
      <li><a href='" . base_url() . "reseller/carajoin'>Join Reseller</a></li>
      <li><a href='" . base_url() . "aboutus/index'>About us</a></li>
      <li class='dropdown'>
        <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true'
          aria-expanded='false'>Order <span class='caret'></span></a>
        <ul class='dropdown-menu'>
          <li><a href='" . base_url() . "konfirmasi/tracking'>Tracking Order</a></li>
          <li><a href='" . base_url() . "konfirmasi'>Konfirmasi Pesanan</a></li>
        </ul>
      </li>
      <li><a href='" . base_url() . "contact'>Contact</a></li>
      <li><a href='" . base_url() . "produk/wishlist'>Wishlist</a></li>
    </ul>
    <form action='" . base_url() . "produk' method='POST' class='navbar-form navbar-right'>
      <div class='form-group'>
        <input type='text' name='cari' class='form-control' placeholder='Cari Produk'>
        <input type='submit' name='submit' class='hidden'>
      </div>
    </form>";
      ?>
    <ul class="nav navbar-nav navbar-right">
      <?php
      $isi_keranjang = $this->db->query("SELECT sum(jumlah) as jumlah FROM rb_penjualan_temp where session='" . $this->session->idp . "'")->row_array();
      echo "<li><a style='display:flex;' href='" . base_url() . "produk/keranjang'><img width='20px' src='https://svgshare.com/i/svY.svg' ><span>(" . rupiah($isi_keranjang['jumlah']) . ")</span></a></li>";
      if ($this->session->id_konsumen) {
        echo "<li class='dropdown'>
                        <a href='#' class='dropdown-toggle' style='display:flex;align-items-center; padding-top:16px;' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'><img width='20px' src='https://svgshare.com/i/suV.svg' > <span class='caret'></span></a>
                        <ul class='dropdown-menu'>
                            <li><a href='" . base_url() . "members/profile'>Profile</a></li>
                            <li><a href='" . base_url() . "members/history'>Histori Belanja</a></li>
                            <li><a href='" . base_url() . "members/logout'>Logout</a></li>
                        </ul>
                    </li>";
      } else {
        echo "<a style='display:flex;align-items-center; margin-top:8px; border: 2px solid #0275d8; padding: 5px 15px; border-radius:200px;' href='auth/login'>Login</a>";
      }
      ?>
    </ul>
  </div><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->