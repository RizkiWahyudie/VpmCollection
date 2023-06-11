<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Aboutus extends CI_Controller
{
    public function index()
    {
        if (isset($_POST['submit'])) {
            $this->model_main->kirim_Pesan();
            redirect('aboutus/index');
        } else {
            $mp = $this->db->query("SELECT * FROM identitas")->row();
            $data['title'] = 'Hubungi Kami';
            $data['maps'] = $mp->maps;
            $data['alamat'] = $mp->alamat;
            $this->template->load('phpmu-one/template', 'phpmu-one/aboutus', $data);
        }
    }
}