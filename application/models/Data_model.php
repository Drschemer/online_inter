<?php

/**
 * Class News_model
 * @property CI_DB_driver|CI_DB_sqlite3_driver $db The DB driver
 */
class Data_model extends CI_Model {

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

    public function getQscPoint($title)
    {
        $this->load->helper('url');
        $dataTable = 'tbl_'.$title.'_topic_detail';

        $query = $this->db->get("$dataTable");
        return $query->result();
    }

    public function getBranch($branch,$rm)
    {
        $this->load->helper('url');

       // var_dump($branch,$rm);die();
        if($branch < 555 || $rm == '102501054' || $branch == 777){
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

    public function getRmAssName($rm)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_branch_code',$rm)
                          ->where('f_position in ("RM","Ass.RM")')
                           ->get("tbl_user_naragroup");
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

   public function getBranchData($branchCode,$getDate,$default_graph)
    {
        $this->load->helper('url');

        $field = "f_".$default_graph."_percentage";
       
        $this->db->select("$field"); 
        $this->db->from("tbl_sum_$default_graph");   
        $this->db->where('f_branch_code', $branchCode);
        $this->db->where("f_datetime", $getDate);

        
        return $this->db->get()->result();  
        
    }

    public function getBranchDateData($branchCode)
    {
        $this->load->helper('url');

        $this->db->select('f_datetime'); 
        $this->db->from('tbl_sum_qsc1');   
        $this->db->where('f_branch_code',$branchCode);
        $this->db->order_by('f_datetime','ASC');

        return $this->db->get()->result();  
        
    }

    public function getArea()
    {
        $this->load->helper('url');

        $query = $this->db->get("tbl_branch");
        return $query->result();     
    }

   public function getAreaName($code,$bar,$kitchen,$inter)
    {
        $this->load->helper('url');
      //  var_dump($code,$bar,$kitchen,$inter);die();
        $this->db->select('f_area_code'); 
        $this->db->from('tbl_area_manager');   
        $this->db->where('f_branch_code',$code);
        $this->db->where('f_area_status',1);
        if($bar == true){
            $this->db->where('f_area_code_country','900');
        }elseif($kitchen == true){
            $this->db->where('f_area_code_country','666');
        }elseif($inter == true){
            $this->db->where('f_area_code_country','999');
        }else{
         $this->db->where('f_area_code_country','888');   
        }
        return $this->db->get()->result();

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

     public function getAreaManagerNew($dataNew)
    {
        $this->load->helper('url');

       /* if($dataNew == 900){
            $query = $this->db->where('f_branch_code', $dataNew)
                           ->get("tbl_user_naragroup");
            return $query->result(); 
        }else{*/

        $query = $this->db->where('f_branch_code', $dataNew)
                           ->get("tbl_user_naragroup");
        return $query->result();  
        //}
    }

    public function getCommentSumData($dateDate,$branchCode,$chklist)
    {
       $this->load->helper('url');
        $table = "tbl_sum_".$chklist;
        $query = $this->db->where('f_branch_code',$branchCode)
                          ->where('f_datetime',$dateDate)
                          ->order_by('f_sum_id','DESC')
                          ->limit(1)
                           ->get($table);
        return $query->result();  

    }
    
    public function getCommentAverageSumData($dataDateStart,$dataDateEnd,$branchCode,$chklist)
    {
       $this->load->helper('url');
        $table = "tbl_sum_".$chklist;
        $query = $this->db->where('f_branch_code',$branchCode)
                          ->where("f_datetime BETWEEN '$dataDateStart' AND '$dataDateEnd'")
                          ->order_by('f_sum_id','DESC')
                           ->get($table);
        return $query->result();  

    }



    public function getCommentDetailData($dateDate,$branchCode,$chklist)
    {
        $this->load->helper('url');

        $table = "tbl_".$chklist."_checklist";
        $query = $this->db->where('f_branch_code',$branchCode)
                          ->where('f_datetime',$dateDate)
                          ->order_by('f_id','DESC')
                          ->limit(1)
                           ->get($table);
        return $query->result();  

    }

    public function getCommentImageData($dateDate,$branchCode,$chklist)
    {
        $this->load->helper('url');

        $table = "tbl_".$chklist."_image";
        $query = $this->db->where('f_branch_code',$branchCode)
                          ->where('f_datetime',$dateDate)
                          ->order_by('f_image_id','DESC')
                          ->limit(1)
                           ->get($table);
        return $query->result();  

    }

    

    public function getExportExcel($branchCode,$dateDate)
    {
        $this->load->helper('url');

        $table = "tv_export_qsc1";
        $query = $this->db->where('f_branch_code',$branchCode)
                        ->where('f_datetime',$dateDate)
                        ->order_by('f_id','DESC')
                        ->limit(1)
                        ->get($table);
        return $query->result_array();  

    }
    


    public function getFunction()
    {
        $this->load->helper('url');

        $query = $this->db->get("tbl_training_function");
        return $query->result();     
    }
    
    public function test2($k1,$k2,$k3,$k4)
    {
        $this->load->helper('url');
        $demodb = $this->load->database();
        //$col = 'f_comment_'.$value7;
        $v2 = rand(50,66);
        $v3 = 66;
        $v4 = rand(0,100);;
        $data = array(
        'f_dca1_id' => $k1,
        'f_dca1_sum' => $v2,
        'f_dca1_total' => $v3,
        'f_dca1_percentage' => $v4,  
        'f_user_code' => $k2,
        'f_branch_code' => $k3,
        'f_datetime' => $k4,      
        );


        $this->db->insert('tbl_sum_dca1', $data);
    }

    public function getStaffAll()
    {
        $this->load->helper('url');

        $query = $this->db->where('f_status',1)
                          ->order_by('f_branch_code','ASC')
                          ->get("tbl_training_staff");
        return $query->result(); 
        
    }

    public function getCertAll()
    {
        $this->load->helper('url');

        $query = $this->db->where('f_status',1)
                          ->order_by('f_cert_code','ASC')
                          ->get("tbl_training_cert");
        return $query->result(); 
        
    }

    public function getTopicAll()
    {
        $this->load->helper('url');

        $query = $this->db->where('f_status',1)
                          ->order_by('f_cert_code','ASC')
                          ->get("tbl_training_course");
        return $query->result(); 
        
    }

    public function getFunctionAll()
    {
        $this->load->helper('url');

        $query = $this->db->where('f_status',1)
                          ->order_by('f_function_code','ASC')
                          ->get("tbl_training_function");
        return $query->result(); 
        
    }

    public function getFunctionName($aaa)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_status',1)
                          ->where('f_function_code',$aaa)
                          ->get("tbl_training_function");
        return $query->result(); 
        
    }

    public function deleteStaff($id)
    {
        $this->load->helper('url');

        $data = array(
        "f_status" => '0'
        );

       // var_dump($data,$id);die();

        $this->db->where('f_user_code', $id);
        $this->db->update('tbl_training_staff', $data);
    }

    

    

    

    
    


    

}


