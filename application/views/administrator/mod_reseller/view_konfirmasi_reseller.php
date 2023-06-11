<div class='col-md-12'>
    <div class='box box-info'>
        <div class='box-header with-border'>
            <h3 class='box-title'>Detail Data Akun Reseller</h3>
        </div>
        <div class='box-body'>
            <div class='col-md-12'>
                <table id="example1" class='table table-hover table-condensed'>
                    <thead>
                        <tr>
                            <th width="20px">No</th>
                            <th>Username</th>
                            <th>Nama Toko</th>
                            <th>Link Toko</th>
                            <th>KTP</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($record->result_array() as $row) {
                            if ($row['status'] == '0') {
                                $proses = '<i class="text-danger">Failed</i>';
                                $color = 'danger';
                                $text = 'Failed';
                            } elseif ($row['status'] == '1') {
                                $proses = '<i class="text-success">Sukses</i>';
                                $color = 'success';
                                $text = 'Sukses';
                            }
                            $username = $this->db->query("SELECT * FROM `rb_konsumen` a where a.id_konsumen='$row[id_konsumen]'")->row_array();

                            echo "<tr><td>$no</td>
                                            <td>$username[username]</td>
                                            <td><span style='text-transform:uppercase'>$row[nama_olshop]</span></td>
                                            <td><a target='_BLANK' href='$row[link_olshop]'>$row[nama_olshop]</a></td>
                                            <td width='400px'><img width='300px' src='" . base_url() . "asset/reseller/$row[ktp]' class='img-rounded'></td>
                                            <td width='130px'>
                                              <div class='btn-group'> 
                                                <button style='width:100px' type='button' class='btn btn-$color btn-xs'>$text</button> 
                                                <button type='button' class='btn btn-$color btn-xs dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'> <span class='caret'></span> <span class='sr-only'>Toggle Dropdown</span> </button> 
                                                  <ul class='dropdown-menu' style='border:1px solid #cecece;'> 
                                                    <li><a href='" . base_url() . "administrator/reseller_status/$row[id]/0' onclick=\"return confirm('Apa anda yakin untuk ubah status jadi Failed ?')\"> Failed</a></li> 
                                                    <li><a href='" . base_url() . "administrator/reseller_status/$row[id]/1' onclick=\"return confirm('Apa anda yakin untuk ubah status jadi Sukses ?')\"> Sukses</a></li> 
                                                  </ul> 
                                              </div>
                                            </td>
                                         </tr>";
                            $no++;
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>