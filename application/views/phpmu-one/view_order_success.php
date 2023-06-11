<p class='titleProductWishlist'>Checkout Sukses</p>
<center>
  <div class='alert alert-success'>Success Order!</div>
  No Invoice anda : <b>
    <?php echo $orders; ?>
  </b><br>
  Total Belanja anda <b style='color:red'>Rp
    <?php echo $total_bayar; ?>
  </b><br>
  <a target='_BLANK' class="btn btn-default"
    href="<?php echo base_url(); ?>produk/print_invoice/<?php echo $orders; ?>"><span
      class="glyphicon glyphicon-print"></span> Cetak Invoice</a>
  <br><br>

  Kami juga telah mengirimkan detail pesanan anda ke <b class='btn btn-xs btn-success'>
    <?php echo $email; ?>
  </b><br>
  Silahkan mentransferkan uang dengan total <b>Rp
    <?php echo $total_bayar; ?>
  </b> ke salah satu pilihan bank di bawah ini : <br>
</center>
<hr>
<div class='table-responsive'>
  <table class='table table-hover table-condensed'>
    <thead>
      <tr bgColor='#0275d8' style='color:#fff;'>
        <th width="20px">No</th>
        <th>Nama Bank</th>
        <th>No Rekening</th>
        <th>Atas Nama</th>
      </tr>
    </thead>
    <tbody>
      <?php
      $no = 1;
      foreach ($rekening->result_array() as $row) {
        echo "<tr><td>$no</td>
              <td>$row[nama_bank]</td>
              <td><a href='$row[no_rekening]' target='_blank'>$row[no_rekening]</a></td>
              <td>$row[pemilik_rekening]</td>
          </tr>";
        $no++;
      }
      ?>
    </tbody>
  </table>
</div>
<hr>
<center style='padding-bottom:50px'>
  Setelah melakukan Pembayaran, silahkan konfirmasi pembayaran anda <a
    href='<?php echo base_url(); ?>konfirmasi'>disini</a>.<br>
  Dan silahkan Menunggu info selanjutnya dari kami, salam,..<br>
</center>
<br><br>