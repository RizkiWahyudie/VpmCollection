        <section class="sidebar">
          <!-- Sidebar user panel -->
          <?php
          $log = $this->model_users->users_edit($this->session->username)->row_array(); 
          if ($log['foto']==''){ $foto = 'users.gif'; }else{ $foto = $log['foto']; }
            echo "<div class='user-panel'>
              <div class='pull-left image'>
                <img src='".base_url()."/asset/foto_user/$foto' class='img-circle' alt='User Image'>
              </div>
              <div class='pull-left info'>
                <p>$log[nama_lengkap]</p>
                <a href=''><i class='fa fa-circle text-success'></i> Online</a>
              </div>
            </div>";
          ?>
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header" style='color:#fff; text-transform:uppercase; border-bottom:2px solid #00c0ef'>MENU ADMIN</li>
            <li><a href="<?php echo base_url(); ?>administrator/home"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="treeview">
              <a href="#"><i class="glyphicon glyphicon-th-list"></i> <span>Menu Utama</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
              <?php
                $cek=$this->model_app->umenu_akses("identitaswebsite",$this->session->id_session);
                if($cek==1 OR $this->session->level=='admin'){
                  echo "<li><a href='".base_url()."administrator/identitaswebsite'><i class='fa fa-circle-o'></i> Identitas Website</a></li>";
                }

                $cek=$this->model_app->umenu_akses("imagesslider",$this->session->id_session);
                if($cek==1 OR $this->session->level=='admin'){
                  echo "<li><a href='".base_url()."administrator/imagesslider'><i class='fa fa-circle-o'></i> Images Slider</a></li>";
                }
              ?>
              </ul>
            </li>

            <li class="treeview">
              <a href="#"><i class="fa fa-gears"></i> <span>Modul System</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                  <?php 
                    $cek=$this->model_app->umenu_akses("kategori_produk",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/kategori_produk'><i class='fa fa-circle-o'></i> Kategori</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("produk",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/produk'><i class='fa fa-circle-o'></i> Produk</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("rekening",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/rekening'><i class='fa fa-circle-o'></i> No Rekening</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("konsumen",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/konsumen'><i class='fa fa-circle-o'></i> Konsumen</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("supplier",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/supplier'><i class='fa fa-circle-o'></i> Supplier</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("keterangan",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/keterangan'><i class='fa fa-circle-o'></i> Info Keranjang</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("konsumen",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/orders'><i class='fa fa-circle-o'></i> Orders</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("konsumen",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/konfirmasi_reseller'><i class='fa fa-circle-o'></i> Konfirmasi Reseller</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("konsumen",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/konfirmasi'><i class='fa fa-circle-o'></i> Konfirmasi Bayar</a></li>";
                    }

                    $cek=$this->model_app->umenu_akses("pembelian",$this->session->id_session);
                    if($cek==1 OR $this->session->level=='admin'){
                      echo "<li><a href='".base_url()."administrator/pembelian'><i class='fa fa-circle-o'></i> Pembelian (Stok)</a></li>";
                    }
                  ?>
              </ul>
            </li>

            <li class="treeview">
              <a href="#"><i class="glyphicon glyphicon-blackboard"></i> <span>Modul Iklan</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
              <?php
                $cek=$this->model_app->umenu_akses("iklanhome",$this->session->id_session);
                if($cek==1 OR $this->session->level=='admin'){
                  echo "<li><a href='".base_url()."administrator/iklanhome'><i class='fa fa-circle-o'></i> Iklan Home</a></li>";
                }
              ?>
              </ul>
            </li>
            
            <li class="treeview">
              <a href="#"><i class="glyphicon glyphicon-object-align-left"></i> <span>Modul Web</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
              <?php
                $cek=$this->model_app->umenu_akses("logowebsite",$this->session->id_session);
                if($cek==1 OR $this->session->level=='admin'){
                  echo "<li><a href='".base_url()."administrator/logowebsite'><i class='fa fa-circle-o'></i> Logo Website</a></li>";
                }

                $cek=$this->model_app->umenu_akses("pesanmasuk",$this->session->id_session);
                if($cek==1 OR $this->session->level=='admin'){
                  echo "<li><a href='".base_url()."administrator/pesanmasuk'><i class='fa fa-circle-o'></i> Pesan Masuk</a></li>";
                }
              ?>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-cog"></i> <span>Modul Users</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
              <?php
                $cek=$this->model_app->umenu_akses("manajemenuser",$this->session->id_session);
                if($cek==1 OR $this->session->level=='admin'){
                  echo "<li><a href='".base_url()."administrator/manajemenuser'><i class='fa fa-circle-o'></i> Manajemen User</a></li>";
                }
              ?>
              </ul>
            </li>
            
            <li><a href="<?php echo base_url(); ?>administrator/edit_manajemenuser/<?php echo $this->session->username; ?>"><i class="fa fa-user"></i> <span>Edit Profile</span></a></li>
            <li><a href="<?php echo base_url(); ?>administrator/logout"><i class="fa fa-power-off"></i> <span>Logout</span></a></li>
          </ul>
        </section>