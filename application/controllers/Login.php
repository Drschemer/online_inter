<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */

	 public function __construct() {
        parent::__construct();       
		$this->load->library('session');
    }

	public function index()
	{
		$this->load->helper('url');

        $this->load->view('login');
	}

	public function usr_login()
	{
		//Model Zone//
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');

		$user = $this->input->post('loginEmail',TRUE); //.Kang
		$pass = $this->input->post('loginPassword',TRUE);
		$lang = $this->input->post('lang',TRUE);
		$data['info'] = $this->login_model->chk_login($user,$pass);

		if($data['info']){
			$data["status"] = '<h1><font color="green"><b>LOGIN SUCCESS </b></font></h1>';
		}else{
			echo '<h1><font color="red"><b>User and/or Password Mismatch </b></font></h1>'; die();
		}

		$branch = $data['info']['f_branch_code'];
		$rm = $data['info']['f_user_code'];

		if($rm == '102201018'){
			$rm = '101412039';
		}
		

		$getBranch = $this->data_model->getBranch($branch,$rm);

		$brachListEn = array();
		$brachListTh = array();

		$arrrmTh1 = array();
		$arrrmEn1 = array();


		$arrrmTh = array();
		$arrrmEn = array();

		$country = 'Thailand';

		$inter = false;
		$bar = false;
		$kitchen = false;
		if (strpos($data['info']['f_position'], 'Bar')) {
			$bar = true;
		}
		if (strpos($data['info']['f_position'], 'Chef')) {
			$kitchen = true;
		}
		if ($data['info']['f_branch_code'] == '900'){
			$inter = true;
		}
		foreach($getBranch as $rows=>$value){
			if($branch > 899){
			$country = 'International';
			}
			//var_dump($value->f_branch_code);die();
			$getAreaName = $this->data_model->getAreaName($value->f_branch_code,$bar,$kitchen,$inter);
			foreach($getAreaName as $rows4=>$value4){
			$rmCode = $value4->f_area_code;
			//echo $rmCode;die();
			}
			$getNameArea = $this->data_model->getNameArea($rmCode);
			foreach($getNameArea as $rows5=>$value5){
			$rmNameEn = $value5->f_user_name_en;
			$rmNameTh = $value5->f_user_name_th;
			}

			$getBranchName = $this->data_model->getBranchName($value->f_branch_code);

			

			foreach($getBranchName as $rows2=>$value2){
				array_push($brachListEn,$value2->f_branch_name_en);
				array_push($brachListTh,$value2->f_branch_name_th);

				array_push($arrrmEn1,$value2->f_branch_name_en);
				array_push($arrrmTh1,$value2->f_branch_name_th);
				
			}

			if($branch == 888){
				
			$getRmAssName = $this->data_model->getRmAssName($value->f_branch_code);

			foreach($getRmAssName as $rows5=>$value5){
				array_push($arrrmEn1,$value5->f_user_name_en);
				array_push($arrrmTh1,$value5->f_user_name_th);
				
			}
				array_push($arrrmEn,$arrrmEn1);
				array_push($arrrmTh,$arrrmTh1);
				$arrrmEn1 = array();
				$arrrmTh1 = array();
			}
		}

		//$replaeWithPermittion = 1
		if($data['info']['f_position'] == 'Area Service Manager' || ($data['info']['f_position'] == 'RM' && in_array($data['info']['f_branch_code'],array('111910006','101807511','101505062','102301227')))){
			$default_graph = 'qsc1';
		}elseif($data['info']['f_position'] == 'Area Head Chef' || $data['info']['f_position'] == 'Group Executive Chef'){
			$default_graph = 'dca1';
		}elseif(strpos($data['info']['f_position'], 'Bar')) {
			$default_graph = 'bcl1';
		}elseif($data['info']['f_user_code'] == '102501054') {
			$default_graph = 'qsc1'; 
		}elseif($data['info']['f_position'] == 'International FS Manager' || ($data['info']['f_position'] == 'RM' && !in_array($data['info']['f_branch_code'],array('111910006','101807511','101505062','102301227')))) {
			$default_graph = 'qsce1';
		}elseif(strpos($data['info']['f_position'], 'AKG')) {
			$default_graph = 'qscakg1';
		}elseif(strpos($data['info']['f_position'], 'MBE')) {
			$default_graph = 'qscmbe1';
		}else{
			$default_graph = 'qsc1';
		}
		
		$usrinfo = array(
        'f_user_name_th'  => $data['info']['f_user_name_th'],
        'f_user_name_en'     => $data['info']['f_user_name_en'],
		'f_user_login'  => $data['info']['f_user_login'],
		'f_position'  => $data['info']['f_position'],
		'f_department'  => $data['info']['f_department'],
		'f_user_code'  => $rm,
		'f_branch_code'  => $data['info']['f_branch_code'],
		'f_country'  => $country,// f_country from tbl_branch
		'f_area_name_en'  => $rmNameEn, //f_user_name_en ที่เป็น area manager จาก tbl_user_naragroup
		'f_area_name_th'  => $rmNameTh, //f_user_name_th ที่เป็น area manager จาก tbl_user_naragroup
		'f_area_code'  => $rmCode, //f_area_code ของสาขาที่เป็นของ area manager จาก tbl_area_manager
		'f_branch_en'  => $brachListEn, //f_branch_name_en ที่เป็น area manager จาก tbl_branch
		'f_branch_th'  => $brachListTh, //f_branch_name_th ที่เป็น area manager จาก tbl_branch
		'f_rm_en'  => $arrrmEn, //f_branch_name_en ที่เป็น area manager จาก tbl_branch
		'f_rm_th'  => $arrrmTh, //f_branch_name_th ที่เป็น area manager จาก tbl_branch
        'slang' => $lang, //'thailand'
		'graph'  => $default_graph, // Graph default
		'logged_in' => TRUE
		);
		$this->session->set_userdata($usrinfo);
		
	  // $this->lang->load("form_input",$_SESSION['slang']);
	   $data["test"] = $this->lang->line("test");

		if($data['info']){
			$data["status"] = '<h1><font color="green"><b>LOGIN SUCCESS </b></font></h1>';
		}else{
			$data["status"] = '<h1><font color="red"><b>User and/or Password Mismatch </b></font></h1>'; die();
		}

		if($data['info']['f_user_code'] == '999999999') {
			$this->load->view('cms', $data); 
		}else{

		$data['graph'] = array();// Graph Kang
		
		foreach($getBranch as $rows7=>$value7){
			$sum = array();
			array_push($sum,$value7->f_branch_name_th);
			for($d=0;$d<7;$d++){

				$getDate =  date('Y-m-d',strtotime("-$d days"));
				$getPercent =  $this->data_model->getBranchData($value7->f_branch_code,$getDate,$default_graph);

				//var_dump($getPercent);die();
				$getfield = "f_".$default_graph."_percentage";
				if($getPercent){
					$pc = round($getPercent['0']->$getfield,0);
				}else{
					$pc = 0.1;
				}
				//var_dump($pc);echo'<br>';
				
				array_push($sum,$pc);
				array_push($sum,$getDate);
					
				
			}


			array_push($data['graph'],$sum);
		}

		if($data['info']['f_user_login'] == 'suvat.k@naracuisine.com' || $_SESSION['f_user_login'] == 'pakpoom@naracuisine.com' || $_SESSION['f_user_login'] == 'napatsakorn@naracuisine.com'){
			$data['functions'] = 888;
		}elseif($data['info']['f_user_login'] == 'manar@naracuisine.com'){
			$data['functions'] = 666;
		}else{
			$data['functions'] = 888;
		}

		$data['arealist'] = $this->data_model->getAreaManagerNew($data['functions']);
		//var_dump($data['arealist']);die();
		
		//$data['arealist'] = $this->data_model->getAreaManager();

		$data['activities'] = $this->data_model->getAreaManager();

		$data['graphLenth'] = 7;

		$this->loadSidebarPermissionToSession($data['info']['f_user_code']);
		$data['sidebarPermittion'] = $this->session->userdata('sidebarPermittion') ?? [];

		//for two area
		$data['table'] = $default_graph;


		$data['datatable']  = $_SESSION['graph'];
		
		$xyz = $this->data_model->getNameArea($rmCode);
		$data['mgrSelect'] = $xyz[0]->f_user_name_th;

		$this->load->view('dashboard', $data);
		}
	}


	public function sso()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');	

		$email = $this->uri->segment(3).'@naracuisine.com';
		$lang = 'thailand';
		$data['info'] = $this->login_model->sso_chk($email);
		//Kang
		if($data['info']){
			$data["status"] = '<h1><font color="green"><b>LOGIN SUCCESS </b></font></h1>';
		}else{
			echo '<h1><font color="red"><b>User and/or Password Mismatch </b></font></h1>'; die();
		}
		$branch = $data['info']['f_branch_code'];
		$rm = $data['info']['f_user_code'];

		if($rm == '102201018'){
			$rm = '101412039';
		}
		

		$getBranch = $this->data_model->getBranch($branch,$rm);

		$brachListEn = array();
		$brachListTh = array();

		$arrrmTh1 = array();
		$arrrmEn1 = array();


		$arrrmTh = array();
		$arrrmEn = array();

		$country = 'Thailand';

		$inter = false;
		$bar = false;
		$kitchen = false;
		if (strpos($data['info']['f_position'], 'Bar')) {
			$bar = true;
		}
		if (strpos($data['info']['f_position'], 'Chef')) {
			$kitchen = true;
		}
		if ($data['info']['f_branch_code'] == '900'){
			$inter = true;
		}

		foreach($getBranch as $rows=>$value){
			if($branch > 899){
			$country = 'International';
			}
			//var_dump($value->f_branch_code);die();
			$getAreaName = $this->data_model->getAreaName($value->f_branch_code,$bar,$kitchen,$inter);
			foreach($getAreaName as $rows4=>$value4){
			$rmCode = $value4->f_area_code;
			//echo $rmCode;die();
			}
			$getNameArea = $this->data_model->getNameArea($rmCode);
			foreach($getNameArea as $rows5=>$value5){
			$rmNameEn = $value5->f_user_name_en;
			$rmNameTh = $value5->f_user_name_th;
			}

			$getBranchName = $this->data_model->getBranchName($value->f_branch_code);

			

			foreach($getBranchName as $rows2=>$value2){
				array_push($brachListEn,$value2->f_branch_name_en);
				array_push($brachListTh,$value2->f_branch_name_th);

				array_push($arrrmEn1,$value2->f_branch_name_en);
				array_push($arrrmTh1,$value2->f_branch_name_th);
				
			}

			if($branch == 888){
				
			$getRmAssName = $this->data_model->getRmAssName($value->f_branch_code);

			foreach($getRmAssName as $rows5=>$value5){
				array_push($arrrmEn1,$value5->f_user_name_en);
				array_push($arrrmTh1,$value5->f_user_name_th);
				
			}
				array_push($arrrmEn,$arrrmEn1);
				array_push($arrrmTh,$arrrmTh1);
				$arrrmEn1 = array();
				$arrrmTh1 = array();
			}
		}

		//$replaeWithPermittion = 1

		//$position = strpos($mainString, $subString);
		if($data['info']['f_position'] == 'Area Service Manager' || ($data['info']['f_position'] == 'RM' && in_array($data['info']['f_branch_code'],array('111910006','101807511','101505062','102301227')))){
			$default_graph = 'qsc1';
		}elseif($data['info']['f_position'] == 'Area Head Chef' || $data['info']['f_position'] == 'Group Executive Chef'){
			$default_graph = 'dca1';
		}elseif(strpos($data['info']['f_position'], 'Bar')) {
			$default_graph = 'bcl1';
		}elseif($data['info']['f_user_code'] == '102501054') {
			$default_graph = 'qsc1'; 
		}elseif($data['info']['f_position'] == 'International FS Manager' || ($data['info']['f_position'] == 'RM' && !in_array($data['info']['f_branch_code'],array('111910006','101807511','101505062','102301227')))) {
			$default_graph = 'qsce1';
		}elseif(strpos($data['info']['f_position'], 'AKG')) {
			$default_graph = 'qscakg1';
		}elseif(strpos($data['info']['f_position'], 'MBE')) {
			$default_graph = 'qscmbe1';
		}else{
			$default_graph = 'qsc1';
		}
		
		//var_dump($data['info']['f_position']);die();

		$usrinfo = array(
        'f_user_name_th'  => $data['info']['f_user_name_th'],
        'f_user_name_en'     => $data['info']['f_user_name_en'],
		'f_user_login'  => $data['info']['f_user_login'],
		'f_position'  => $data['info']['f_position'],
		'f_department'  => $data['info']['f_department'],
		'f_user_code'  => $rm,
		'f_branch_code'  => $data['info']['f_branch_code'],
		'f_country'  => $country,// f_country from tbl_branch
		'f_area_name_en'  => $rmNameEn, //f_user_name_en ที่เป็น area manager จาก tbl_user_naragroup
		'f_area_name_th'  => $rmNameTh, //f_user_name_th ที่เป็น area manager จาก tbl_user_naragroup
		'f_area_code'  => $rmCode, //f_area_code ของสาขาที่เป็นของ area manager จาก tbl_area_manager
		'f_branch_en'  => $brachListEn, //f_branch_name_en ที่เป็น area manager จาก tbl_branch
		'f_branch_th'  => $brachListTh, //f_branch_name_th ที่เป็น area manager จาก tbl_branch
		'f_rm_en'  => $arrrmEn, //f_branch_name_en ที่เป็น area manager จาก tbl_branch
		'f_rm_th'  => $arrrmTh, //f_branch_name_th ที่เป็น area manager จาก tbl_branch
        'slang' => $lang, //'thailand'
		'graph'  => $default_graph, // Graph default
		'logged_in' => TRUE
		);
		$this->session->set_userdata($usrinfo);
		
	  // $this->lang->load("form_input",$_SESSION['slang']);
	   $data["test"] = $this->lang->line("test");

		if($data['info']){
			$data["status"] = '<h1><font color="green"><b>LOGIN SUCCESS </b></font></h1>';
		}else{
			$data["status"] = '<h1><font color="red"><b>User and/or Password Mismatch </b></font></h1>'; die();
		}

		if($data['info']['f_user_code'] == '999999999') {
			$this->load->view('cms', $data);
		}

		$data['graph'] = array();// Graph Kang
		
		foreach($getBranch as $rows7=>$value7){
			$sum = array();
			array_push($sum,$value7->f_branch_name_th);
			for($d=0;$d<7;$d++){

				$getDate =  date('Y-m-d',strtotime("-$d days"));
				$getPercent =  $this->data_model->getBranchData($value7->f_branch_code,$getDate,$default_graph);

				//var_dump($getPercent);die();
				$getfield = "f_".$default_graph."_percentage";
				if($getPercent){
					$pc = round($getPercent['0']->$getfield,0);
				}else{
					$pc = 0.1;
				}
				//var_dump($pc);echo'<br>';
				
				array_push($sum,$pc);
				array_push($sum,$getDate);
					
				
			}


			array_push($data['graph'],$sum);
		}

		if($data['info']['f_user_login'] == 'suvat.k@naracuisine.com' || $_SESSION['f_user_login'] == 'pakpoom@naracuisine.com' || $_SESSION['f_user_login'] == 'napatsakorn@naracuisine.com'){
			$data['functions'] = 888;
		}elseif($data['info']['f_user_login'] == 'manar@naracuisine.com'){
			$data['functions'] = 666;
		}else{
			$data['functions'] = 888;
		}

		$data['arealist'] = $this->data_model->getAreaManagerNew($data['functions']);
		
		//$data['arealist'] = $this->data_model->getAreaManager();

		$data['activities'] = $this->data_model->getAreaManager();

		$data['graphLenth'] = 7;

		$this->loadSidebarPermissionToSession($data['info']['f_user_code']);
		$data['sidebarPermittion'] = $this->session->userdata('sidebarPermittion') ?? [];

		//for two area
		$data['table'] = $default_graph;


		$data['datatable']  = $_SESSION['graph'];

		$xyz = $this->data_model->getNameArea($rmCode);
		$data['mgrSelect'] = $xyz[0]->f_user_name_th;

		
		$this->load->view('dashboard',$data);
	}

		public function getgraph()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');

		$managerId = $this->uri->segment(3);

		if(!$this->uri->segment(4)){
			$graphLenth = 7;
		}else{
		$graphLenth = $this->uri->segment(4);
		}

		
		if(!$this->uri->segment(5)){
			$data['datatable']  = $_SESSION['graph'];
		}else{
			$data['datatable'] = $this->uri->segment(5);
		}
		//var_dump($graphLenth);die();
		if(!$this->uri->segment(6)){
			$data['functions'] = 888;
		}else{
			$data['functions'] = $this->uri->segment(6);
		}

		//echo $data['functions'];
		//echo $managerId;
		
		
		$getBranch = $this->data_model->getBranch($data['functions'],$managerId);

		
		//$data['getPoint'] = $this->data_model->getQscPoint($lang);
		$graphData = $_SESSION['graph']; 

		$data['graph'] = array();
		
			foreach($getBranch as $rows7=>$value7){
			$sum = array();
			array_push($sum,$value7->f_branch_name_th);
			for($d=0;$d<$graphLenth;$d++){

				$getDate =  date('Y-m-d',strtotime("-$d days"));
				$getPercent =  $this->data_model->getBranchData($value7->f_branch_code,$getDate,$data['datatable']);

				//var_dump($value7->f_branch_code,$getDate,$data['datatable']);die();
				$getfield = "f_".$data['datatable']."_percentage";
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
		//var_dump($data['graph']);
		//$data['arealist'] = $this->data_model->getAreaManager();

		$data['arealist'] = $this->data_model->getAreaManagerNew($data['functions']);
		
		$data['graphLenth'] = $graphLenth;

		$xyz = $this->data_model->getNameArea($managerId);
		$data['mgrSelect'] = $xyz[0]->f_user_name_th;

		//for a 2 area
		$data['table'] = $this->uri->segment(5);
		
		//var_dump($this->uri->segment(5));die();

		$this->load->view('dashboard',$data);
	}

	public function changeLengthGraph()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');

		$lenth = $this->uri->segment(3);
		$table = $this->uri->segment(4);

		$managerId = $_SESSION['f_user_code'];
		$dummy = $_SESSION['f_branch_code'];

		$getBranch = $this->data_model->getBranch($dummy,$managerId);

		$data['graphLenth'] = $this->uri->segment(3);

		$graphData = $_SESSION['graph']; 
		if($table){
		$data['table'] = $table;
		$graphData = $table;
		}
		
		$data['graph'] = array();
		
			foreach($getBranch as $rows7=>$value7){
			$sum = array();
			array_push($sum,$value7->f_branch_name_th);
			for($d=0;$d<$lenth;$d++){

				$getDate =  date('Y-m-d',strtotime("-$d days"));
				$getPercent =  $this->data_model->getBranchData($value7->f_branch_code,$getDate,$graphData);

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


		if($table){
		$data['table'] = $table;
		}
		$data['arealist'] = $this->data_model->getAreaManager();
		
		$this->load->view('dashboard',$data);
	}

	public function getcomment()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');

		$branchId = $this->uri->segment(4);
		$table = $this->uri->segment(3);
		$dummy = 888;

		$getQuestion = $this->data_model->getQscPoint($table);

		//$data['getPoint'] = $this->data_model->getQscPoint($lang);

		$data['question'] = array();
		
		foreach($getQuestion as $rows7=>$value7){
				$getComment =  $this->data_model->getCommentData($branchId,$value7->f_topic_id);
				$sum = array();
				if ($_SESSION['slang'] == 'english'){ 
				array_push($sum,$value7->f_topic_detail_en);
				}else{
				array_push($sum,$value7->f_topic_detail_th);
				}
				array_push($sum,$getComment);
		
				array_push($data['question'],$sum);
				$sum = array();
			}

		$data['allBranch'] = $this->data_model->getBranchAll();
		$data['arealist'] = $this->data_model->getAreaManager();
		//var_dump($data['question']);die();

		 $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];

        
		$data['getBranch'] = $this->data_model->getBranch($branch,$rm);

		$data['graphLenth'] = 7;
	
		$data['formName'] = $this->uri->segment(3);
		
		$this->load->view('comment',$data);
	}

	public function signout()
	{
		
		session_destroy();
		$this->load->helper('url');
		redirect('http://10.0.1.88/online', 'refresh');
        $this->load->view('login');
	}

	public function loadSidebarPermissionToSession($user_code)
    {
        $this->load->model('user_model');

        $user = $this->user_model->getUserByCode($user_code);

        if ($user && isset($user->f_permittion_id)) {
            $permission = $this->user_model->getPermittionById($user->f_permittion_id);

            if ($permission && isset($permission->f_sidebar_auth)) {
                $sidebarArray = explode(',', $permission->f_sidebar_auth);
				
                $this->session->set_userdata('sidebarPermittion', $sidebarArray);
				
            } else {
                $this->session->set_userdata('sidebarPermittion', []);
            }
        } else {
            $this->session->set_userdata('sidebarPermittion', []);
        }
    }

}

