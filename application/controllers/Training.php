<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Training extends CI_Controller {

	public function __construct() {
        parent::__construct();       
		$this->load->library('session');
		$this->load->helper(array('form', 'url'));
    }

	public function index()
	{
		$this->load->helper('url');
        $this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];
		$graphData = $_SESSION['graph']; 

		$getBranch = $this->login_model->getBranch($branch,$rm);
		$data['graph'] = array();// Graph Kang
		
		foreach($getBranch as $rows7=>$value7){
			$sum = array();
			array_push($sum,$value7->f_branch_name_th);
			for($d=0;$d<7;$d++){

				$getDate =  date('Y-m-d',strtotime("-$d days"));
				$getPercent =  $this->data_model->getBranchData($value7->f_branch_code,$getDate,$graphData);

				//$getPercent =  $this->data_model->getBranchData($value7->f_branch_code,$getDate,$default_graph);

				//var_dump($getPercent);die();
				$getfield = "f_".$graphData."_percentage";
				if($getPercent){
					$pc = round($getPercent['0']->$getfield,0);
				}else{
					$pc = 0.1;
				}
				
				
				array_push($sum,$pc);
				array_push($sum,$getDate);
					
				
			}


			array_push($data['graph'],$sum);
		}

		
		$data['arealist'] = $this->data_model->getAreaManager();

		$data['activities'] = $this->data_model->getAreaManager();
        /*
		$iff = 1;
		$getpermittion = $this->user_model->getpermittion($iff);
		$getData = explode(',',$getpermittion[0]->f_sidebar_auth);

		$data['graphLenth'] = 7;
		$data['sidebarPermittion'] = array();
		foreach($getData as $rows){
			array_push($data['sidebarPermittion'],$rows);
		}

		*/
		
		$this->load->view('dashboard', $data);
	

	}

	public function dashboard()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');
		$this->load->model('training_model');

		$usercode = $this->uri->segment(3);
		$data['training'] = $this->training_model->getDataTraining($usercode);

		$data['counttraining'] = $this->training_model->getDataTrainingCount($usercode);
		//
		$TrainingInfo2 = $this->training_model->getDataTrainingGroupBy($usercode);
		

		$data['TrainingInfo'] = array();
		foreach($TrainingInfo2 as $rows=>$value1){
			$name = array();
			$sum = array();
			$y = 0;
				$getTopicName =  $this->training_model->getTopic($value1->f_course_code);
				array_push($name,$getTopicName[$y]->f_course_detail_th);
				array_push($name,$value1->f_datetime);
				$getTrainingData = $this->training_model->getTrainingData($usercode,$value1->f_course_code,$value1->f_datetime); 

			array_push($name,$getTrainingData);
			array_push($data['TrainingInfo'],$name);
			$y++;
		}


    

		//var_dump($data['counttraining']);die();

        
		$this->load->view('dashboard_training',$data);
	}

	
	 public function evaluate()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');
        $this->load->model('training_model');

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];

		//$getBranch = $this->data_model->getBranch($branch,$rm);
		$data['empData'] = array();
		if(in_array(10,$_SESSION['sidebarPermittion'])){
			$data['branchData'] = $this->data_model->getBranchAll();
		}else{
			$data['branchData'] = $this->data_model->getBranch($branch,$rm);
		}
		
		foreach($data['branchData'] as $row1=>$value1){
			$emp = $this->training_model->getEmpData2($value1->f_branch_code);
			
			array_push($data['empData'],$emp);
		}
        $data['allBranch'] = $this->training_model->getMemberUnder($branch);
		$this->load->view('dashboard_evaluate',$data);
	}

	/*	public function evaluate_person()
    {
        $this->load->model('login_model');
        $this->load->model('data_model');
        $this->load->model('user_model');
        $this->load->model('training_model');

        $usercode = $this->uri->segment(3);

        $data['personalInfo'] = $this->training_model->getEvaInfo($usercode);

        $TrainingInfo2    = $this->training_model->getDataTrainingGroupBy($usercode); // group by course/date
        $TrainingInfo     = $this->training_model->getDataTraining($usercode);
        $TrainingSuccess  = $this->training_model->getSuccessTraining($usercode);

        $data['count']   = count($TrainingInfo);
        $data['success'] = count($TrainingSuccess);
        $data['empId']   = $usercode;

        $data['TrainingInfo'] = array();
		
        foreach ($TrainingInfo2 as $row) {
            $courseInfo = $this->training_model->getTopic($row->f_course_code);
            $moduleName = $courseInfo[0]->f_course_detail_th ?? $row->f_course_code;
			
            $details = $this->training_model->getTrainingData($usercode, $row->f_course_code, $row->f_datetime);
			//var_dump($details);die();
            $mappedDetails = array();
            foreach ($details as $item) {
                $mappedDetails[] = array(
                    'f_id'             => $item->FID ?? '',
                    'f_user_code'      => $item->f_user_code ?? '',
                    'f_course_code'    => $item->f_course_code ?? '',
                    'f_datetime'       => $item->f_datetime ?? '',
                    'f_trainer_name'   => $item->f_trainer_name ?? '',
                    'f_cert_approve'   => $item->f_cert_approve ?? '',
                    'f_training_result'=> $item->f_training_result ?? '',
                    'f_comment'        => $item->f_comment ?? '',
                    'f_image'          => $item->f_image ?? '',
                    'f_topic_name'     => $item->f_topic_name ?? '',
                    'f_cert_code'          => 'CERTO01' ?? '',
                    'f_percenttage'     => '87.27%' ?? ''
                );
            }

            $data['TrainingInfo'][] = array(
                'module_name' => $moduleName,
                'date'        => $row->f_datetime,
                'details'     => $mappedDetails
            );
        }

		$data['dupdata'] = '0';

        $data['selecttopic'] = $this->training_model->getSelectTopic2();
        $this->load->view('evaluate', $data);
    }
	*/

	public function evaluate_person()
    {
        $this->load->model('login_model');
        $this->load->model('data_model');
        $this->load->model('user_model');
        $this->load->model('training_model');

        $usercode = $this->uri->segment(3);
		$data['dupdata'] = 0;

        $data['personalInfo'] = $this->training_model->getEvaInfo($usercode);

        $TrainingInfo2    = $this->training_model->getDataTrainingGroupBy($usercode); // group by course/date
        $TrainingInfo     = $this->training_model->getDataTraining($usercode);
        $TrainingSuccess  = $this->training_model->getSuccessTraining($usercode);

        $data['count']    = count($TrainingInfo);
        $data['success']  = 0;
        $data['empId']    = $usercode;

        $userCourseCodes = array();
        foreach ($TrainingInfo2 as $row) {
            $userCourseCodes[] = $row->f_course_code;
        }
        $userCourseCodes = array_unique($userCourseCodes);

        $data['certData'] = $this->training_model->getCertInfoForView($userCourseCodes);
        $data['TrainingInfo'] = array();

        foreach ($TrainingInfo2 as $row) {
            $courseInfo = $this->training_model->getTopic($row->f_course_code);
            $moduleName = $courseInfo[0]->f_course_detail_th ?? $row->f_course_code;

            $details = $this->training_model->getTrainingData($usercode, $row->f_course_code, $row->f_datetime);

            $course_percentage = $this->training_model->calculateBtcPercentage(
                $usercode, 
                $row->f_course_code, 
                $row->f_datetime
            );
			if($course_percentage == '100.00%'){$data['success']++;}
            $mappedDetails = array();
            foreach ($details as $item) {
                $mappedDetails[] = array(
                    'f_id'              => $item->FID ?? '',
                    'f_user_code'       => $item->f_user_code ?? '',
                    'f_course_code'     => $item->f_course_code ?? '',
                    'f_datetime'        => $item->f_datetime ?? '',
                    'f_trainer_name'    => $item->f_trainer_name ?? '',
                    'f_cert_approve'    => $item->f_cert_approve ?? '',
                    'f_training_result' => $item->f_training_result ?? '',
                    'f_comment'         => $item->f_comment ?? '',
                    'f_image'           => $item->f_image ?? '',
                    'f_topic_name'      => $item->f_topic_name ?? '',
                    'f_cert_code'       => $item->f_cert_code ?? '', 
                    'f_percenttage'     => $course_percentage 
                );
            }

            $data['TrainingInfo'][] = array(
                'module_name' => $moduleName,
                'date'        => $row->f_datetime,
                'details'     => $mappedDetails
            );
        }

        $data['selecttopic'] = $this->training_model->getSelectTopic2();
        $data['selectcert'] = $this->training_model->getCert();
        $this->load->view('evaluate', $data);
    }
/*
	 public function evaluate_test()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');
        $this->load->model('training_model');

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];

		$bdata = '';
		$data['empData'] = array();
		$usercode = $data['chkBranch'] = $this->uri->segment(3);
		$cert = $data['chkCert'] =$this->uri->segment(4);
		$bdata = $data['bdata'] =$this->uri->segment(5);
		$test = $data['testCode'] =$this->uri->segment(6);

		if($bdata){
		$data['testData'] = $this->training_model->getTest($cert);
		}

		//var_dump($data['testData']);die();
		
		if((1 < $usercode) && ($usercode < 1000)){
			if(in_array(9,$_SESSION['sidebarPermittion'])){
			$data['branchData'] = $this->data_model->getBranchAll();
			}else{
				$data['branchData'] = $this->data_model->getBranch($branch,$rm);
			}
			$emp = $this->training_model->getEmpData3($usercode,$cert);
			
			array_push($data['empData'],$emp);
		}else{
			if(in_array(9,$_SESSION['sidebarPermittion'])){
			$data['branchData'] = $this->data_model->getBranchAll();
			}else{
				$data['branchData'] = $this->data_model->getBranch($branch,$rm);
			}

			foreach($data['branchData'] as $row1=>$value1){
			$emp = $this->training_model->getEmpData2($value1->f_branch_code);
			
			array_push($data['empData'],$emp);
			}
		}

		//$getBranch = $this->data_model->getBranch($branch,$rm);
		$data['functionData'] = $this->training_model->getFunction();
		
        //$data['allBranch'] = $this->training_model->getMemberUnder($branch);
		$data['certData'] = $this->training_model->getCert();

		if($test){
			$data['getTest'] = $this->training_model->getEvaTest($test);
			$data['getPreData'] = $this->training_model->getPreData($usercode,$test);
			//var_dump($getPreData);die();
		}else{
			$data['getTest'] = '';
			$data['getPreData'] = '';
		}

		

		$this->load->view('evaluate_test',$data);
	}*/
    	public function evaluate_test()
    {
        $this->load->model('login_model');
        $this->load->model('data_model');
        $this->load->model('user_model');
        $this->load->model('training_model');

        $branch = $_SESSION['f_branch_code'];
        $rm = $_SESSION['f_user_code'];

        $bdata = '';
        $data['empData'] = array();
        $usercode = $data['chkBranch'] = $this->uri->segment(3);
        $cert = $data['chkCert'] = $this->uri->segment(4);
        $bdata = $data['bdata'] = $this->uri->segment(5);
        $test = $data['testCode'] = $this->uri->segment(6);

        if($bdata){
            $data['testData'] = $this->training_model->getTest($cert);
        }

        if((1 < $usercode) && ($usercode < 1000)){
            if(in_array(9,$_SESSION['sidebarPermittion'])){
                $data['branchData'] = $this->data_model->getBranchAll();
            }else{
                $data['branchData'] = $this->data_model->getBranch($branch,$rm);
            }
            $emp = $this->training_model->getEmpData3($usercode,$cert);
            array_push($data['empData'],$emp);
        }else{
            if(in_array(9,$_SESSION['sidebarPermittion'])){
                $data['branchData'] = $this->data_model->getBranchAll();
            }else{
                $data['branchData'] = $this->data_model->getBranch($branch,$rm);
            }

            foreach($data['branchData'] as $row1=>$value1){
                $emp = $this->training_model->getEmpData2($value1->f_branch_code);
                array_push($data['empData'],$emp);
            }
        }

        $data['functionData'] = $this->training_model->getFunction();
        $data['certData'] = $this->training_model->getCert();

        if($test){
            $data['getTest'] = $this->training_model->getEvaTest($test);
            $data['getPreData'] = $this->training_model->getPreData($usercode,$test);
        }else{
            $data['getTest'] = '';
            $data['getPreData'] = '';
        }

     // --- ดึงข้อมูลประวัติส่งให้ View ---
        $this->db->where('f_user_code', $usercode);
        $this->db->where('f_eva_prefix', $test);
        $this->db->order_by('f_id', 'DESC');
        $data['getHistory'] = $this->db->get('tbl_history')->result(); 
    // -------------------------------------------    
        $this->load->view('evaluate_test', $data);
    }
/*
public function addtestresult()
    {
        $this->load->model('login_model');
        $this->load->model('data_model');
        $this->load->model('user_model');
        $this->load->model('training_model');

        $branch = $_SESSION['f_branch_code'];
        $rm = $_SESSION['f_user_code'];
        $f_cert_approve = $_SESSION['f_area_name_th'];    

        $f_user_code    = $this->input->post('f_user_code');
        $f_cert_code    = $this->input->post('f_cert_code');
        $f_branch_code  = $this->input->post('f_branch_code');
        $date           = $this->input->post('f_datetime');
        $f_eva_prefix   = $this->input->post('f_eva_prefix');
        $f_sum          = $this->input->post("f_sum");
        $f_total        = $this->input->post("f_total");
        $f_percentage   = $this->input->post("f_percentage");
        $f_id           = $this->input->post("f_id");
        $f_comment      = $this->input->post("f_comment");

        $tbl_topic_detail = "tbl_training_detail";
        $tbl_checklist    = "tbl_training_{$f_eva_prefix}_checklist";
        $tbl_summary      = "tbl_training_sum";

        $this->db->where('f_eva_prefix',$f_eva_prefix)
                 ->order_by('f_id', 'ASC');
        $topics = $this->db->get($tbl_topic_detail)->result_array();
        $topic_count = count($topics);        

        $data_checklist = [
            'f_user_code'    => $f_user_code,
            'f_branch_code'  => $f_branch_code,
            'f_cert_approve' => $f_cert_approve,
            'f_datetime'     => $date
        ];

        for ($i = 1; $i <= $topic_count; $i++) {
            $score = $this->input->post('f_score_' . $i) ?? 0;
            $data_checklist["f_{$f_eva_prefix}_code_" . $i] = strtoupper($f_eva_prefix) . str_pad($i, 2, '0', STR_PAD_LEFT);
            $data_checklist['f_score_' . $i] = $score;
        }
        $data_checklist['f_comment'] = $f_comment.'|';

        if($f_id){
            $last_id = $f_id;
            $this->db->where('f_id', $f_id);
            $this->db->update($tbl_checklist, $data_checklist);
        }else{
            $this->db->insert($tbl_checklist, $data_checklist);
            $last_id = $this->db->insert_id();
        }

		// Start ส่วนที่เพิ่มขึ้นมา
        $this->db->where('f_user_code',$f_user_code);
        $staff = $this->db->get('tbl_training_staff')->row_array();	
		
        $f_user_name_th = $staff['f_name_th'] ?? '';
        $f_user_name_en = $staff['f_name_en'] ?? '';		
		// End
				
        $data_image = [
            'f_checklist_id' => $last_id,
            'f_eva_prefix'   => $f_eva_prefix,
            'f_sum'          => $f_sum,
            'f_total'        => $f_total,
            'f_percentage'   => $f_percentage,
            'f_user_code'    => $f_user_code,
            'f_branch_code'  => $f_branch_code,
            'f_user_name_th' => $f_user_name_th,
            'f_user_name_en' => $f_user_name_en,
        ];

        if($f_id){
            $preSum = $this->training_model->getPreDataSum($f_user_code,$f_eva_prefix);
            $this->db->where('f_sum_id', $preSum[0]->f_sum_id);
            $this->db->update($tbl_summary, $data_image);
        }else{
            $this->db->insert($tbl_summary, $data_image);
        }

        $branch = $_SESSION['f_branch_code'];
        $rm = $_SESSION['f_user_code'];

        $bdata = '';
        $data['empData'] = array();
        $usercode = $data['chkBranch'] = $this->uri->segment(3);
        $cert = $data['chkCert'] = $this->uri->segment(4);
        $bdata = $data['bdata'] = $this->uri->segment(5);
        $test = $data['testCode'] = $this->uri->segment(6);

        if($bdata){
            $data['testData'] = $this->training_model->getTest($cert);
        }

        if((1 < $usercode) && ($usercode < 1000)){
            $data['branchData'] = $this->data_model->getBranch($branch,$rm,$f_cert_approve);
            $emp = $this->training_model->getEmpData2($usercode);
            array_push($data['empData'],$emp);
        }else{
            $data['branchData'] = $this->data_model->getBranch($branch,$rm,$f_cert_approve);
            foreach($data['branchData'] as $row1=>$value1){
                $emp = $this->training_model->getEmpData2($value1->f_branch_code);
                array_push($data['empData'],$emp);
            }
        }

        $data['certData'] = $this->training_model->getCert();
		$data['functionData'] = $this->training_model->getFunction();

        if($test){
            $data['getTest'] = $this->training_model->getEvaTest($test);
        }else{
            $data['getTest'] = '';
        }
		
        $this->load->view('evaluate_test',$data);	

    }

         public function addtestresult()
    {
        $this->load->model('login_model');
        $this->load->model('data_model');
        $this->load->model('user_model');
        $this->load->model('training_model');

        $f_cert_approve = $_SESSION['f_area_name_th'];    

        $f_user_code    = $this->input->post('f_user_code');
        $f_cert_code    = $this->input->post('f_cert_code');
        $f_branch_code  = $this->input->post('f_branch_code');
        $date           = $this->input->post('f_datetime');
        $f_eva_prefix   = $this->input->post('f_eva_prefix');
        $f_sum          = $this->input->post("f_sum");
        $f_total        = $this->input->post("f_total");
        $f_percentage   = $this->input->post("f_percentage");
        $f_id           = $this->input->post("f_id");
        $f_comment      = $this->input->post("f_comment");

        $tbl_topic_detail = "tbl_training_detail";
        $tbl_checklist    = "tbl_training_{$f_eva_prefix}_checklist";
        $tbl_summary      = "tbl_training_sum";

        $this->db->where('f_eva_prefix',$f_eva_prefix)
                 ->order_by('f_id', 'ASC');
        $topics = $this->db->get($tbl_topic_detail)->result_array();
        $topic_count = count($topics);        

        $data_checklist = [
            'f_user_code'    => $f_user_code,
            'f_branch_code'  => $f_branch_code,
            'f_cert_approve' => $f_cert_approve,
            'f_datetime'     => $date
        ];

        $pass_ids = [];
        $fail_ids = [];

        for ($i = 1; $i <= $topic_count; $i++) {
            $score = $this->input->post('f_score_' . $i) ?? 0;
            $data_checklist["f_{$f_eva_prefix}_code_" . $i] = strtoupper($f_eva_prefix) . str_pad($i, 2, '0', STR_PAD_LEFT);
            $data_checklist['f_score_' . $i] = $score;

        // เก็บประวัติว่าข้อไหนผ่าน/ไม่ผ่าน    
            if($score == 1) {
                $pass_ids[] = $i;
            } else {
                $fail_ids[] = $i;
            }
        }
        $data_checklist['f_comment'] = $f_comment.'|';
        
        if($f_id){
            $last_id = $f_id;
            $this->db->where('f_id', $f_id);
            $this->db->update($tbl_checklist, $data_checklist);
        }else{
            $this->db->insert($tbl_checklist, $data_checklist);
            $last_id = $this->db->insert_id();
        }

        $this->db->where('f_user_code',$f_user_code);
        $staff = $this->db->get('tbl_training_staff')->row_array();    
        
        $f_user_name_th = $staff['f_name_th'] ?? '';
        $f_user_name_en = $staff['f_name_en'] ?? '';        
                
        $data_image = [
            'f_checklist_id' => $last_id,
            'f_eva_prefix'   => $f_eva_prefix,
            'f_sum'          => $f_sum,
            'f_total'        => $f_total,
            'f_percentage'   => $f_percentage,
            'f_user_code'    => $f_user_code,
            'f_branch_code'  => $f_branch_code,
            'f_user_name_th' => $f_user_name_th,
            'f_user_name_en' => $f_user_name_en,
            'f_datetime'     => $date
        ];

        if($f_id){
            $preSum = $this->training_model->getPreDataSum($f_user_code,$f_eva_prefix);
            if(!empty($preSum)){
                $this->db->where('f_sum_id', $preSum[0]->f_sum_id);
                $this->db->update($tbl_summary, $data_image);
            }
        }else{
            $this->db->insert($tbl_summary, $data_image);
        }

        // --- ตาราง tbl_history ใน DB ---
        $data_history = [
            'f_user_code'   => $f_user_code,
            'f_eva_prefix'  => $f_eva_prefix,
            'f_cert_code'   => $f_cert_code,
            'f_pass'        => implode(',', $pass_ids),
            'f_fail'        => implode(',', $fail_ids),
            'f_datetime'    => $date,
            'f_percentage'  => $f_percentage,
            'f_comment'     => $f_comment
        ];
        $this->db->insert('tbl_history', $data_history);
        // ----------------------------------------------

        $branch = $_SESSION['f_branch_code'];
        $rm = $_SESSION['f_user_code'];

        $data['empData'] = array();
        $usercode = $data['chkBranch'] = $this->uri->segment(3);
        $cert = $data['chkCert'] = $this->uri->segment(4);
        $bdata = $data['bdata'] = $this->uri->segment(5);
        $test = $data['testCode'] = $this->uri->segment(6);

        if($bdata){
            $data['testData'] = $this->training_model->getTest($cert);
        }

        if((1 < $usercode) && ($usercode < 1000)){
            $data['branchData'] = $this->data_model->getBranch($branch,$rm,$f_cert_approve);
            $emp = $this->training_model->getEmpData2($usercode);
            array_push($data['empData'],$emp);
        }else{
            $data['branchData'] = $this->data_model->getBranch($branch,$rm,$f_cert_approve);
            foreach($data['branchData'] as $row1=>$value1){
                $emp = $this->training_model->getEmpData2($value1->f_branch_code);
                array_push($data['empData'],$emp);
            }
        }

        $data['certData'] = $this->training_model->getCert();
        $data['functionData'] = $this->training_model->getFunction();

        if($test){
            $data['getTest'] = $this->training_model->getEvaTest($test);
            $data['getPreData'] = $this->training_model->getPreData($f_user_code,$test);
        }else{
            $data['getTest'] = '';
            $data['getPreData'] = '';
        }
        
        // --- ดึงข้อมูลประวัติส่งให้ View  ---
        $this->db->where('f_user_code', $f_user_code);
        $this->db->order_by('f_id', 'DESC');
        $data['getHistory'] = $this->db->get('tbl_history')->result(); 
        // ------------------------------------------------------------
        
        $this->load->view('evaluate_test', $data);   

    }
        */

    public function addtestresult()
{
    $this->load->model(['login_model','data_model','user_model','training_model']);

    $data = [
        'getTest'    => [],
        'getPreData' => [],
        'getHistory' => [],
        'empData'    => []
    ];

    $f_cert_approve = $_SESSION['f_area_name_th'] ?? '';

    $f_user_code   = $this->input->post('f_user_code');
    $f_cert_code   = $this->input->post('f_cert_code');
    $f_branch_code = $this->input->post('f_branch_code');
    $date          = $this->input->post('f_datetime');
    $f_eva_prefix  = $this->input->post('f_eva_prefix');
    $f_sum         = $this->input->post('f_sum');
    $f_total       = $this->input->post('f_total');
    $f_percentage  = $this->input->post('f_percentage');
    $f_id          = $this->input->post('f_id');
    $f_comment     = $this->input->post('f_comment');

    $tbl_checklist = "tbl_training_{$f_eva_prefix}_checklist";

    $topic_count = $this->db
        ->where('f_eva_prefix',$f_eva_prefix)
        ->count_all_results('tbl_training_detail');

    $data_checklist = [
        'f_user_code'    => $f_user_code,
        'f_branch_code'  => $f_branch_code,
        'f_cert_approve' => $f_cert_approve,
        'f_datetime'     => $date,
        'f_comment'      => $f_comment.'|'
    ];

    $pass_ids = $fail_ids = $na_ids = [];
    $comment_array = [];

    for ($i = 1; $i <= $topic_count; $i++) {

        $score = (int)$this->input->post("f_score_$i");
        if(!$score) $score = 3;

        $comment = $this->input->post("f_comment_$i");

        $data_checklist["f_{$f_eva_prefix}_code_$i"] =
            strtoupper($f_eva_prefix) . str_pad($i, 2, '0', STR_PAD_LEFT);

        $data_checklist["f_score_$i"]   = $score;
        $data_checklist["f_comment_$i"] = $comment;

        if ($comment) $comment_array[] = 'ข้อ'.$i.':'.$comment;
        if ($score == 1) $pass_ids[] = $i;
        if ($score == 2) $fail_ids[] = $i;
        if ($score == 3) $na_ids[]   = $i;
    }

    if($f_id){
        $this->db->where('f_id',$f_id)->update($tbl_checklist,$data_checklist);
        $last_id = $f_id;
    } else {
        $this->db->insert($tbl_checklist,$data_checklist);
        $last_id = $this->db->insert_id();
    }

    $combined_comment = implode('<br>', $comment_array);

    $staff = $this->db
        ->where('f_user_code',$f_user_code)
        ->get('tbl_training_staff')
        ->row_array();

    $data_summary = [
        'f_checklist_id' => $last_id,
        'f_eva_prefix'   => $f_eva_prefix,
        'f_sum'          => $f_sum,
        'f_total'        => $f_total,
        'f_percentage'   => $f_percentage,
        'f_user_code'    => $f_user_code,
        'f_branch_code'  => $f_branch_code,
        'f_user_name_th' => $staff['f_name_th'] ?? '',
        'f_user_name_en' => $staff['f_name_en'] ?? '',
        'f_datetime'     => $date
    ];

    if($f_id){
        $pre = $this->training_model->getPreDataSum($f_user_code,$f_eva_prefix);
        if($pre){
            $this->db->where('f_sum_id',$pre[0]->f_sum_id)
                     ->update('tbl_training_sum',$data_summary);
        }
    } else {
        $this->db->insert('tbl_training_sum',$data_summary);
    }

    $this->db->insert('tbl_history',[
        'f_user_code'  => $f_user_code,
        'f_eva_prefix' => $f_eva_prefix,
        'f_cert_code'  => $f_cert_code,
        'f_pass'       => implode(',', $pass_ids),
        'f_fail'       => implode(',', $fail_ids),
        'f_na'         => implode(',', $na_ids),
        'f_datetime'   => $date,
        'f_percentage' => $f_percentage,
        'f_comment'    => $combined_comment
    ]);

    $branch = $_SESSION['f_branch_code'] ?? '';
    $rm     = $_SESSION['f_user_code'] ?? '';

    $data['branchData']   = $this->data_model->getBranch($branch,$rm,$f_cert_approve);
    $data['certData']     = $this->training_model->getCert();
    $data['functionData'] = $this->training_model->getFunction();
    $data['getHistory']   = $this->db
        ->where('f_user_code',$f_user_code)
        ->order_by('f_id','DESC')
        ->get('tbl_history')
        ->result();

    $this->load->view('evaluate_test',$data);
}

	public function addtraining()
	{
		$this->load->model('training_model');
		$this->load->model('data_model');
		$data = [];
		$employeeId      = $this->uri->segment(3);
		$selectedTopicId = $this->input->post('f_topic_id');		
		$trainingDate    = $this->input->post('f_datetime');
		$trainerName     = $this->input->post('f_trainer_name');
		$certApprove     = $this->input->post('f_cert_approve');
        $date           = $this->input->post('f_datetime');

		$checkDupCourse = $this->training_model->checkDupCourse($employeeId,$selectedTopicId);
		if (empty($checkDupCourse)){ 
			$data['123'] = '0';		
			$topicDetails = $this->training_model->getTopicData($selectedTopicId);		
			if (!empty($topicDetails)) {
				foreach ($topicDetails as $topicItem) {
					$this->training_model->addTraining(
						$employeeId,
						$topicItem->f_course_code,
						$topicItem->f_topic_code,
						$topicItem->f_function_code,
						$trainingDate,
						$trainerName,
						$certApprove
					);
				}
			}
		$data['dupdata'] = 0;
		}else{
			$data['dupdata'] = 1;	
		}
		
		 $data['personalInfo'] = $this->training_model->getEvaInfo($employeeId);

        $TrainingInfo2    = $this->training_model->getDataTrainingGroupBy($employeeId); // group by course/date
        $TrainingInfo     = $this->training_model->getDataTraining($employeeId);
        $TrainingSuccess  = $this->training_model->getSuccessTraining($employeeId);

        $data['count']    = count($TrainingInfo);
        $data['success']  = 0;
        $data['empId']    = $employeeId;

        $userCourseCodes = array();
        foreach ($TrainingInfo2 as $row) {
            $userCourseCodes[] = $row->f_course_code;
        }
        $userCourseCodes = array_unique($userCourseCodes);

        $data['certData'] = $this->training_model->getCertInfoForView($userCourseCodes);
        $data['TrainingInfo'] = array();

        foreach ($TrainingInfo2 as $row) {
            $courseInfo = $this->training_model->getTopic($row->f_course_code);
            $moduleName = $courseInfo[0]->f_course_detail_th ?? $row->f_course_code;

            $details = $this->training_model->getTrainingData($employeeId, $row->f_course_code, $row->f_datetime);

            $course_percentage = $this->training_model->calculateBtcPercentage(
                $employeeId, 
                $row->f_course_code, 
                $row->f_datetime
            );
			if($course_percentage == '100.00%'){$data['success']++;}
            $mappedDetails = array();
            foreach ($details as $item) {
                $mappedDetails[] = array(
                    'f_id'              => $item->FID ?? '',
                    'f_user_code'       => $item->f_user_code ?? '',
                    'f_course_code'     => $item->f_course_code ?? '',
                    'f_datetime'        => $item->f_datetime ?? '',
                    'f_trainer_name'    => $item->f_trainer_name ?? '',
                    'f_cert_approve'    => $item->f_cert_approve ?? '',
                    'f_training_result' => $item->f_training_result ?? '',
                    'f_comment'         => $item->f_comment ?? '',
                    'f_image'           => $item->f_image ?? '',
                    'f_topic_name'      => $item->f_topic_name ?? '',
                    'f_cert_code'       => $item->f_cert_code ?? '', 
                    'f_percenttage'     => $course_percentage,
                    'f_datetime'        => $date 
                );
            }

            $data['TrainingInfo'][] = array(
                'module_name' => $moduleName,
                'date'        => $row->f_datetime,
                'details'     => $mappedDetails
            );
        }

        $data['selecttopic'] = $this->training_model->getSelectTopic2();
        $data['selectcert'] = $this->training_model->getCert();
        
		$this->load->view('evaluate', $data);
	}
	/*

	public function addtraining()
	{
		 $this->load->model('training_model');

		// var_dump($this->input->post());die();
    $employeeId      = $this->uri->segment(3);
    $selectedTopicId = $this->input->post('f_topic_id');
    $trainingDate    = $this->input->post('f_datetime');

    $topicDetails = $this->training_model->getTopicData($selectedTopicId);
    if (!empty($topicDetails)) {
        foreach ($topicDetails as $topicItem) {
            $this->training_model->addTraining(
                $employeeId,
                $topicItem->f_course_code,
                $topicItem->f_topic_code,
                $topicItem->f_function_code,
                $trainingDate
            );
        }
    }

    $data = [];
    $data['personalInfo'] = $this->training_model->getEvaInfo($employeeId);

    $groupedTrainings   = $this->training_model->getDataTrainingGroupBy($employeeId);
    $allTrainings       = $this->training_model->getDataTraining($employeeId);
    $completedTrainings = $this->training_model->getSuccessTraining($employeeId);

    $data['count']   = count($allTrainings);
    $data['success'] = count($completedTrainings);
    $data['empId']   = $employeeId;

    $data['TrainingInfo'] = [];

    foreach ($groupedTrainings as $groupedItem) {
        $courseDetails = $this->training_model->getTopic($groupedItem->f_course_code);
        $moduleName    = $courseDetails[0]->f_course_detail_th ?? $groupedItem->f_course_code;
        $date          = $groupedItem->f_datetime;

        $trainingList = $this->training_model->getTrainingData(
            $employeeId,
            $groupedItem->f_course_code,
            $groupedItem->f_datetime
        );

        $details = [];
        if (!empty($trainingList)) {
            foreach ($trainingList as $item) {
                $details[] = [
                    'f_id'              => $item->FID ?? '',
                    'f_user_code'       => $item->f_user_code ?? '',
                    'f_course_code'     => $item->f_course_code ?? '',
                    'f_datetime'        => $item->f_datetime ?? '',
                    'f_trainer_name'    => $item->f_trainer_name ?? '',
                    'f_cert_approve'    => $item->f_cert_approve ?? '',
                    'f_training_result' => $item->f_training_result ?? '',
                    'f_comment'         => $item->f_comment ?? '',
                    'f_image'           => $item->f_image ?? '',
                    'f_topic_name'      => $item->f_topic_name ?? ''
                ];
            }
        }

        $data['TrainingInfo'][] = [
            'module_name' => $moduleName,
            'date'        => $date,
            'details'     => $details
        ];
    }

    $data['selecttopic'] = $this->training_model->getSelectTopic2();
	//var_dump($data['TrainingInfo']);
	
		
		$this->load->view('evaluate', $data);
	}*/

	 public function course()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');
        $this->load->model('training_model');

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];

		//$getBranch = $this->data_model->getBranch($branch,$rm);
		$data['empData'] = array();
		$data['certData'] = $this->training_model->getCert();
		

		
		foreach($data['certData'] as $row1=>$value1){
			$sum = array();
			$emp = $this->training_model->getCourseName($value1->f_cert_code);

			array_push($sum,$value1);
			array_push($sum,$emp);
			
			//array_push($data['empData'],$sum);
		
			
			//array_push($data['empData'],$sum);
			array_push($data['empData'],$sum);
		}
      //  $data['allBranch'] = $this->training_model->getMemberUnder($branch);
		$this->load->view('course',$data);
	}
	
	
	    public function addresult()
    {
           $this->load->model('Training_model');

    $usercode        = $this->uri->segment(3); // รหัสพนักงาน
    $f_trainer_name  = $this->input->post('f_trainer_name');
    $f_cert_approve  = $this->input->post('f_cert_approve');
    $post_keys       = array_keys($this->input->post());

    foreach ($post_keys as $key) {
        $split = explode('|', $key);
        if (count($split) > 1) {
            $field = $split[0];
            $fid   = $split[1];
            $value = $this->input->post($key);

            $data = [
                $field            => $value,
                'f_trainer_name'  => $f_trainer_name,
                'f_cert_approve'  => $f_cert_approve
            ];

            $file_field = 'f_image|' . $fid;
            if (!empty($_FILES[$file_field]['name'])) {
                $ext      = pathinfo($_FILES[$file_field]['name'], PATHINFO_EXTENSION);
                $filename = time() . '_' . $fid . '.' . $ext;
                move_uploaded_file($_FILES[$file_field]['tmp_name'], 'img/training/' . $filename);
                $data['f_image'] = $filename;
            }

            $this->Training_model->updateResultByFID($fid, $data);
        }
    }

    $data['personalInfo']   = $this->Training_model->getEvaInfo($usercode);
    $TrainingInfo2          = $this->Training_model->getDataTrainingGroupBy($usercode);
    $TrainingInfo           = $this->Training_model->getDataTraining($usercode);
    $TrainingSuccess        = $this->Training_model->getSuccessTraining($usercode);

    $data['count']          = count($TrainingInfo);
    $data['success']        = count($TrainingSuccess);
    $data['empId']          = $usercode;

    $data['TrainingInfo'] = [];
    foreach ($TrainingInfo2 as $value1) {
        $getTopicName = $this->Training_model->getTopic($value1->f_course_code);
        $moduleName   = isset($getTopicName[0]->f_course_detail_th) ? $getTopicName[0]->f_course_detail_th : $value1->f_course_code;
        $date         = $value1->f_datetime;

        $getTrainingData = $this->Training_model->getTrainingData(
            $usercode,
            $value1->f_course_code,
            $value1->f_datetime
        );

        $details = [];
        if ($getTrainingData) {
            foreach ($getTrainingData as $item) {
                $details[] = [
					'f_id'              => $item->FID ?? '',
					'f_user_code'		=> $item->f_user_code ?? '',
					'f_course_code'		=> $item->f_course_code ?? '',					
					'f_datetime'		=> $item->f_datetime ?? '',
					'f_trainer_name'	=> $item->f_trainer_name ?? '',
					'f_cert_approve'	=> $item->f_cert_approve ?? '',
					'f_training_result' => $item->f_training_result ?? '',
					'f_comment'         => $item->f_comment ?? '',
                    'f_image'           => $item->f_image ?? '',
                    'f_topic_name'      => $item->f_topic_name ?? ''
                ];
            }
        }

        $data['TrainingInfo'][] = [
            'module_name' => $moduleName,
            'date'        => $date,
            'details'     => $details
        ];
    }

    $data['selecttopic'] = $this->Training_model->getSelectTopic2();
    $data['selectcert'] = $this->training_model->getCert();	
    //var_dump($data['TrainingInfo']);
	
    $this->load->view('evaluate', $data);
    }

	
	
}