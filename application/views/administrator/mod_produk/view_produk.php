<div class="col-xs-12">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Semua Produk</h3>
      <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>administrator/tambah_produk'>Tambahkan
        Data</a>
    </div><!-- /.box-header -->
    <div class="box-body">
      <table id="example1" class="table table-bordered table-striped table-condensed">
        <thead>
          <tr>
            <th style='width:30px'>No</th>
            <th>Nama Produk</th>
            <th>Harga Modal</th>
            <!-- <th>Harga Reseller</th> -->
            <th>Harga Reseller</th>
            <th>Stok</th>
            <th>Satuan</th>
            <th>Berat</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $no = 1;
          foreach ($record as $row) {
            $jual = $this->model_app->jual($row['id_produk'])->row_array();
            $beli = $this->model_app->beli($row['id_produk'])->row_array();
            if ($row['status_sale'] == '0') {
              $proses = '<i class="text-danger">NOT SALE</i>';
              $color = 'danger';
              $text = 'NOT SALE';
            } elseif ($row['status_sale'] == '1') {
              $proses = '<i class="text-success">SALE</i>';
              $color = 'success';
              $text = 'SALE';
            }
            // <td>Rp ".rupiah($row['harga_reseller'])."</td>
            echo "<tr><td>$no</td>
                    <td>$row[nama_produk]</td>
                    <td>Rp " . rupiah($row['harga_beli']) . "</td>
                    
                    <td>Rp " . rupiah($row['harga_reseller']) . "</td>
                    <td>" . ($beli['beli'] - $jual['jual']) . "</td>
                    <td>$row[satuan]</td>
                    <td>$row[berat] Gram</td>
                    <td><center>
                      <a class='btn btn-success btn-xs' title='Edit Data' href='" . base_url() . "administrator/edit_produk/$row[id_produk]'><span class='glyphicon glyphicon-edit'></span></a>
                      <a class='btn btn-danger btn-xs' title='Delete Data' href='" . base_url() . "administrator/delete_produk/$row[id_produk]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                    <div class='btn-group'> 
                      <button style='width:70px' type='button' class='btn btn-$color btn-xs'>$text</button> 
                      <button type='button' class='btn btn-$color btn-xs dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'> <span class='caret'></span> <span class='sr-only'>Toggle Dropdown</span> </button> 
                        <ul class='dropdown-menu' style='border:1px solid #cecece;'> 
                          <li><a href='" . base_url() . "administrator/produk_status/$row[id_produk]/0' onclick=\"return confirm('Apa anda yakin untuk ubah status jadi NOT FOR SALE ?')\"> NOT SALE</a></li> 
                          <li><a href='" . base_url() . "administrator/produk_status/$row[id_produk]/1' onclick=\"return confirm('Apa anda yakin untuk ubah status jadi FOR SALE ?')\"> SALE</a></li> 
                        </ul> 
                    </div>
                    </center>
                    </td>
                </tr>";
            $no++;
          }
          ?>
        </tbody>
      </table>
    </div>