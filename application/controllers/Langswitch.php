<?php
class Langswitch extends CI_Controller
{
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
    }

    public function index()
	{
		$this->load->helper('url');
        $lang = $this->uri->segment(2);
        echo $lang; die();
        $this->load->view('login', $data);
	}

    function switchlanguage() {
        $this->load->helper('url');
		
        $lang = $this->uri->segment(3);
        $usrinfo = array(
        'slang' => $lang,
		);
		$this->session->set_userdata($usrinfo);

        $this->load->model('login_model');
        $this->load->model('data_model');
		$this->load->model('user_model');

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];
		$graphData = $_SESSION['graph']; 

		$getBranch = $this->login_model->getBranch($branch,$rm);

		if($_SESSION['f_position'] == 'Area Service Manager'){
			$default_graph = 'qsc1';
		}elseif($_SESSION['f_position'] == 'Area Head Chef' ||$_SESSION['f_position'] == 'Group Executive Chef'){
			$default_graph = 'dca1';
		}elseif(strpos($_SESSION['f_position'], 'Bar')) {
			$default_graph = 'bcl1';
		}elseif($_SESSION['f_user_code'] == '102501054') {
			$default_graph = 'qsc1';
		}elseif($_SESSION['f_position'] == 'International FS Manager' || $_SESSION['f_position'] == 'RM') {
			$default_graph = 'qsce1';
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

		if($_SESSION['f_user_login'] == 'suvat.k@naracuisine.com' || $_SESSION['f_user_login'] == 'pakpoom@naracuisine.com' || $_SESSION['f_user_login'] == 'napatsakorn@naracuisine.com'){
			$data['functions'] = 888;
		}elseif($_SESSION['f_user_login'] == 'manar@naracuisine.com'){
			$data['functions'] = 666;
		}else{
			$data['functions'] = 888;
		}

		$data['arealist'] = $this->data_model->getAreaManagerNew($data['functions']);
		
		//$data['arealist'] = $this->data_model->getAreaManager();

		$data['activities'] = $this->data_model->getAreaManager();

		$data['graphLenth'] = 7;


		$data['table'] = $_SESSION['graph'];	
		$data['datatable']  = $_SESSION['graph'];		
		
		$data['graphLenth'] = 7;
	

        $this->load->view('dashboard',$data);
    }
}

?>