<div class='joinReseller2' style='margin-top: 2rem;'>
    <div class='joinFirst2' style='display:flex;justify-content:center;'><img src='https://i.ibb.co/cDy07d5/joinuss.png'
            class='imageJoin2' /></div>
    <div class='joinSecond2'>
        <p class='tittleReseller2'>Let's join us</p>
        <p class='descReseller2'>Yuk bergabung dengan kami sebagai reseller dan jadilah bagian dari tim yang sukses
            bersama-sama! Dengan bergabung sebagai reseller, kamu bisa menghasilkan penghasilan tambahan sambil
            memperluas jaringan bisnis. Tunggu apa lagi? Ayo bergabung sekarang dan raih kesuksesan bersama kami!</p>
        <?php
        $this->load->database();
        $user_id = $this->session->id_konsumen;
        if ($user_id) {
            $resellerLogin = "<a style='text-decoration:none;color:white;border:1px solid white;padding:1rem;border-radius:2rem;' href='" . base_url() . "reseller'>Join Reseller</a>";
        } else {
            $resellerLogin = "<a style='text-decoration:none;color:white;border:1px solid white;padding:1rem;border-radius:2rem;' href='" . base_url() . "reseller' onclick=\"return confirm('Belum login, harap login untuk daftar reseller')\">Join Reseller</a>";
        }
        echo "$resellerLogin"; ?>
    </div>
</div>

<p class='titleProductWishlist' style='margin-top:4rem;'>Benefit</p>
<p style='text-align:center; margin-top:-1rem; color: gray;'>Keuntungan yang didapat jika bergabung dengan Kami</p>
<div class='benefit'>
    <center>
        <div class='benefitItem'>
            <img src="https://svgshare.com/i/swP.svg" alt="">
            <p>Potongan Harga</p>
            <span>Bergabunglah Dengan Kami Sebagai Reseller dan Dapatkan Keuntungan Potongan Harga Produk untuk semua
                Item kami!</span>
        </div>
    </center>
    <center>
        <div class='benefitItem'>
            <img src="https://svgshare.com/i/sxM.svg" alt="">
            <p>Diskon 10%</p>
            <span>Bergabunglah Dengan Kami Sebagai Reseller dan Dapatkan Keuntungan Diskon 10% jika penjualan melebihi
                10x pembelian!</span>
        </div>
    </center>
    <center>
        <div class='benefitItem'>
            <img src="https://svgshare.com/i/sya.svg" alt="">
            <p>Reward Capai Target</p>
            <span>Bergabunglah Dengan Kami Dapatkan Keuntungan mendapatkan Reward jika menjadi yang terlaris dalam
                menjual produk!</span>
        </div>
    </center>
</div>

<p class='titleProductWishlist' style='margin-top:4rem;'>Cara Join</p>
<p style='text-align:center; margin-top:-1rem; color: gray;'>Step by step untuk bergabung dengan kami sebagai Reseller
</p>
<div class='benefit' style='margin:2rem 0;'>
    <center>
        <div class='benefitItem2'>
            <img src="https://svgshare.com/i/syC.svg" alt="">
            <p>Register</p>
            <span>Syarat pertama untuk Join sebagai Reseller kami yaitu buat akun terlebih dahulu!</span>
        </div>
    </center>
    <center>
        <div class='benefitItem2'>
            <img src="https://svgshare.com/i/sxr.svg" alt="">
            <p>Isi Form</p>
            <?php echo "<span>Silahkan <a href='" . base_url() . "reseller'>klik</a> untuk pendaftaran dan harap isi form dengan data yang sesuai</span>"; ?>
        </div>
    </center>
    <center>
        <div class='benefitItem2'>
            <img src="https://svgshare.com/i/sxs.svg" alt="">
            <p>Tunggu dan Update</p>
            <span>Tunggu sampai 12 jam untuk Admin konfirmasi, jika sudah lebih harap hubungi Admin</span>
        </div>
    </center>
    <center>
        <div class='benefitItem2'>
            <img src="https://svgshare.com/i/sxt.svg" alt="">
            <p>Berhasil</p>
            <span>Jika sudah terkonfirmasi, Kamu bisa berbelanja dan mendapatkan potongan harga</span>
        </div>
    </center>
</div>

<p class='titleProductWishlist' style='margin-top:4rem;'>Syarat Join</p>
<p style='text-align:center; margin-top:-1rem; color: gray;'>Berikut adalah syarat yang harus disiapkan untuk daftar
    sebagai Reseller Kami
</p>
<div class='benefit'>
    <center>
        <div class='benefitItem2'>
            <img src="https://i.ibb.co/h13Z067/debit-card.png" alt="">
            <p>KTP</p>
        </div>
    </center>
    <center>
        <div class='benefitItem2'>
            <img src="https://i.ibb.co/F7CkDX9/shop.png" alt="">
            <p>Akun Toko</p>
        </div>
    </center>
</div>