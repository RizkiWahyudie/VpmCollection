<?php
$iden = $this->db->query("SELECT * FROM identitas where id_identitas='1'")->row_array();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>
    VPM Collection
  </title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="phpmu.com">
  <meta name="description" content="<?php echo $iden['meta_deskripsi']; ?>">
  <meta name="keywords" content="<?php echo $iden['meta_keyword']; ?>">
  <meta name="robots" content="all,index,follow">
  <meta http-equiv="Content-Language" content="id-ID">
  <meta NAME="Distribution" CONTENT="Global">
  <meta NAME="Rating" CONTENT="General">
  <link rel="canonical" href="<?php echo "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>" />
  <meta property="og:locale" content="id_ID" />
  <meta property="og:title" content="VPM Collection" />
  <meta property="og:description" content="<?php echo $iden['meta_deskripsi']; ?>" />
  <meta property="og:url" content="<?php echo "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>" />
  <meta property="og:site_name" content="VPM Collection" />

  <?php
  $logo = $this->model_app->view_ordering_limit('identitas', 'id_identitas', 'DESC', 0, 1);
  foreach ($logo->result_array() as $row) {
    echo "<link rel='icon' type='image/x-icon' href='" . base_url() . "asset/images/$row[favicon]' />";
  }
  ?>
  <link href="<?php echo base_url(); ?>asset/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>asset/css/style.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>asset/css/default.css" rel="stylesheet" media="screen" />
  <link href="<?php echo base_url(); ?>asset/css/nivo-slider.css" rel="stylesheet" media="screen" />
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/admin/plugins/datatables/dataTables.bootstrap.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/admin/plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>asset/admin/plugins/timepicker/bootstrap-timepicker.css">
  <script type="text/javascript"
    src="<?php echo base_url(); ?>asset/admin/plugins/jQuery/jquery-1.12.3.min.js"></script>
  <script type="text/javascript">
    function nospaces(t) {
      if (t.value.match(/\s/g)) {
        alert('Maaf, Username Tidak Boleh Menggunakan Spasi,..');
        t.value = t.value.replace(/\s/g, '');
      }
    }
    function toDuit(number) {
      var number = number.toString(),
        duit = number.split('.')[0],
        duit = duit.split('').reverse().join('')
          .replace(/(\d{3}(?!$))/g, '$1,')
          .split('').reverse().join('');
      return 'Rp ' + duit;
    }
  </script>
  <style>
    body {
      overflow-x: hidden !important;
    }

    .category {
      display: grid;
      grid-template-columns: repeat(5,
          1fr);
      /* set 4 kolom dengan lebar yang sama */
      grid-gap: 10px;
      /* jarak antar item */
    }

    .categoryBtn {
      text-align: center;
      border: 2px solid #0275d8;
      border-radius: 55px;
      padding: 15px 0;
      font-weight: 600;
      font-size: 16px;
    }

    .joinReseller {
      width: 100%;
      height: 300px;
      background-color: #0275d8;
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
      border-radius: 24px;
      color: white;
    }

    .joinReseller a {
      margin: 1rem;
    }

    .joinSecond2 a {
      color: white;
      border: 1px solid white;
      padding: 1rem;
      border-radius: 2rem;
      margin: 1rem;
    }

    .tittleReseller {
      font-size: 35px;
      font-weight: 600;
      margin: 0 4rem 0 1rem;
    }

    .descReseller {
      font-size: 15px;
      margin: 0 4rem 2rem 1rem;
    }

    .joinFirst {
      flex: 45%;
    }

    .joinSecond {
      flex: 55%;
    }

    .joinReseller2 {
      width: 100%;
      height: 300px;
      background-color: #0275d8;
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
      border-radius: 24px;
      color: white;
    }

    .tittleReseller2 {
      font-size: 35px;
      font-weight: 600;
      margin: 0 4rem 0 1rem;
    }

    .descReseller2 {
      font-size: 15px;
      margin: 0 4rem 2rem 1rem;
    }

    .joinFirst2 {
      flex: 45%;
    }

    .joinSecond2 {
      flex: 55%;
    }

    .imageJoin {
      width: 450px;
    }

    .imageJoin2 {
      width: 450px;
    }

    .contactPerson {
      width: 100%;
      background-color: #0275d8;
      color: white;
    }

    .contactItem {
      color: white;
      margin-right: 2rem;
    }

    .contactItem:hover {
      color: white;
    }

    .contactItem2 {
      color: black;
      display: block;
      margin-bottom: 1rem;
    }

    .contactItem2:hover {
      color: black;
    }

    .contactSubItem2 {
      font-size: 17px;
    }

    .aboutusHero {
      display: flex;
      min-height: 70vh;
      align-items: center;
      flex-wrap: wrap;
    }

    .aboutuskeunggulan {
      display: flex;
      align-items: center;
      flex-wrap: wrap;
    }

    .heroItem img {
      width: 100%;
    }

    .heroItem span {
      font-size: 40px;
      font-weight: 600;
    }

    .heroItem p {
      color: #8a8a8a;
    }

    .heroItem2 img {
      width: 80%;
      border-radius: 35px;
    }

    .heroItem2 span {
      font-size: 24px;
      font-weight: 600;
    }

    .heroItem2 p {
      color: #8a8a8a;
    }

    .benefit {
      display: flex;
      justify-content: space-evenly;
    }

    .heroItem {
      flex: 50%;
    }

    .heroItem2 {
      flex: 50%;
    }

    .benefitItem {
      margin: 1rem;
    }

    .benefitItem p {
      font-size: 22px;
      font-weight: 600;
    }

    .benefitItem span {
      color: gray;
    }

    .benefitItem img {
      width: 70px;
    }

    .benefitItem2 {
      margin: 1rem;
    }

    .benefitItem2 p {
      font-size: 22px;
      font-weight: 600;
    }

    .benefitItem2 span {
      color: gray;
    }

    .benefitItem2 img {
      width: 200px;
      margin-bottom: 1rem;
    }

    .heroItem21 {
      text-align: right;
    }

    .imgDetail {
      width: 100%;
      display: block;
    }

    .img-display {
      overflow: hidden;
    }

    .img-showcase {
      display: flex;
      width: 100%;
      height: 500px;
      object-fit: cover;
      transition: all 0.5s ease;
    }

    .img-showcase img {
      min-width: 100%;
      height: 500px;
      object-fit: cover;
    }

    .img-select {
      display: flex;
    }

    .img-item {
      margin: 0.3rem;
    }

    .img-item {
      margin-right: 0;
    }

    .img-item:hover {
      opacity: 0.8;
    }

    @media (max-width: 760px) {
      .benefit {
        display: flex;
        flex-direction: column;
      }

      .aboutusHero .aboutuskeunggulan {
        display: flex;
        flex-direction: column;
      }

      .heroItem2 img {
        width: 100%;
        border-radius: 24px;
      }

      .heroItem2,
      .heroItem {
        flex: 100%;
      }

      .heroItem span {
        font-size: 30px;
        font-weight: 600;
      }

      .heroItem p {
        text-align: justify;
        margin-bottom: 2rem;
      }

      .heroItem2 span {
        margin-top: 1rem;
        font-size: 24px;
        font-weight: 600;
        display: block;
      }

      .heroItem21 {
        order: 2;
        text-align: left;
      }

      .heroItem22 {
        order: 1;
      }

      .heroItem2 p {
        text-align: justify;
      }

      .benefitItem {
        margin: 1rem 0;
      }

      .benefitItem2 {
        margin: 1rem 0;
      }

      .allSection {
        margin: 1rem;
      }

      .contactSubItem {
        display: none;
      }

      .contactItem {
        margin-right: 1rem;
      }

      .category {
        grid-template-columns: repeat(2,
            1fr);
        /* set 4 kolom dengan lebar yang sama */
        grid-gap: 5px;
        /* jarak antar item */
      }

      .categoryBtn:last-child {
        grid-column: 1 / 3;
      }

      .tittleReseller {
        font-size: 30px;
        font-weight: 600;
        margin: 0 2rem 0 2rem;
      }

      .descReseller {
        font-size: 14px;
        margin: 0 2rem 2rem 2rem;
      }

      .tittleReseller2 {
        font-size: 25px;
        font-weight: 600;
        margin: 1.5rem 1rem 0.5rem 1rem;
      }

      .descReseller2 {
        font-size: 13px;
        text-align: justify;
        margin: 0 1rem 2rem 1rem;
      }

      .imageJoin {
        width: 100%;
        padding: 3rem 1rem 1rem 1rem;
      }

      .imageJoin2 {
        width: 100%;
        padding: 0;
      }

      .categoryBtn {
        text-align: center;
        border: 2px solid #0275d8;
        border-radius: 55px;
        padding: 12px 0;
        font-weight: 600;
        font-size: 13px;
      }

      .joinReseller {
        width: 100%;
        height: 100%;
        padding-bottom: 5rem;
        background-color: #0275d8;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        border-radius: 24px;
        color: white;
      }

      .joinReseller a {
        margin: 2rem;
      }

      .joinSecond2 a {
        color: black;
        border: 1px solid black;
        padding: 1rem;
        border-radius: 2rem;
        margin: 1rem;
      }

      .joinFirst {
        flex: 100%;
      }

      .joinSecond {
        flex: 100%;
      }

      .joinReseller2 {
        width: 100%;
        height: 100%;
        background-color: transparent;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        border-radius: 24px;
        color: black;
      }

      .joinFirst2 {
        flex: 100%;
      }

      .joinSecond2 {
        flex: 100%;
      }

      .img-showcase img {
        min-width: 100%;
        height: 350px;
        object-fit: cover;
      }

      .imgFirst {
        width: 100%;
        height: 250px;
      }

      .img-showcase {
        display: flex;
        width: 100%;
        height: 350px;
        object-fit: cover;
        transition: all 0.5s ease;
      }
    }

    .card-wrapper {
      max-width: 1100px;
      margin: 0 auto;
    }

    .product-content {
      padding: 2rem 1rem;
    }

    .product-title {
      font-size: 3rem;
      text-transform: capitalize;
      font-weight: 700;
      position: relative;
      color: #12263a;
      margin: 1rem 0;
    }

    .product-title::after {
      content: "";
      position: absolute;
      left: 0;
      bottom: 0;
      height: 4px;
      width: 80px;
      background: #12263a;
    }

    .product-link {
      text-decoration: none;
      text-transform: uppercase;
      font-weight: 400;
      font-size: 0.9rem;
      display: inline-block;
      margin-bottom: 0.5rem;
      background: #256eff;
      color: #fff;
      padding: 0 0.3rem;
      transition: all 0.5s ease;
    }

    .product-link:hover {
      opacity: 0.9;
    }

    .product-rating {
      color: #ffc107;
    }

    .product-rating span {
      font-weight: 600;
      color: #252525;
    }

    .product-price {
      margin: 1rem 0;
      font-size: 1rem;
      font-weight: 700;
    }

    .product-price span {
      font-weight: 400;
    }

    .last-price span {
      color: #f64749;
      text-decoration: line-through;
    }

    .new-price span {
      color: #256eff;
    }

    .product-detail h2 {
      text-transform: capitalize;
      color: #12263a;
      padding-bottom: 0.6rem;
    }

    .product-detail p {
      opacity: 0.8;
    }

    .product-detail ul {
      margin: 1rem 0;
      font-size: 0.9rem;
    }

    .product-detail ul li {
      margin: 0;
      list-style: none;
      background: url(shoes_images/checked.png) left center no-repeat;
      background-size: 18px;
      padding-left: 1.7rem;
      margin: 0.4rem 0;
      font-weight: 600;
      opacity: 0.9;
    }

    .product-detail ul li span {
      font-weight: 400;
    }

    .purchase-desc {
      margin: 1.5rem 0 0 0;
    }

    .purchase-desc input {
      border: 1.5px solid #ddd;
      border-radius: 25px;
      padding: 0.45rem 1.5rem;
      outline: 0;
    }

    .purchase-desc input {
      width: 100%;
    }

    .contactForm {
      margin-bottom: 1rem;
    }

    .contactForm input {
      border: 1.5px solid #ddd;
      border-radius: 25px;
      padding: 0.45rem 1.5rem;
      outline: 0;
    }

    .contactForm input {
      width: 100%;
    }

    .purchase-info {
      margin: 1.5rem 0;
    }

    .purchase-info input,
    .purchase-info select,
    .purchase-info .btn {
      border: 1.5px solid #ddd;
      border-radius: 25px;
      text-align: center;
      padding: 0.45rem 0.8rem;
      outline: 0;
      margin-right: 0.2rem;
      /* margin-bottom: 1rem; */
    }

    .purchase-info input {
      width: 60px;
    }

    .purchase-info .btn {
      cursor: pointer;
      color: #fff;
    }

    .purchase-info .btn:first-of-type {
      background: #256eff;
    }

    .purchase-info .btn:hover {
      opacity: 0.9;
    }

    .social-links {
      display: flex;
      align-items: center;
    }

    .social-links a {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 32px;
      height: 32px;
      color: #000;
      border: 1px solid #000;
      margin: 0 0.2rem;
      border-radius: 50%;
      text-decoration: none;
      font-size: 0.8rem;
      transition: all 0.5s ease;
    }

    .social-links a:hover {
      background: #000;
      border-color: transparent;
      color: #fff;
    }

    @media screen and (min-width: 992px) {
      .card {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-gap: 1.5rem;
      }

      .card-wrapper {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .product-imgs {
        display: flex;
        flex-direction: column;
        justify-content: center;
      }

      .product-content {
        padding-top: 0;
      }
    }
  </style>
</head>

<body>
  <div class="contactPerson">
    <div class="container">
      <div style="padding: 0.5rem 0 0.5rem 0; display:flex; justify-content: space-between;">
        <div>
          <a href="https://www.facebook.com/yulisesvitha?mibextid=LQQJ4d" class="contactItem">
            <img class="contactImg" width="20px" src="https://svgshare.com/i/svZ.svg">
            <span class="contactSubItem">vpm_collection</span>
          </a>
          <a href="https://instagram.com/thamrin_city_collection__?igshid=MzRlODBiNWFlZA==" class="contactItem">
            <img class="contactImg" width="20px" src="https://svgshare.com/i/su9.svg">
            <span class="contactSubItem">vpm_collection</span>
          </a>
        </div>
        <div>
          <a href="" class="contactItem">
            <img class="contactImg" width="20px" src="https://svgshare.com/i/sto.svg">
            <span class="contactSubItem">0813 - 1135 - 3181</span>
          </a>
          <a href="https://wa.me/+6281311353181" class="contactItem">
            <img class="contactImg" width="20px" src="https://svgshare.com/i/sug.svg">
            <span class="contactSubItem">0813 - 1135 - 3181</span>
          </a>
        </div>
      </div>
    </div>
  </div>
  <nav class="navbar navbar-default" style='border-radius:0px;'>
    <?php include "main-menu.php"; ?>
  </nav>

  <div class="container allSection">
    <div class='row'>
      <?php
      if ($this->uri->segment(1) == '' or $this->uri->segment(1) == 'main') {
        include "slide.php";
        echo "<p class='titleProduct'>Category</p>
        <hr><div class='category'>";
        $kategori = $this->model_app->view('rb_kategori_produk');
        foreach ($kategori->result_array() as $row) {
          echo "<a style='text-decoration:none' class='xs-hidden categoryBtn' href='" . base_url() . "produk/kategori/$row[kategori_seo]'>$row[nama_kategori]</a>";
        }
        echo "</div>";
        $this->load->database();
        $user_id = $this->session->id_konsumen;
        if ($user_id) {
          $resellerLogin = "<a style='text-decoration:none;color:white;border:1px solid white;padding:1rem;border-radius:2rem;' href='" . base_url() . "reseller'>Join Reseller</a>";
        } else {
          $resellerLogin = "<a style='text-decoration:none;color:white;border:1px solid white;padding:1rem;border-radius:2rem;' href='" . base_url() . "reseller' onclick=\"return confirm('Belum login, harap login untuk daftar reseller')\">Join Reseller</a>";
        }
        echo "<div class='joinReseller' style='margin-top: 5rem;'>
        <div class='joinFirst' style='display:flex;justify-content:center;'><img src='asset/images/joinuss.png' class='imageJoin' /></div>
          <div class='joinSecond'><p class='tittleReseller'>Let's join us</p>
            <p class='descReseller'>Yuk bergabung dengan kami sebagai reseller dan jadilah bagian dari tim yang sukses bersama-sama! Dengan bergabung sebagai reseller, kamu bisa menghasilkan penghasilan tambahan sambil memperluas jaringan bisnis. Tunggu apa lagi? Ayo bergabung sekarang dan raih kesuksesan bersama kami!</p>
            $resellerLogin
          </div>
        </div>";
      }
      echo $contents;
      ?>
    </div>
  </div>
  <div style="clear:both"></div>
  <footer class="new_footer_area bg_color">
    <div class="new_footer_top">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="f_widget company_widget wow fadeInLeft" data-wow-delay="0.2s"
              style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInLeft;">
              <h3 class="f-title f_600 t_color f_size_18">VPM Collection</h3>
              <div class="f_social_icon">
                <a href="https://www.facebook.com/yulisesvitha?mibextid=LQQJ4d" class="fab fa-facebook"><svg
                    xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 0 24 24" id="facebook">
                    <path
                      d="M15.12,5.32H17V2.14A26.11,26.11,0,0,0,14.26,2C11.54,2,9.68,3.66,9.68,6.7V9.32H6.61v3.56H9.68V22h3.68V12.88h3.06l.46-3.56H13.36V7.05C13.36,6,13.64,5.32,15.12,5.32Z">
                    </path>
                  </svg></a>
                <a href="https://www.tiktok.com/@vanesspm_?_t=8cKKo4m6qI6&_r=1" class="fab fa-tiktok"><svg
                    fill="#000000" viewBox="0 0 512 512" id="icons" xmlns="http://www.w3.org/2000/svg">
                    <path
                      d="M412.19,118.66a109.27,109.27,0,0,1-9.45-5.5,132.87,132.87,0,0,1-24.27-20.62c-18.1-20.71-24.86-41.72-27.35-56.43h.1C349.14,23.9,350,16,350.13,16H267.69V334.78c0,4.28,0,8.51-.18,12.69,0,.52-.05,1-.08,1.56,0,.23,0,.47-.05.71,0,.06,0,.12,0,.18a70,70,0,0,1-35.22,55.56,68.8,68.8,0,0,1-34.11,9c-38.41,0-69.54-31.32-69.54-70s31.13-70,69.54-70a68.9,68.9,0,0,1,21.41,3.39l.1-83.94a153.14,153.14,0,0,0-118,34.52,161.79,161.79,0,0,0-35.3,43.53c-3.48,6-16.61,30.11-18.2,69.24-1,22.21,5.67,45.22,8.85,54.73v.2c2,5.6,9.75,24.71,22.38,40.82A167.53,167.53,0,0,0,115,470.66v-.2l.2.2C155.11,497.78,199.36,496,199.36,496c7.66-.31,33.32,0,62.46-13.81,32.32-15.31,50.72-38.12,50.72-38.12a158.46,158.46,0,0,0,27.64-45.93c7.46-19.61,9.95-43.13,9.95-52.53V176.49c1,.6,14.32,9.41,14.32,9.41s19.19,12.3,49.13,20.31c21.48,5.7,50.42,6.9,50.42,6.9V131.27C453.86,132.37,433.27,129.17,412.19,118.66Z" />
                  </svg></a>
                <a href="https://instagram.com/thamrin_city_collection__?igshid=MzRlODBiNWFlZA==" class="fab fa-ig"><svg
                    xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 0 24 24" id="instagram">
                    <path
                      d="M12,9.52A2.48,2.48,0,1,0,14.48,12,2.48,2.48,0,0,0,12,9.52Zm9.93-2.45a6.53,6.53,0,0,0-.42-2.26,4,4,0,0,0-2.32-2.32,6.53,6.53,0,0,0-2.26-.42C15.64,2,15.26,2,12,2s-3.64,0-4.93.07a6.53,6.53,0,0,0-2.26.42A4,4,0,0,0,2.49,4.81a6.53,6.53,0,0,0-.42,2.26C2,8.36,2,8.74,2,12s0,3.64.07,4.93a6.86,6.86,0,0,0,.42,2.27,3.94,3.94,0,0,0,.91,1.4,3.89,3.89,0,0,0,1.41.91,6.53,6.53,0,0,0,2.26.42C8.36,22,8.74,22,12,22s3.64,0,4.93-.07a6.53,6.53,0,0,0,2.26-.42,3.89,3.89,0,0,0,1.41-.91,3.94,3.94,0,0,0,.91-1.4,6.6,6.6,0,0,0,.42-2.27C22,15.64,22,15.26,22,12S22,8.36,21.93,7.07Zm-2.54,8A5.73,5.73,0,0,1,19,16.87,3.86,3.86,0,0,1,16.87,19a5.73,5.73,0,0,1-1.81.35c-.79,0-1,0-3.06,0s-2.27,0-3.06,0A5.73,5.73,0,0,1,7.13,19a3.51,3.51,0,0,1-1.31-.86A3.51,3.51,0,0,1,5,16.87a5.49,5.49,0,0,1-.34-1.81c0-.79,0-1,0-3.06s0-2.27,0-3.06A5.49,5.49,0,0,1,5,7.13a3.51,3.51,0,0,1,.86-1.31A3.59,3.59,0,0,1,7.13,5a5.73,5.73,0,0,1,1.81-.35h0c.79,0,1,0,3.06,0s2.27,0,3.06,0A5.73,5.73,0,0,1,16.87,5a3.51,3.51,0,0,1,1.31.86A3.51,3.51,0,0,1,19,7.13a5.73,5.73,0,0,1,.35,1.81c0,.79,0,1,0,3.06S19.42,14.27,19.39,15.06Zm-1.6-7.44a2.38,2.38,0,0,0-1.41-1.41A4,4,0,0,0,15,6c-.78,0-1,0-3,0s-2.22,0-3,0a4,4,0,0,0-1.38.26A2.38,2.38,0,0,0,6.21,7.62,4.27,4.27,0,0,0,6,9c0,.78,0,1,0,3s0,2.22,0,3a4.27,4.27,0,0,0,.26,1.38,2.38,2.38,0,0,0,1.41,1.41A4.27,4.27,0,0,0,9,18.05H9c.78,0,1,0,3,0s2.22,0,3,0a4,4,0,0,0,1.38-.26,2.38,2.38,0,0,0,1.41-1.41A4,4,0,0,0,18.05,15c0-.78,0-1,0-3s0-2.22,0-3A3.78,3.78,0,0,0,17.79,7.62ZM12,15.82A3.81,3.81,0,0,1,8.19,12h0A3.82,3.82,0,1,1,12,15.82Zm4-6.89a.9.9,0,0,1,0-1.79h0a.9.9,0,0,1,0,1.79Z">
                    </path>
                  </svg></a>
                <a href="https://wa.me/+6281311353181" class="fab fa-wa"><svg xmlns="http://www.w3.org/2000/svg"
                    data-name="Layer 1" viewBox="0 0 24 24" id="whatsapp">
                    <path
                      d="M22,6.55a12.61,12.61,0,0,0-.1-1.29,4.29,4.29,0,0,0-.37-1.08,3.66,3.66,0,0,0-.71-1,3.91,3.91,0,0,0-1-.71,4.28,4.28,0,0,0-1.08-.36A10.21,10.21,0,0,0,17.46,2H6.55a12.61,12.61,0,0,0-1.29.1,4.29,4.29,0,0,0-1.08.37,3.66,3.66,0,0,0-1,.71,3.91,3.91,0,0,0-.71,1,4.28,4.28,0,0,0-.36,1.08A10.21,10.21,0,0,0,2,6.54C2,6.73,2,7,2,7.08v9.84c0,.11,0,.35,0,.53a12.61,12.61,0,0,0,.1,1.29,4.29,4.29,0,0,0,.37,1.08,3.66,3.66,0,0,0,.71,1,3.91,3.91,0,0,0,1,.71,4.28,4.28,0,0,0,1.08.36A10.21,10.21,0,0,0,6.54,22H17.45a12.61,12.61,0,0,0,1.29-.1,4.29,4.29,0,0,0,1.08-.37,3.66,3.66,0,0,0,1-.71,3.91,3.91,0,0,0,.71-1,4.28,4.28,0,0,0,.36-1.08A10.21,10.21,0,0,0,22,17.46c0-.19,0-.43,0-.54V7.08C22,7,22,6.73,22,6.55ZM12.23,19h0A7.12,7.12,0,0,1,8.8,18.1L5,19.1l1-3.72a7.11,7.11,0,0,1-1-3.58A7.18,7.18,0,1,1,12.23,19Zm0-13.13A6,6,0,0,0,7.18,15l.14.23-.6,2.19L9,16.8l.22.13a6,6,0,0,0,3,.83h0a6,6,0,0,0,6-6,6,6,0,0,0-6-6Zm3.5,8.52a1.82,1.82,0,0,1-1.21.85,2.33,2.33,0,0,1-1.12-.07,8.9,8.9,0,0,1-1-.38,8,8,0,0,1-3.06-2.7,3.48,3.48,0,0,1-.73-1.85,2,2,0,0,1,.63-1.5.65.65,0,0,1,.48-.22H10c.11,0,.26,0,.4.31s.51,1.24.56,1.33a.34.34,0,0,1,0,.31,1.14,1.14,0,0,1-.18.3c-.09.11-.19.24-.27.32s-.18.18-.08.36a5.56,5.56,0,0,0,1,1.24,5,5,0,0,0,1.44.89c.18.09.29.08.39,0s.45-.52.57-.7.24-.15.4-.09,1.05.49,1.23.58.29.13.34.21A1.56,1.56,0,0,1,15.73,14.36Z">
                    </path>
                  </svg></a>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="f_widget about-widget pl_70 wow fadeInLeft" data-wow-delay="0.4s"
              style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInLeft;">
              <h3 class="f-title f_600 t_color f_size_18">Fitur</h3>
              <ul class="list-unstyled f_list">
                <li><a href="<?php base_url() ?>'reseller/carajoin'">Cara Join Reseller</a></li>
                <li><a href="<?php base_url() ?>'reseller'">Daftar Reseller</a></li>
                <li><a href="<?php base_url() ?>'produk'">Produk</a></li>
                <li><a href="<?php base_url() ?>'members/profile'">Profile</a></li>
                <li><a href="<?php base_url() ?>'aboutus/index'">Tentang Kami</a></li>
                <li><a href="<?php base_url() ?>'produk/wishlist'">Wishlist</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="f_widget about-widget pl_70 wow fadeInLeft" data-wow-delay="0.6s"
              style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInLeft;">
              <h3 class="f-title f_600 t_color f_size_18">Store</h3>
              <ul class="list-unstyled f_list">
                <li><a href="https://shp.ee/rmsxnpr">Shopee</a></li>
                <li><a href="https://www.lazada.co.id/shop/vanes-pm/?path=index.htm">Lazada</a></li>
                <li><a href="mailto:yulianahermaningsih@gmail.com">E-mail</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="f_widget social-widget pl_70 wow fadeInLeft" data-wow-delay="0.8s"
              style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInLeft;">
              <h3 class="f-title f_600 t_color f_size_18">Alamat</h3>
              <p>Jl. Kebon Melati 1, Kb. Melati, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota
                Jakarta 10230, Lt 3 Blok E 26a no 09</p>
            </div>
          </div>
        </div>
      </div>
      <div class="footer_bg">
        <div class="footer_bg_one"></div>
        <div class="footer_bg_two"></div>
      </div>
    </div>
    <div class="footer_bottom">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-sm-7">
            <!-- <p class="mb-0 f_400">© cakecounter Inc.. 2019 All rights reserved.</p> -->
          </div>
          <div class="col-lg-6 col-sm-5 text-right">
            <!-- <p>Made with <i class="icon_heart"></i> in <a href="http://cakecounter.com" target="_blank">CakeCounter</a> -->
            </p>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <div class="modal fade" id="uploadfoto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h5 class="modal-title" id="myModalLabel">Ganti Foto Profile anda?</h5>
        </div>
        <center>
          <div class="modal-body">
            <?php
            $attributes = array('class' => 'form-horizontal', 'role' => 'form');
            echo form_open_multipart('members/foto', $attributes); ?>

            <div class="form-group">
              <center style='color:#8a8a8a'>Recomended (200 Kb atau 600 x 600) </center><br>
              <label for="inputEmail3" class="col-sm-3 control-label">Pilih Foto</label>
              <div style='background:#fff;' class="input-group col-sm-7">
                <span class="input-group-addon"><i class='fa fa-image fa-fw'></i></span>
                <input style='text-transform:lowercase;' type="file" class="form-control" name="userfile">
              </div>
            </div>

            <div class="form-group">
              <div class="col-sm-offset-1">
                <button type="submit" name='submit' class="btn btn-primary">Update Foto</button>
              </div>
            </div>

            </form>
            <div style='clear:both'></div>
          </div>
        </center>
      </div>
    </div>
  </div>

  <div class="modal fade" id="uploadfotoreseller" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h5 class="modal-title" id="myModalLabel">Ganti Foto Profile anda?</h5>
        </div>
        <center>
          <div class="modal-body">
            <?php
            $attributes = array('class' => 'form-horizontal', 'role' => 'form');
            echo form_open_multipart('reseller/foto', $attributes); ?>

            <div class="form-group">
              <center style='color:#8a8a8a'>Recomended (200 Kb atau 600 x 600) </center><br>
              <label for="inputEmail3" class="col-sm-3 control-label">Pilih Foto</label>
              <div style='background:#fff;' class="input-group col-sm-7">
                <span class="input-group-addon"><i class='fa fa-image fa-fw'></i></span>
                <input style='text-transform:lowercase;' type="file" class="form-control" name="userfile">
              </div>
            </div>

            <div class="form-group">
              <div class="col-sm-offset-1">
                <button type="submit" name='submit' class="btn btn-primary">Update Foto</button>
              </div>
            </div>

            </form>
            <div style='clear:both'></div>
          </div>
        </center>
      </div>
    </div>
  </div>

  <?php $this->model_main->kunjungan(); ?>

  <!-- Bootstrap core JavaScript
================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="<?php echo base_url(); ?>asset/js/jquery-1.12.3.min.js"></script>
  <script src="<?php echo base_url(); ?>asset/js/bootstrap.min.js"></script>
  <script src="<?php echo base_url(); ?>asset/js/jquery.nivo.slider.js"></script>
  <script src="<?php echo base_url(); ?>asset/admin/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url(); ?>asset/admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript"> $(window).load(function () { $('#slider').nivoSlider(); }); </script>
  <script src="<?php echo base_url() ?>asset/js/jquery.validate.js"></script>
  <script> $(document).ready(function () { $("#formku").validate(); }); </script>
  <script> $(document).ready(function () { $("#formkuu").validate(); }); </script>
  <script src="<?php echo base_url(); ?>asset/admin/plugins/datepicker/bootstrap-datepicker.js"></script>
  <script src="<?php echo base_url(); ?>asset/admin/plugins/timepicker/bootstrap-timepicker.js"></script>
  <script type="text/javascript">
    $('.datepicker').datepicker();
    $('.timepicker').timepicker()
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
      /// make loader hidden in start
      $('#loading').hide();
      $('#username').blur(function () {
        var username_val = $("#username").val();
        // show loader
        $('#loading').show();
        $.post("<?php echo site_url() ?>members/username_check", {
          a: username_val
        }, function (response) {
          $('#loading').hide();
          $('#messageusername').html('').html(response.messageusername).show();
        });
        return false;
      });
    });  
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
      /// make loader hidden in start
      $('#loading').hide();
      $('#sponsor').blur(function () {
        var sponsor_val = $("#sponsor").val();
        // show loader
        $('#loading').show();
        $.post("<?php echo site_url() ?>members/sponsor_check", {
          sps: sponsor_val
        }, function (response) {
          $('#loading').hide();
          $('#messagesponsor').html('').html(response.messagesponsor).show();
        });
        return false;
      });
    });  
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
      /// make loader hidden in start
      $('#loading').hide();
      $('#presenter').blur(function () {
        var presenter_val = $("#presenter").val();
        // show loader
        $('#loading').show();
        $.post("<?php echo site_url() ?>members/presenter_check", {
          psr: presenter_val
        }, function (response) {
          $('#loading').hide();
          $('#messagepresenter').html('').html(response.messagepresenter).show();
        });
        return false;
      });
    });  
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
      /// make loader hidden in start
      $('#loading').hide();
      $('#kodeaktivasi').blur(function () {
        var kodeaktivasi_val = $("#kodeaktivasi").val();
        // show loader
        $('#loading').show();
        $.post("<?php echo site_url() ?>members/paket_check", {
          kode: kodeaktivasi_val
        }, function (response) {
          $('#loading').hide();
          $('#messagekode').html('').html(response.messagekode).show();
        });
        return false;
      });
    });  
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
      /// make loader hidden in start
      $('#loading').hide();
      $('#email').blur(function () {
        var email_val = $("#email").val();
        var filter = /^[a-zA-Z0-9]+[a-zA-Z0-9_.-]+[a-zA-Z0-9_-]+@[a-zA-Z0-9]+[a-zA-Z0-9.-]+[a-zA-Z0-9]+.[a-z]{2,4}$/;
        if (filter.test(email_val)) {
          // show loader
          $('#loading').show();
          $.post("<?php echo site_url() ?>members/email_check", {
            d: email_val
          }, function (response) {
            $('#loading').hide();
            $('#message').html('').html(response.message).show();
          });
          return false;
        }
      });
    });  
  </script>

  <script type="text/javascript">
    $(document).ready(function () {
      /// make loader hidden in start
      $('#loading').hide();
      $('#ktp').blur(function () {
        var ktp_val = $("#ktp").val();
        // show loader
        $('#loading').show();
        $.post("<?php echo site_url() ?>members/ktp_check", {
          g: ktp_val
        }, function (response) {
          $('#loading').hide();
          $('#messagektp').html('').html(response.messagektp).show();
        });
        return false;
      });
    });

    $(function () {
      $("#example1").DataTable();
      $("#example11").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
      });

      $('#example3').DataTable({
        "paging": true,
        "lengthChange": true,
        "searching": true,
        "info": true,
        "autoWidth": false,
        "pageLength": 10,
        "order": [[4, "desc"]]
      });

    });
  </script>
  <?php include "modal.php"; ?>
</body>

</html>