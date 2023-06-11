<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Reseller extends CI_Controller
{
    public function index()
    {
        cek_session_members();
        if (isset($_POST['submit'])) {
            $config['upload_path'] = 'asset/reseller/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size'] = '10000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil = $this->upload->data();
            $data = array(
                'id_konsumen' => $this->session->id_konsumen,
                'nama_olshop' => $this->input->post('b'),
                'link_olshop' => $this->input->post('c'),
                'ktp' => $hasil['file_name'],
                'status' => 0,
            );
            $this->load->database();
            $this->db->insert('reseller_akun', $data);
            redirect('reseller');
        } else {
            $session = $this->session->id_konsumen;
            $data['reseller'] = $this->db->query("SELECT * FROM `reseller_akun` a where a.id_konsumen='$session'")->row_array();
            $this->template->load('phpmu-one/template', 'phpmu-one/pengunjung/view_daftar_reseller', $data);
        }
    }

    public function carajoin()
    {
        $this->template->load('phpmu-one/template', 'phpmu-one/view_reseller_carajoin');
    }
}