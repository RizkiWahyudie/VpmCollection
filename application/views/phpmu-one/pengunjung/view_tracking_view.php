<p class='titleProductWishlist'>Tracking Pesanan</p>
<?php
$total_all = $total['total'] + $total['ongkir'];
$total_transaksi = $total_all - ($total['potongan_transaksi']);
if ($total_transaksi == $total_all) {
  $total_tagihann = "<span style='display:none;color:red;font-weight:bold;text-decoration:line-through;'>Rp " . rupiah($total_all) . "</span>";
} else {
  $total_tagihann = "<span style='color:red;font-weight:bold;text-decoration:line-through;'>Rp " . rupiah($total_all) . "</span>";
}
if ($total['proses'] == '0') {
  $proses = '<i class="text-danger">Pending</i>';
} elseif ($total['proses'] == '1') {
  $proses = '<i class="text-warning">Proses</i>';
} elseif ($total['proses'] == '2') {
  $proses = '<i class="text-info">Konfirmasi</i>';
} elseif ($total['proses'] == '3') {
  $proses = '<i class="text-success">Packing </i>';
} elseif ($total['proses'] == '4') {
  $proses = '<i class="text-success">Diantar Kurir </i>';
} elseif ($total['proses'] == '5') {
  $proses = '<i class="text-success">Sampai Tujuan </i>';
}
echo "<div class='col-md-7'>
        <dl class='dl-horizontal'>
            <dt>Nama</dt>       <dd>$rows[nama_lengkap]</dd>
            <dt>No Telpon/Hp</dt>       <dd>$rows[no_hp]</dd>
            <dt>Email</dt>       <dd>$rows[email]</dd>
            <dt>Kota</dt>               <dd>$rows[nama_kota]</dd>
            <dt>Alamat Lengkap</dt>     <dd>$rows[alamat_lengkap]</dd>
        </dl>
    </div>

    <div class='col-md-5'>
        <center>
        Total Tagihan
        <br>$total_tagihann
        <h3 style='font-weight:bold; margin-top:3px;color:green;'>Rp " . rupiah($total_transaksi) . "</h3>";
if ($total['resi'] != '') {
  echo "<span style='color:red; font-size:14px'>No Resi : <b>$total[resi]</b></span><br>";
} else {
  echo "<span style='color:red; font-size:14px'>No Resi : <b>-</b></span><br>";
}
echo "<span style='text-transform:uppercase'>$total[kurir]</span> ($total[service])
        Status : <i>$proses</i>   
        </center>
    </div>
    <div class='table-responsive col-md-12'>
      <table class='table'>
          <thead>
            <tr bgColor='#0275d8' style='color:#fff;'>
              <th width='47%'>Nama Produk</th>
              <th>Harga</th>
              <th>Qty</th>
              <th>Berat</th>
              <th>Total</th>
            </tr>
          </thead>
          <tbody>";

$no = 1;
$diskon_total = 0;
foreach ($record->result_array() as $row) {
  $sub_total = (($row['harga_jual'] - $row['diskon']) * $row['jumlah']);
  if ($row['diskon'] != '0') {
    $diskon = "<del style='color:red'>" . rupiah($row['harga_jual']) . "</del>";
  } else {
    $diskon = "";
  }
  if (trim($row['gambar']) == '') {
    $foto_produk = 'no-image.png';
  } else {
    $foto_produk = $row['gambar'];
  }
  $diskon_total = $diskon_total + $row['diskon'] * $row['jumlah'];
  echo "<tr>
          <td class='valign'><a href='" . base_url() . "produk/detail/$row[produk_seo]'>$row[nama_produk]</a><br>
          <small>Note : $row[keterangan_order]</small></td>
          <td class='valign'>" . rupiah($row['harga_jual'] - $row['diskon']) . " $diskon</td>
          <td class='valign'>$row[jumlah]</td>
          <td class='valign'>" . ($row['berat'] * $row['jumlah']) . " Gram</td>
          <td class='valign'>Rp " . rupiah($sub_total) . "</td>
        </tr>";
  $no++;
}

echo "<tr>
        <td colspan='4'><b>Subtotal </b> <i class='pull-right'>(" . terbilang($total['total']) . " Rupiah)</i></td>
        <td><b>Rp " . rupiah($total['total']) . "</b></td>
      </tr>";
if ($total['potongan_transaksi'] == 0) {
  echo "";
} else {
  ;
  echo "
<tr>
  <td colspan='4'><b>Diskon 10% dari Total Item</b> <i style='float:right'>(" . terbilang($total['potongan_transaksi']) . ")</i></td>
  <td><b>Rp " . rupiah($total['potongan_transaksi']) . "</b></td>
</tr>";
}
echo
  "
<tr>
  <td colspan='4'><b>Ongkir </b> <i class='pull-right'>(" . terbilang($total['ongkir']) . " Rupiah)</i></td>
  <td><b>Rp " . rupiah($total['ongkir']) . "</b></td>
</tr>

<tr>
  <td colspan='4'><b>Berat</b> <i class='pull-right'>(" . terbilang($total['total_berat']) . " Gram)</i></td>
  <td><b>$total[total_berat] Gram</b></td>
</tr>

</tbody>
</table>
</div>
<p>Silahkan mentransferkan uang dengan total <b>Rp " . rupiah($total_transaksi) . "</b> ke salah satu pilihan bank di bawah ini : </p> 
    <div class='table-responsive'>
      <table class='table table-hover'>
        <thead>
          <tr>
            <th width='20px'>No</th>
            <th>Nama Bank</th>
            <th>No Rekening</th>
            <th>Atas Nama</th>
          </tr>
        </thead>
        <tbody>";

$noo = 1;
$rekening = $this->model_app->view('rb_rekening');
foreach ($rekening->result_array() as $row) {
  echo "<tr><td>$noo</td>
                      <td>$row[nama_bank]</td>
                      <td><a href='$row[no_rekening]' target='_blank'>$row[no_rekening]</a></td>
                      <td>$row[pemilik_rekening]</td>
                  </tr>";
  $noo++;
}

echo "</tbody>
      </table></div>";