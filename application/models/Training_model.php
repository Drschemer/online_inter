<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Training_model extends CI_Model {

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
                          ->where('f_status',1)
                           ->get("tbl_training_staff");
        return $query->result();  
        
    }

    public function getEmpData3($value1,$value2)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_branch_code',$value1)
                          ->where('f_function_code',$value2)
                          ->where('f_status',1)
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

        $query = $this->db->select('tbl_training_result.f_id as FID,tbl_training_result.f_user_code,tbl_training_result.f_course_code,tbl_training_result.f_datetime,tbl_training_result.f_trainer_name,tbl_training_result.f_cert_approve,tbl_training_result.f_training_result,tbl_training_result.f_comment,tbl_training_result.f_image,tbl_training_topic.f_topic_name,tbl_training_course.f_cert_code')
                          ->order_by('f_datetime','DESC')
                          ->join('tbl_training_topic', 'tbl_training_topic.f_topic_code = tbl_training_result.f_topic_code', 'left')
                          ->join('tbl_training_course', 'tbl_training_course.f_course_code = tbl_training_result.f_course_code', 'left')
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
                          ->where('f_status',1)
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
    
    public function addTraining($usercode,$data1,$data2,$data3,$f_training_date,$trainerName,$certApprove)
    {
        $this->load->helper('url');

        $data = array(
        'f_user_code' => $usercode,    
        'f_course_code' => $data1,
        'f_topic_code' => $data2,
        'f_function_code' => $data3,
        'f_datetime' => $f_training_date,
		'f_trainer_name' => $trainerName,
        'f_cert_approve' => $certApprove,
			
        );


        $this->db->insert('tbl_training_result', $data);
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

    public function getFunction()
    {
        $this->load->helper('url');

        
        $query = $this->db->get('tbl_training_function');
        
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

    public function getCourseInfo($a)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_course_code',$a)
                          ->get("tbl_training_course");
        return $query->result();  
        
    }

    public function getSumData($usercode)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_user_code',$usercode)
                          ->get("tbl_training_sum");
        return $query->result(); 

        
    }

     public function certData($test)
    {
        $this->load->helper('url');

        $this->db->distinct();
        $this->db->select('tbl_training_cert.f_cert_detail_th,tbl_training_detail.f_eva_prefix');
        $this->db->from('tbl_training_cert');
        $this->db->join(
            'tbl_training_detail', 
            'tbl_training_cert.f_cert_code = tbl_training_detail.f_cert_code'
        );
        $this->db->where_in('tbl_training_detail.f_eva_prefix', $test);
        $query = $this->db->get();
        
        return $query->result(); 
        
    }

     public function dataCert($test)
    {
        $this->load->helper('url');

        $this->db->distinct();
        $this->db->select('tbl_training_cert.f_cert_detail_th,tbl_training_detail.f_eva_prefix');
        $this->db->from('tbl_training_detail');
        $this->db->join(
            'tbl_training_cert', 
            'tbl_training_cert.f_cert_code = tbl_training_detail.f_cert_code'
        );
        $this->db->where('tbl_training_cert.f_cert_code', $test);
        $query = $this->db->get();
        
        return $query->result(); 
        
    }

    
    public function getSumDataByPrefix($test)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_eva_prefix',$test)
                          ->order_by('f_branch_code','ASC')
                          ->get("tbl_training_sum");
        return $query->result(); 

        
    }

    public function exportReportByCert(array $certCodes)
    {
        $this->db->select('tc.f_cert_detail_th, tsum.f_datetime, tsum.f_percentage, ts.f_user_code, ts.f_name_th, ts.f_name_en, ts.f_position, ts.f_branch_name');
        $this->db->from('tbl_training_staff ts');
        $this->db->join('tbl_training_sum tsum', 'tsum.f_user_code = ts.f_user_code', 'inner'); 
        $this->db->join('tbl_training_detail td', 'td.f_eva_prefix = tsum.f_eva_prefix', 'inner');
        $this->db->join('tbl_training_cert tc', 'tc.f_cert_code = td.f_cert_code', 'inner');              

        $this->db->where_in('td.f_cert_code', $certCodes); 
        $this->db->distinct();

        $query = $this->db->get();
        return $query->result();
    }   

    public function exportReportByStaff($staffCode)
    {
        $this->db->select('tc.f_cert_detail_th, tsum.f_datetime, tsum.f_percentage, tstaff.f_user_code, tstaff.f_name_th, tstaff.f_name_en, tstaff.f_position, tstaff.f_branch_name');
        $this->db->from('tbl_training_staff tstaff');
        $this->db->join('tbl_training_sum tsum', 'tsum.f_user_code = tstaff.f_user_code', 'inner');
        $this->db->join('tbl_training_detail td', 'td.f_eva_prefix = tsum.f_eva_prefix', 'inner');
        $this->db->join('tbl_training_cert tc', 'tc.f_cert_code = td.f_cert_code', 'inner');

        $this->db->where('tstaff.f_user_code', $staffCode);
        $this->db->distinct();

        $query = $this->db->get();
        return $query->result();
    }

    public function Request1($usercode)
    {
        $this->load->helper('url');

        $this->db->select('DISTINCT (f_course_code)');
        $this->db->from('tbl_training_result');
        $this->db->where('f_user_code',$usercode);
        $query = $this->db->get();
        
        return $query->result();  
        
    }

    public function getCertDisplay($data)
    {
        $this->load->helper('url');

        $this->db->select('tbl_training_course.f_cert_code,tbl_training_cert.f_cert_detail_th,tbl_training_cert.f_cert_detail_en');
        $this->db->from('tbl_training_course');
        $this->db->join(
            'tbl_training_cert', 
            'tbl_training_cert.f_cert_code = tbl_training_course.f_cert_code'
        );
        $this->db->where('tbl_training_course.f_course_code', $data);
        $query = $this->db->get();
        return $query->result(); 
    }

    public function getDataScore($test)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_course_code',$test)
                          //->order_by('f_branch_code','ASC')
                          ->get("tbl_training_detail");
        return $query->result(); 
    }
    
    public function getScoreFromChecklist($cal,$usercode)
    {
        $this->load->helper('url');

        $query = $this->db->where('f_user_code',$usercode)
                          ->get("tbl_training_{$cal}_checklist");
        return $query->result(); 
    }
    

	
   

/*public function getCertInfoForView()
{
    $this->db->select('f_cert_code, f_cert_detail_th');
    $this->db->from('tbl_training_cert');
    $query = $this->db->get();
    
    $cert_array = [];
    foreach ($query->result() as $row) {
        $cert_string = $row->f_cert_code . '-' . ($row->f_cert_detail_th ?? 'N/A');
        $cert_array[] = $cert_string;
    }
    
    return $cert_array; 
}*/

		
	

/*
public function getCertInfoForView()
{
    $this->db->select('f_cert_code, f_cert_detail_th, f_cert_detail_en');
    $this->db->from('tbl_training_cert');
    $query = $this->db->get();
    
    return $query->result(); 
}*/

    public function getCertInfoForView($courseCodes)
    {
        if (empty($courseCodes)) {
            return array();
        }

        $this->db->select('T1.f_cert_code, T2.f_cert_detail_th,T1.f_eva_prefix');
        $this->db->from('tbl_training_detail T1');
        $this->db->join('tbl_training_cert T2', 'T1.f_cert_code = T2.f_cert_code', 'left');
        $this->db->where_in('T1.f_course_code', $courseCodes);
        $this->db->distinct();
        $query = $this->db->get();

        $cert_strings = [];
        foreach ($query->result() as $cert) {
            $cert_strings[] = $cert->f_cert_code . '-' . ($cert->f_cert_detail_th ?? $cert->f_cert_code).'|'.$cert->f_eva_prefix;
        }

        return $cert_strings; 
    }

     public function calculateBtcPercentage($usercode, $course_code, $datetime = null)
    {
        $score_map = [
            'PBBO01' => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
            'PBBO02' => [13, 14, 15],
            'PBBO03' => [16, 17, 18, 29],
            'PBBO04' => [19, 20, 21, 22],
            'PBBO05' => [23, 24, 25, 26],
            'PBBO06' => [27, 28],
			
            'AKG101' => [1, 2, 3, 4, 5],
            'AKG102' => [6, 7, 8, 9, 10],
            'AKG103' => [11, 12, 13, 14, 15],
			
            'PBH01' => [1, 2, 3, 4, 5, 6],
            'PBH02' => [7, 8, 9, 10],	
            
			'NRG001' => [1, 2, 3, 4, 5, 6],           
			'NRG002' => [7, 8, 9, 10, 11, 12],         
			'NRG003' => [1, 2],                       
			'NRG004' => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],			
			'NRG005' => [1, 2, 3, 4],
			'NRG006' => [1, 2, 3, 4],
			'NRG007' => [1, 2, 3],
			'NRG008' => [1, 2, 3],
			'NRG009' => [1, 2],
			'NRG010' => [1, 2, 3, 4],
			'NRG011' => [1, 2],

          	'NKK101' => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
            'NKK102' => [13, 14, 15, 16, 17, 18, 19, 20, 21, 22],
            'NKK103' => [23, 24, 25, 26, 27, 28, 29, 30, 31],
            'NKK104' => [32, 33, 34, 35, 36, 37, 38, 39],
            'NKK105' => [40, 41, 42, 43, 44, 45, 46, 47, 48],
        ];

        if (!isset($score_map[$course_code])) {
            return '0.00%';
        }
        
        $nrg_to_svt_map = [
            'NRG001' => 'svt01', 
			'NRG002' => 'svt01', 
			'NRG003' => 'svt02', 
            'NRG004' => 'svt03', 
			'NRG005' => 'svt04', 
			'NRG006' => 'svt05',
            'NRG007' => 'svt06', 
			'NRG008' => 'svt07', 
			'NRG009' => 'svt08',
            'NRG010' => 'svt09', 
			'NRG011' => 'svt10',
        ];

        $prefix = substr($course_code, 0, 3);
        $table_type = 'btc';

        if ($prefix === 'AKG') {
        $table_type = 'tak01';
        } elseif ($prefix === 'NRG') {
            $table_type = $nrg_to_svt_map[$course_code] ?? 'svt01'; 
        } elseif ($prefix === 'PBH') {
            $table_type = 'bt02';
        } elseif ($prefix === 'NKK') {
            $table_type = 'nkkc1';
        }  		
			
        
        $checklist_table = 'tbl_training_' . $table_type . '_checklist';

        $score_indices = $score_map[$course_code];
        $max_score = count($score_indices); 

        $select_fields = array_map(function($i) {
            return 'f_score_' . $i;
        }, $score_indices);
        
        $this->db->select($select_fields);	
        $this->db->where('f_user_code', $usercode);

        $this->db->order_by('f_datetime', 'DESC');
        $this->db->limit(1);

        $checklist_query = $this->db->get($checklist_table);	
        $checklist_record = $checklist_query->row();
        
        if (empty($checklist_record)) {
            return '0.00%';
        }

        $user_score = 0;

        foreach ($score_indices as $i) {
            $score_field = 'f_score_' . $i;
            
            $score = $checklist_record->$score_field ?? 0;
            
            if ((int)$score === 1) {
                $user_score += 1;
            }
        }
		
        if ($max_score == 0) {
            return '0.00%';
        }

        $percentage = ($user_score / $max_score) * 100;
        return number_format($percentage, 2) . '%';	
    }
/*
        public function calculateBtcPercentage($usercode, $course_code, $datetime = null)
    {
        $score_map = [
            'PBBO01' => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
            'PBBO02' => [13, 14, 15],
            'PBBO03' => [16, 17, 18, 29],
            'PBBO04' => [19, 20, 21, 22],
            'PBBO05' => [23, 24, 25, 26],
            'PBBO06' => [27, 28],
			
            'AKG101' => [1, 2, 3, 4, 5],
            'AKG102' => [6, 7, 8, 9, 10],
            'AKG103' => [11, 12, 13, 14, 15],
			
            'PBH01' => [1, 2, 3, 4, 5, 6],
            'PBH02' => [7, 8, 9, 10],	
            
			'NRG001' => [1, 2, 3, 4, 5, 6],           
			'NRG002' => [7, 8, 9, 10, 11, 12],         
			'NRG003' => [1, 2],                       
			'NRG004' => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],			
			'NRG005' => [1, 2, 3, 4],
			'NRG006' => [1, 2, 3, 4],
			'NRG007' => [1, 2, 3],
			'NRG008' => [1, 2, 3],
			'NRG009' => [1, 2],
			'NRG010' => [1, 2, 3, 4],
			'NRG011' => [1, 2],

          	'NKK101' => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
            'NKK102' => [13, 14, 15, 16, 17, 18, 19, 20, 21, 22],
            'NKK103' => [23, 24, 25, 26, 27, 28, 29, 30, 31],
            'NKK104' => [32, 33, 34, 35, 36, 37, 38, 39],
            'NKK105' => [40, 41, 42, 43, 44, 45, 46, 47, 48],
        ];

        if (!isset($score_map[$course_code])) {
            return '0.00%';
        }
        
        $nrg_to_svt_map = [
            'NRG001' => 'svt01', 
			'NRG002' => 'svt01', 
			'NRG003' => 'svt02', 
            'NRG004' => 'svt03', 
			'NRG005' => 'svt04', 
			'NRG006' => 'svt05',
            'NRG007' => 'svt06', 
			'NRG008' => 'svt07', 
			'NRG009' => 'svt08',
            'NRG010' => 'svt09', 
			'NRG011' => 'svt10',
        ];

        $prefix = substr($course_code, 0, 3);
        $table_type = 'btc';

        if ($prefix === 'AKG') {
        $table_type = 'tak01';
        } elseif ($prefix === 'NRG') {
            $table_type = $nrg_to_svt_map[$course_code] ?? 'svt01'; 
        } elseif ($prefix === 'PBH') {
            $table_type = 'bt02';
        } elseif ($prefix === 'NKK') {
            $table_type = 'nkkc1';
        }  		
			
        
        $checklist_table = 'tbl_training_' . $table_type . '_checklist';

        $score_indices = $score_map[$course_code];
        $max_score = count($score_indices); 

        $select_fields = array_map(function($i) {
            return 'f_score_' . $i;
        }, $score_indices);
        
        $this->db->select($select_fields);	
        $this->db->where('f_user_code', $usercode);

        $this->db->order_by('f_datetime', 'DESC');
        $this->db->limit(1);

        $checklist_query = $this->db->get($checklist_table);	
        $checklist_record = $checklist_query->row();
        
        if (empty($checklist_record)) {
            return '0.00%';
        }

        $user_score = 0;

        foreach ($score_indices as $i) {
            $score_field = 'f_score_' . $i;
            
            $score = $checklist_record->$score_field ?? 0;
            
            if ((int)$score === 1) {
                $user_score += 1;
            }
        }
		
        if ($max_score == 0) {
            return '0.00%';
        }

        $percentage = ($user_score / $max_score) * 100;
        return number_format($percentage, 2) . '%';	
    }
*/
public function checkDupCourse($test,$test2)
{
    $this->load->helper('url');

        $query = $this->db->where('f_user_code',$test)
                          ->where('f_course_code',$test2)
                          ->get("tbl_training_result");
        return $query->result(); 
}

 public function getCourseSelect($data)
    {
        $this->load->helper('url');

        $query = $this->db->select('f_course_code,f_course_detail_th')
                          ->where('f_cert_code',$data)
                          ->get("tbl_training_course");
        return $query->result(); 

        
    }
	


}

