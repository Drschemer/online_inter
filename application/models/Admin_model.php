<?php

/**
 * Class News_model
 * @property CI_DB_driver|CI_DB_sqlite3_driver $db The DB driver
 */
class Admin_model extends CI_Model {

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


        
    public function addTopic($prefix,$getdata)
    {
        $this->load->helper('url');
        $count = count($getdata);

        for($i=1;$i<=$count;$i+=2){
        $code = '';
        if($i<10){
            $code = $prefix.'0'.$i;
        }else{
            $code = $prefix.$i;
        }
        $th = $i-1;
        $data = array(
        'f_topic_code' => $code,
        'f_topic_detail_th' => $getdata[$th],
        'f_topic_detail_en' => $getdata[$i],
		'f_topic_status' => 1,
        );
        $this->db->insert("tbl_{$prefix}_topic_detail", $data);
        }
    }


    public function getMemberUnder($branch)
    {
        $this->load->helper('url');
        $query = $this->db->where('f_branch_code',$branch)
                           ->get("tbl_user_naragroup");
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

    

     public function getEmpData($value1)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_branch_code',$value1)
                           ->get("tbl_user_naragroup");
        return $query->result();  
        
    }

    public function getEmpData2($value1)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_branch_code',$value1)
                           ->get("tbl_training_staff");
        return $query->result();  
        
    }

    public function getDataTraining($usercode)
    {
        $this->load->helper('url');

        $query = $this->db->order_by('f_datetime','DESC')
                          ->where('f_user_code',$usercode)
                          ->get("tbl_training_result");
        return $query->result();  
        
    }

    
    public function getTrainingData($usercode,$f_course_code,$f_datetime)
    {
        $this->load->helper('url');

        $query = $this->db->select('tbl_training_result.f_id as FID,tbl_training_result.f_user_code,tbl_training_result.f_course_code,tbl_training_result.f_datetime,tbl_training_result.f_trainer_name,tbl_training_result.f_cert_approve,tbl_training_result.f_training_result,tbl_training_result.f_comment,tbl_training_result.f_image,tbl_training_topic.f_topic_name')
                          ->order_by('f_datetime','DESC')
                          ->join('tbl_training_topic', 'tbl_training_topic.f_topic_code = tbl_training_result.f_topic_code', 'left')
                          ->where('tbl_training_result.f_user_code',$usercode)
                          ->where('tbl_training_result.f_course_code',$f_course_code)
                          ->where('tbl_training_result.f_datetime',$f_datetime)
                          ->get("tbl_training_result");
        return $query->result();  
        
    }

    public function getDataTrainingGroupBy($usercode)
    {
        $this->load->helper('url');

        $this->db->select('f_course_code,f_datetime');
        $this->db->from('tbl_training_result');
        $this->db->where('f_user_code',$usercode);
        $this->db->order_by('f_datetime','DESC');
        $this->db->group_by('f_course_code,f_datetime');
        $query = $this->db->get();
        
        return $query->result();  
        
    }

    public function getSuccessTraining($usercode)
    {
        $this->load->helper('url');

        $query = $this->db->order_by('f_datetime','DESC')
                          ->where('f_user_code',$usercode)
                          ->where('f_training_result','1')
                          ->get("tbl_training_result");
        return $query->result();  
        
    }


    //
    public function getDataTrainingCount($usercode)
    {
        $this->load->helper('url');

        $this->db->select('COUNT(DISTINCT f_datetime) as distinct_count');
        $this->db->from('tbl_training_result');
        $this->db->where('f_user_code',$usercode);
        $query = $this->db->get();
        
        return $query->result();  
        
    }

     public function getEvaInfo($usercode)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_user_code',$usercode)
                          ->get("tbl_training_staff");
        return $query->result();  
        
    }

     public function getTopic($id)
    {
        $this->load->helper('url');


        $this->db->select('f_course_detail_th');
        $this->db->from('tbl_training_course');
        $this->db->where('f_course_code',$id);
         $query = $this->db->get();
        
        return $query->result();  
        
    }

    

    public function getSelectTopic()
    {
        $this->load->helper('url');

        $query = $this->db->where('f_status','1')
                          ->get("demo_tbl_training_topic");
        return $query->result();  
        
    }

    public function getSelectTopic2()
    {
        $this->load->helper('url');

        $query = $this->db->where('f_status','1')
                          ->get("tbl_training_course");
        return $query->result();  
        
    }

    

    public function getTopicData($data)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_course_code',$data)
                          ->get("tbl_training_topic");
        return $query->result();  
        
    }


    public function addResult($id,$usercode,$f_score,$f_comment,$f_image)
    {
        $this->load->helper('url');

        $data = array(
        'f_training_result' => $f_score,
        'f_comment' => $f_comment,
        'f_image' => $f_image
        );

       // var_dump($data);die();

        $this->db->where('f_id', $id);
        $this->db->update('demo_tbl_result_training', $data);
    }

    public function updateResult($id,$col,$datainsert)
    {
        $this->load->helper('url');

        $data = array(
        "$col" => $datainsert
        );

       // var_dump($data);die();

        $this->db->where('f_id', $id);
        $this->db->update('tbl_training_result', $data);
    }

    public function updateTrainer($id,$f_trainer_name,$f_cert_approve)
    {
        $this->load->helper('url');

        $data = array(
        "f_trainer_name" => $f_trainer_name,
        "f_cert_approve" => $f_cert_approve
        );
        $this->db->where('f_id', $id);
        $this->db->update('tbl_training_result', $data);
    }

        public function updateResultByFID($fid, $data)
    {
        $this->db->where('f_id', $fid);
        $this->db->update('tbl_training_result', $data);
    }

     public function getCert()
    {
        $this->load->helper('url');

        
        $query = $this->db->get('tbl_training_cert');
        
        return $query->result();  
        
    }

     public function getTest($test)
    {
        $this->load->helper('url');

        
        $this->db->select('DISTINCT (f_eva_prefix)');
        $this->db->from('tbl_training_detail');
        $this->db->where('f_cert_code',$test);
        $query = $this->db->get();
        
        return $query->result(); 
        
    }

    public function getEvaTest($a)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_eva_prefix',$a)
                          ->order_by('f_id','ASC')
                          ->get("tbl_training_detail");

        return $query->result();  
        
    }

    

    

    public function getCourseName($data)
    {
        $this->load->helper('url');

        $query = $this->db->select('f_course_detail_th,f_course_detail_en')
                          ->where('f_cert_code',$data)
                          ->get("tbl_training_course");
        return $query->result(); 

        
    }
 
    public function getPreData($usercode,$test)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_user_code',$usercode)
                          ->get("tbl_training_{$test}_checklist");
        return $query->result(); 

        
    }

    public function getPreDataSum($usercode,$test)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_user_code',$usercode)
                          ->where('f_eva_prefix',$test)
                          ->get("tbl_training_sum");
        return $query->result(); 

        
    }
    



}


