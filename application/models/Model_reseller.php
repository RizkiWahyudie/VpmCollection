<?php
class Model_reseller extends CI_model
{
    function insert($data)
    {
        $this->db->insert('reseller_akun', $data);
    }
}