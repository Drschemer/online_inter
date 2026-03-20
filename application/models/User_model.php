<?php

/**
 * Class News_model
 * @property CI_DB_driver|CI_DB_sqlite3_driver $db The DB driver
 */
class User_model extends CI_Model {

    public function __construct()
    {
       $this->load->database();
       $this->demo = $this->load->database('demo', TRUE);
    }

    /**
     * @param string $title
     * @param string $text
     * @return mixed
     */


    public function getRmAssName($rm)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_branch_code',$rm)
                          ->where('f_position in ("RM","Ass.RM")')
                           ->get("tbl_user_naragroup");
        return $query->result();  
        
    }

    public function getNameArea($rm)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_user_code',$rm)
                           ->get("tbl_user_naragroup");
        return $query->result();  
        
    }

     public function getAreaManager()
    {
        $this->load->helper('url');

        $query = $this->db->where('f_branch_code > 777')
                           ->get("tbl_user_naragroup");
        return $query->result();  
        
    }

    public function getpermittion($id)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_permittion_id',$id)
                           ->get("tbl_permittion_online");
        return $query->result();  
        
    }

    public function getUserByCode($user_code)
    {
        return $this->db
            ->where('f_user_code', $user_code)
            ->get('tbl_user_naragroup')
            ->row();
    }

    public function getPermittionById($permit_id)
    {
        return $this->db
            ->where('f_permittion_id', $permit_id)
            ->get('tbl_permittion_online')
            ->row();
    }

}