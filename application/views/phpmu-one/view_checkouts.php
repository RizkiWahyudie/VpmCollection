<?php
$total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-(b.diskon*a.jumlah)) as total, sum(b.berat*a.jumlah) as total_berat FROM `rb_penjualan_temp` a JOIN rb_produk b ON a.id_produk=b.id_produk where a.session='" . $this->session->idp . "'")->row_array();
if (!$reseller) {
    $checkReseller = "<div id='oksimpan' style='display:none'><button style='margin-bottom:10px' disabled type='submit' name='submit' class='btn btn-danger btn-flat btn-sm'>Lakukan Pembayaran</button><br><p style='color:red;'>Akun Reseller anda <span style='font-weight:bold'>BELUM</span> Terdaftar</p></div>";
} else if ($reseller['status'] == 0) {
    $checkReseller = "<div id='oksimpan' style='display:none'><button style='margin-bottom:10px' disabled type='submit' name='submit' class='btn btn-warning btn-flat btn-sm'>Lakukan Pembayaran</button><br><p style='color:orange;'>Akun Reseller anda <span style='font-weight:bold'>BELUM</span> Terkonfirmasi</p></div>";
} else if ($reseller['status'] == 1) {
    $checkReseller = "<div id='oksimpan' style='display:none'><button style='margin-bottom:10px' type='submit' name='submit' class='btn btn-success btn-flat btn-sm'>Lakukan Pembayaran</button><br><p style='color:green;'>Akun Reseller anda <span style='font-weight:bold'>SUDAH</span> Terkonfirmasi</p></div>";
}
if ($jml_transaksi > 10) {
    $alertDiskon = "<div class='alert alert-success'><b>YEAY!</b> Pesananmu mendapatkan Diskon 10% dari pembelian! Karena sudah mencapai 10x Transaksi</div>";
} else {
    $alertDiskon = "";
}

echo "<p class='titleProductWishlist'>Checkout Belanja - " . $this->session->idp . "</p>
<div class='alert alert-danger'><b>PENTING!</b> Pastikan data anda sudah benar sebelum menyelesaikan orderan ini.</div>
$alertDiskon
<form action='' method='POST'>
    <div class='col-md-8'>
        <dl class='dl-horizontal'>
            <dt>Nama</dt>       <dd>$rows[nama_lengkap]</dd>
            <dt>No Telpon/Hp</dt>       <dd>$rows[no_hp]</dd>
            <dt>Email</dt>       <dd>$rows[email]</dd>
            <dt>Kota</dt>               <dd>$rows[nama_kota]</dd>
            <dt>Alamat Lengkap</dt>     <dd>$rows[alamat_lengkap]</dd>
        </dl>
    </div>
    
    <div class='col-md-4'>
        <center>Total Bayar <br><span id='bayarasli' style='color:red;font-weight:bold;text-decoration:line-through;'></span><h3 style='font-weight:bold; margin-top:3px;color:green;' id='totalbayar'></h3>
        $checkReseller
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
              <th></th>
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
                    <td class='valign' width='30px'><a class='btn btn-danger btn-xs' title='Delete' href='" . base_url() . "produk/keranjang_delete/$row[id_penjualan_detail]'><span class='glyphicon glyphicon-remove'></span></a></td>
                </tr>";
    $no++;
}

echo "<tr>
                  <td colspan='4'><b>Subtotal </b> <i class='pull-right'>(" . terbilang($total['total']) . " Rupiah)</i></td>
                  <td><b>Rp " . rupiah($total['total']) . "</b></td>
                  <td></td>
                </tr>

                <tr>
                  <td colspan='4'><b>Berat</b> <i class='pull-right'>(" . terbilang($total['total_berat']) . " Gram)</i></td>
                  <td><b>$total[total_berat] Gram</b></td>
                  <td></td>
                </tr>

        </tbody>
      </table>
    </div>";
if ($jml_transaksi > 10) {
    $disc_transaksi = $total['total'] * 0.1;
} else {
    $disc_transaksi = 0;
}
?>
<input type="hidden" name="total" id="total" value="<?php echo $total['total']; ?>" />
<input type="hidden" name="jml_transaksi" id="jml_transaksi" value="<?php echo $jml_transaksi; ?>" />
<input type="hidden" name="ongkir" id="ongkir" value="0" />
<input type="hidden" name="disctransaksi" value="<?php echo $disc_transaksi; ?>" />
<input type="hidden" name="berat" value="<?php echo $total['total_berat']; ?>" />
<input type="hidden" name="diskonnilai" id="diskonnilai" value="<?php echo $diskon_total; ?>" />
<div class="form-group">
    <label class="col-sm-2 control-label" for="">Pilih Kurir</label>
    <div class="col-md-10">
        <?php
        $kurir = array('jne', 'pos', 'tiki');
        foreach ($kurir as $rkurir) {
            ?>
            <label class="radio-inline">
                <input type="radio" name="kurir" class="kurir" value="<?php echo $rkurir; ?>" /> <?php echo strtoupper($rkurir); ?>
            </label>
            <?php
        }
        ?>
    </div>
</div>
<div id="kuririnfo" style="display: none;">
    <div class="form-group">
        <div class="col-md-12">
            <div class='alert alert-info' style='padding:5px; border-radius:0px; margin-bottom:0px'>Service</div>
            <p class="form-control-static" id="kurirserviceinfo"></p>
        </div>
    </div>
</div>


<?php
echo form_close();
?>
<script>
    $(document).ready(function () {

        $(".kurir").each(function (o_index, o_val) {
            $(this).on("change", function () {
                var did = $(this).val();
                var berat = "<?php echo $total['total_berat']; ?>";
                var kota = "<?php echo $rows['kota_id']; ?>";
                $.ajax({
                    method: "get",
                    dataType: "html",
                    url: "<?php echo base_url(); ?>produk/kurirdata",
                    data: "kurir=" + did + "&berat=" + berat + "&kota=" + kota,
                    beforeSend: function () {
                        $("#oksimpan").hide();
                    }
                })
                    .done(function (x) {
                        $("#kurirserviceinfo").html(x);
                        $("#kuririnfo").show();
                    })
                    .fail(function () {
                        $("#kurirserviceinfo").html("");
                        $("#kuririnfo").hide();
                    });
            });
        });

        $("#diskon").html(toDuit(0));
        hitung();
    });

    function hitung() {
        var diskon = $('#diskonnilai').val();
        var total = $('#total').val();
        var ongkir = $("#ongkir").val();
        var jml_transaksi = $('#jml_transaksi').val();
        var diskon_transaksi = 0.1;
        var disc_bayar = (parseInt(total) + parseInt(ongkir) - (parseInt(total) * diskon_transaksi));
        var bayarasli = (parseInt(total) + parseInt(ongkir));
        if (jml_transaksi > 10) {
            var bayarr = (parseInt(total) + parseInt(ongkir) - (parseInt(total) * diskon_transaksi));
        } else {
            var bayarr = (parseInt(total) + parseInt(ongkir));
        }
        if (parseInt(ongkir) > 0) {
            $("#oksimpan").show();
        } else {
            $("#oksimpan").hide();
        }
        $("#totalbayar").html(toDuit(bayarr));
        if (jml_transaksi > 10) {
            $("#bayarasli").show();
            $("#bayarasli").html(toDuit(bayarasli));
        } else {
            $("#bayarasli").hide();
            $("#bayarasli").html(toDuit(bayarasli));
        }
    }
</script>