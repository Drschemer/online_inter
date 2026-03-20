<?php

/**
 * Class News_model
 * @property CI_DB_driver|CI_DB_sqlite3_driver $db The DB driver
 */
class Login_model extends CI_Model {

    public function __construct()
    {
       $this->load->database();
       $demodb = $this->load->database('demo', TRUE);
    }

    public function chk_login($user,$pass)
    {
        
       // $this->load->database('default');
        $query = $this->db->get_where('tbl_user_naragroup', array('f_user_login' => $user, 'f_password' => $pass));
        return $query->row_array();
    }

    public function updateTable($v1,$v2,$v3,$v4)
    {
        $this->load->helper('url');
        $demodb = $this->load->database('demo', TRUE);
        //$col = 'f_comment_'.$value7;
        $data = array(
        'f_branch_code' => $v1,
        'f_question_number' => $v2,
        'f_question_id' => $v3,
        'f_image_path' => $v4
        );

        $demodb->insert('tbl_images', $data);
     
    }

    public function sso_chk($email)
    {
        
       // $this->load->database('default');
        $query = $this->db->get_where('tbl_user_naragroup', array('f_user_login' => $email));
        return $query->row_array();
    }

    /**
     * @param string $title
     * @param string $text
     * @return mixed
     */

    public function getQscPoint($title)
    {
        $this->load->helper('url');
        $list = "tbl_".$title."_topic_detail";

        $query = $this->db->get($list);
        return $query->result();
    }

    public function getBranch($branch,$rm)
    {
        $this->load->helper('url');

        if(($branch < 555) || ($rm == '102501054')){
        $query = $this->db->where('f_branch_code',$branch)
                           ->get("tbl_branch");
        return $query->result();  
        }else{
        $query = $this->db->where('f_area_code',$rm)
                          ->where('f_area_status',1)
                           ->get("tbl_area_manager");
        return $query->result();  
        }
    }

    public function getBranchName($rm)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_branch_code',$rm)
                           ->get("tbl_branch");
        return $query->result();  
        
    }

    public function getBranchAll()
    {
        $this->load->helper('url');

        $query = $this->db->where('f_status',1)
                          ->where('f_branch_code < 555')
                           ->get("tbl_branch");
        return $query->result();  
        
    }

   /* public function getBranchData($branchCode)
    {
        $this->load->helper('url');

        $this->db->select('f_qsc_sum'); 
        $this->db->from('tbl_sum_qsc1');   
        $this->db->where('f_branch_code',$branchCode);
        $this->db->order_by('f_datetime','ASC');

        return $this->db->get()->result();  
        
    }*/

    public function getArea()
    {
        $this->load->helper('url');

        $query = $this->db->get("tbl_branch");
        return $query->result();     
    }

   /* public function getAreaName($code)
    {
        $this->load->helper('url');

        $this->db->select('f_area_code'); 
        $this->db->from('tbl_area_manager');   
        $this->db->where('f_branch_code',$code);
        return $this->db->get()->result();
    }*/
    
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

    public function getCommentData($branchId,$value7)
    {
        $this->load->helper('url');
        $col = 'f_comment_'.$value7;
        $this->db->select($col); 
        $this->db->from('tbl_qsc1_checklist');   
        $this->db->where('f_branch_code',$branchId);
        return $this->db->get()->result();        
    }
    


    
    
    


    

}