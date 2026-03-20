<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

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

        
		$this->load->view('dashboard_training',$data);
	}

	public function up()
    {
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');
		$this->load->model('training_model');
		$this->load->model('admin_model');
        $this->load->dbforge();

		//var_dump($this->input->post());die();

		$prefix = $this->input->post('prefix');
		$getData = $this->input->post('myTextField');
		//create_sum
        $fields = array(
            "f_sum_id" => array(
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ),
            "f_{$prefix}_id" => array(
                'type' => 'INT',
                'constraint' => '10',
            ),
			 "f_{$prefix}_sum" => array(
                'type' => 'INT',
                'constraint' => '10',
            ),
			 "f_{$prefix}_total" => array(
                'type' => 'INT',
                'constraint' => '10',
            ),
			 "f_{$prefix}_percentage" => array(
                'type' => 'DECIMAL',
                'constraint' => '10,2',
            ),
            'f_user_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_user_name_th' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
            ),
			'f_user_name_en' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
            ),
			'f_branch_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_branch_name_en' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
            ),
            'f_datetime' => array(
                'type' => 'DATETIME',
                'null' => TRUE,
            ),
			'f_area_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
        );

        $this->dbforge->add_field($fields);
        $this->dbforge->add_key('f_sum_id', TRUE);
        $this->dbforge->create_table("tbl_sum_$prefix", TRUE);
		$o = 1;
		//create_checklist
        $fieldsChecklist = array(
            "f_id" => array(
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ),
			 'f_user_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_branch_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_area_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			 'f_datetime' => array(
                'type' => 'DATETIME',
                'null' => TRUE,
			 ));
			 $this->dbforge->add_field($fieldsChecklist);

			foreach($getData as $data){
			  $sct = array(
            
			"f_topic_code_$o" => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			"f_score_$o" => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			"f_comment_$o" => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ));
			$this->dbforge->add_field($sct);
			$sct = [];
			$o++;}
      //  );

        
        $this->dbforge->add_key('f_id', TRUE);
        $this->dbforge->create_table("tbl_{$prefix}_checklist", TRUE);

		//create_img
		$k = 1;
        $fieldsImg = array(
            "f_image_id" => array(
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ),
			 'f_id' => array(
               'type' => 'INT',
                'constraint' => 10,
            ),
			'f_user_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_branch_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			 'f_datetime' => array(
                'type' => 'DATETIME',
                'null' => TRUE,
			 ));
			 $this->dbforge->add_field($fieldsImg);

			foreach($getData as $data){
			  $ti = array(
            
			"f_topic_code_$k" => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			"f_image_path_$k" => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ));
			$this->dbforge->add_field($ti);
			$ti = [];
			$k++;}
      //  );

        
        $this->dbforge->add_key('f_image_id', TRUE);
        $this->dbforge->create_table("tbl_{$prefix}_image", TRUE);

		//create_topic
		$r = 1;
        $fieldsTopic = array(
            "f_topic_id" => array(
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ),
			 'f_catagory_code' => array(
               'type' => 'INT',
                'constraint' => 10,
            ),
			'f_topic_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_topic_detail_th' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			 'f_topic_detail_en' => array(
                'type' => 'DATETIME',
                'null' => TRUE,
			 ),
			'f_topic_status' => array(
                'type' => 'INT',
                'constraint' => '2',
            ));
			 $this->dbforge->add_field($fieldsTopic);

			
      //  );

        
        $this->dbforge->add_key('f_topic_id', TRUE);
        $this->dbforge->create_table("tbl_{$prefix}_topic_detail", TRUE);

		$this->admin_model->addTopic($prefix,$getData);



    }

	public function addcert()
	{        
        $f_cert_code    = $this->input->post('f_cert_code');
        $f_cert_detail_th  = $this->input->post('f_cert_detail_th');
        $f_cert_detail_en         = $this->input->post('f_cert_detail_en');
        
        $data_checklist = [
            'f_cert_code'   => $f_cert_code,
            'f_cert_detail_th' => $f_cert_detail_th,
            'f_status'   => '1',
            'f_cert_detail_en'    => $f_cert_detail_en
        ];


        $this->db->insert('tbl_training_cert', $data_checklist);
       

		$this->load->view('cms');

	}

	public function addcourse()
	{        
        $f_cert_code    = $this->input->post('f_cert_code');
		$f_course_code    = $this->input->post('f_course_code');
        $f_course_detail_th  = $this->input->post('f_course_detail_th');
        $f_course_detail_en         = $this->input->post('f_course_detail_en');
        
        $data_checklist = [
            'f_cert_code'   => $f_cert_code,
            'f_course_detail_th' => $f_course_detail_th,
			'f_course_detail_en' => $f_course_detail_en,
            'f_status'   => '1',
            'f_course_code'    => $f_course_code
        ];


        $this->db->insert('tbl_training_course', $data_checklist);
       

		$this->load->view('cms');

	}

	public function addtopic()
	{        
		

		$this->load->model('Training_model');

        $f_function_code    = $this->input->post('f_function_code');
		$f_course_code    = $this->input->post('f_course_code');
        $f_course_detail_th  = $this->input->post('f_topic_code');
        $f_course_detail_en         = $this->input->post('f_topic_name');
		$topic = $this->input->post('myTextField');

		$lenth = count($this->input->post('myTextField'));

		for($i=0;$i<$lenth;$i+=2){
			$i2 = $i+1;
        
        $data_checklist = [
            'f_function_code'   => $f_function_code,
            'f_topic_code'   => $topic[$i],
			'f_topic_name'   => $topic[$i2],
			'f_status'   => '1',
            'f_course_code'    => $f_course_code
        ];


        $this->db->insert('tbl_training_topic', $data_checklist);
		}

		$this->load->view('cms');

	}

	public function addtest()
	{        
		
		$this->load->model('Training_model');
		$this->load->dbforge();

        $f_function_code    = $this->input->post('f_function_code');
		$f_cert_code    = $this->input->post('f_cert_code');
        $f_eva_code  = $this->input->post('f_eva_code');
        $f_eva_prefix         = $this->input->post('f_eva_prefix');
		$topic = $this->input->post('myTextField');
		$col = count($topic) / 3;
		//echo $col;die();
		$lenth = count($this->input->post('myTextField'));

		//create_checklist
        $fieldsChecklist = array(
            "f_id" => array(
                'type' => 'INT',
                'constraint' => 10,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ),
			 'f_user_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_function_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_branch_code' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			'f_cert_approve' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			 'f_datetime' => array(
                'type' => 'DATETIME',
                'null' => TRUE,
			 ));
			 $this->dbforge->add_field($fieldsChecklist);
			 //$o=1;
			for($o=1;$o<=$col;$o++){
			  $sct = array(
            
			"f_{$f_eva_prefix}_code_$o" => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
			"f_score_$o" => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ));
			$this->dbforge->add_field($sct);
			$sct = [];
			}
      //  );
			$fieldsChecklist3 = array(
			 'f_comment' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
            ),
			 'f_image' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ));
			 $this->dbforge->add_field($fieldsChecklist3);

        
        $this->dbforge->add_key('f_id', TRUE);
        $this->dbforge->create_table("tbl_training_{$f_eva_prefix}_checklist", TRUE);


		for($i=0;$i<$lenth;$i+=3){
			$i2 = $i+1;
			$i3 = $i+2;
        
        $data_checklist = [
			'f_course_code'   => $topic[$i3],
            'f_eva_code'   => $f_eva_code,
			'f_eva_prefix'   => $f_eva_prefix,
			'f_name_th'   => $topic[$i],
			'f_name_en'   => $topic[$i2],
			'f_status'   => '1',
            'f_cert_code'    => $f_cert_code
        ];

		

        $this->db->insert('tbl_training_detail', $data_checklist);
		}

		$this->load->view('cms');

	}

	

	public function addtraining()
	{
		$this->load->model('training_model');

		$employeeId = $this->uri->segment(3);
		$selectedTopicId = $this->input->post('f_topic_id');
		$trainingDate = $this->input->post('f_datetime');

		$topicDetails = $this->training_model->getTopicData($selectedTopicId);

		if (!empty($topicDetails)) {
			foreach ($topicDetails as $topicItem) {
				$courseCode = $topicItem->f_course_code;
				$topicCode = $topicItem->f_topic_code;
				$functionCode = $topicItem->f_function_code;

				$this->training_model->addTraining($employeeId, $courseCode, $topicCode, $functionCode, $trainingDate);
			}
		}

		$data = [];
		$data['personalInfo'] = $this->training_model->getEvaInfo($employeeId);

		$groupedTrainings = $this->training_model->getDataTrainingGroupBy($employeeId);
		$allTrainings = $this->training_model->getDataTraining($employeeId);
		$completedTrainings = $this->training_model->getSuccessTraining($employeeId);

		$data['count'] = count($allTrainings);
		$data['success'] = count($completedTrainings);
		$data['empId'] = $employeeId;

		$data['TrainingInfo'] = [];

		foreach ($groupedTrainings as $groupedItem) {
			$courseDetails = $this->training_model->getTopic($groupedItem->f_course_code);
			$trainingList = $this->training_model->getTrainingData(
				$employeeId,
				$groupedItem->f_course_code,
				$groupedItem->f_datetime
			);

			$infoRow = [
				$courseDetails[0]->f_course_detail_th ?? '',
				$groupedItem->f_datetime,
				$trainingList
			];

			$data['TrainingInfo'][] = $infoRow;
		}

		$data['selecttopic'] = $this->training_model->getSelectTopic2();
		
		$this->load->view('evaluate', $data);
	}

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

    public function addstaff()
	{       
    //    var_dump( $this->input->post());die();

        $this->load->model('data_model');


        $branch =  $this->input->post('f_branch');
		$getBranch = $this->data_model->getBranchName($branch);
        $getFunctionName = $this->data_model->getFunctionName($this->input->post('f_function'));
        
        $branchName = $getBranch[0]->f_branch_name_en.' - '.$getFunctionName[0]->f_function_name;
        
       // var_dump($branchName);die();

        $data_checklist = [
            'f_branch_code'   =>  $this->input->post('f_branch'),
            'f_branch_name'   =>  $branchName,
            'f_user_code'   =>  $this->input->post('f_user_code'),
            'f_name_th'   =>  $this->input->post('f_name_th'),
            'f_name_en'   =>  $this->input->post('f_name_en'),
            'f_nickname'   =>  $this->input->post('f_nickname'),
            'f_position' =>  $this->input->post('f_position'),
            'f_status'   => '1',
            'f_function_code'    =>  $this->input->post('f_function')
        ];


        $this->db->insert('tbl_training_staff', $data_checklist);
       

		$this->load->view('cms');

	}
	
	public function editstaff()
	{
     //   $this->load->model('training_model');
        $user_code = $this->input->post('f_user_code');
        $data['emp'] = $this->training_model->getEvaInfo($user_code);

        var_dump($data['emp']);
		//$data['edit'] = 'test';
		
		$this->load->view('cms');
	}
	
    public function deleteStaff()
	{
        $this->load->model('data_model');
        $user_code = $this->input->post('f_user_code');
         $this->data_model->deleteStaff($user_code);

        //var_dump($user_code);die();
		//$data['edit'] = 'test';
		
		$this->load->view('cms');
	}

	public function addstep()
	{
        $this->load->model('data_model');
        $user_code = $this->input->post();
		$topic = $this->input->post();

		//var_dump($topic);die();

		$f_cert_code    = $this->input->post('Cname');
        $f_cert_detail_th  = $this->input->post('Cname2');
        $f_cert_detail_en         = $this->input->post('Cname3');
        
        $data_checklist = [
            'f_cert_code'   => $f_cert_code,
            'f_cert_detail_th' => $f_cert_detail_th,
            'f_status'   => '1',
            'f_cert_detail_en'    => $f_cert_detail_en
        ];


        $this->db->insert('tbl_training_cert', $data_checklist);

		$course = $this->input->post('myTextField5');

		$lenth = count($this->input->post('myTextField5'));

		for($i=0;$i<$lenth;$i+=3){
			$i2 = $i+1;
			$i3 = $i+2;
        
        $data_checklist = [
            'f_cert_code'   => $f_cert_code,
            'f_course_detail_th' => $course[$i2],
			'f_course_detail_en' => $course[$i3],
            'f_status'   => '1',
            'f_course_code'    => $course[$i]
        ];


        $this->db->insert('tbl_training_course', $data_checklist);
		}

		$topic = $this->input->post('myTextField2');

		$lenthT = count($this->input->post('myTextField2'));

		for($i=0;$i<$lenthT;$i+=5){
			$i2 = $i+1;
			$i3 = $i+2;
			$i4 = $i+3;
			$i5 = $i+4;
        
        $data_checklist = [
            'f_function_code'   => $topic[$i5],
            'f_topic_code'   => $topic[$i2],
			'f_topic_name'   => $topic[$i3],
			'f_topic_name_en'   => $topic[$i4],
			'f_status'   => '1',
            'f_course_code'    => $topic[$i]
        ];


        $this->db->insert('tbl_training_topic', $data_checklist);
		}

		

         //$this->data_model->deleteStaff($user_code);

        //var_dump($user_code);die();
		//$data['edit'] = 'test';
		
		$this->load->view('cms');
	}

	
	
}