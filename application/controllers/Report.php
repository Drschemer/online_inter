<?php
require_once(APPPATH . '../vendor/autoload.php');

defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Report extends CI_Controller {

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

		
		$this->load->view('dashboard', $data);
	

	}

	public function trainingreport()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');
        $this->load->model('training_model');
		// by P Kang

		$data['empData'] = array();

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            
            $reportType = $this->input->post('report_type');
            $staffCode  = $this->input->post('f_user_code');
            $certCode   = $this->input->post('f_cert_code');
            
            $reportData = null;

            if ($reportType == 'cert' && !empty($certCode)) {
                $certCodes = [$certCode];
                $reportData = $this->training_model->exportReportByCert($certCodes); 
                
                $this->exportToExcel($reportData, 'Report_By_Certificate');
                
            } elseif ($reportType == 'staff' && !empty($staffCode)) {
                $reportData = $this->training_model->exportReportByStaff($staffCode);                 
                $this->exportToExcel($reportData, 'Report_By_Staff');
            }
        }

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];

		$type = $this->input->post('report_type');
		$var = $this->input->post('f_branch_code');
		$emp = $this->input->post('f_user_code');
		$certCode = $this->input->post('f_cert_code');
        $function = $this->uri->segment(5);
		//echo 'report_type = '.$type.'|f_branch_code ='.$var.'|f_user_code ='.$emp.'|f_cert_code ='.$certCode;

		$bdata = '';
		$data['empData'] = array();
		$trainingreport = $data['trainingreportselect'] = $this->uri->segment(3);

		$temp = 0;
		$cert = $data['chkCert'] =$this->uri->segment(4);
		if($cert < 999){
			$temp = $cert;
		}
		$staffcode = $data['staffcode'] =$this->uri->segment(5);
        $data['fcode'] =$this->uri->segment(5);
        if(strlen($staffcode) == 9){
            $data['fcode'] =$this->uri->segment(6);
        }
		

		if($bdata){
		$data['testData'] = $this->training_model->getTest($cert);
		}

		//var_dump($data['testData']);die();
		
		if($trainingreport == 'staff'){

			$data['trainingreport'] = $this->data_model->getBranchAll();
            $data['functionData'] = $this->training_model->getFunction();

			//$emp = $this->training_model->getEmpData2($temp);
			$emp = $this->training_model->getEmpData3($cert,$staffcode);
			array_push($data['empData'],$emp);
		}elseif($trainingreport == 'cert' && $cert){
			//Build cert data here
			//$data['getTest'] = $this->training_model->getEvaTest($test);
		}

		$data['certData'] = $this->training_model->getCert();
       // $data['functionData'] = 
		if($staffcode){
			//Build staff data here
			//$data['getTest'] = $this->training_model->getEvaTest($test);
			//$data['getPreData'] = $this->training_model->getPreData($usercode,$test);

		}else{
			//$data['getTest'] = '';
			//$data['getPreData'] = '';
		}

		//
		$data['getTest'] = '';
		$data['getPreData'] = '';
		if($trainingreport == 'cert' && !is_null($cert) ){
           // echo '555';die();
            $certData = $this->training_model->dataCert($cert);
			$userData = $this->training_model->getSumDataByPrefix($certData[0]->f_eva_prefix);
			//$branchData = $this->data_model->getBranchName($cert);
			$data['certName'] = $certData['0']->f_cert_detail_th;
			$Name = array();
			$Position = array();
           // $Branch = array();
            $dataStaff = array();
			foreach($userData as $value1=>$row1){
                $Branch = array();
                $usercode = $row1->f_user_code;
                $staffData = $this->training_model->getEvaInfo($usercode);
				
				array_push($Branch,$row1->f_datetime);
                array_push($Branch,$staffData);
				array_push($Branch,$row1->f_percentage);
                array_push($dataStaff,$Branch);
			}
			
		$data['getTest'] = $dataStaff;
		
		
		}

		//REport by staff

		if(!is_null($trainingreport) && !is_null($cert) && !is_null($staffcode) && strlen($staffcode) == 9){

			$userData = $this->training_model->getSumData($staffcode);
            if($userData){
            $userInfo = $this->training_model->getEvaInfo($userData[0]->f_user_code);
			$branchData = $this->data_model->getBranchName($cert);
			$eva = array();
			$score = array();
            $t=0;
			foreach($userData as $value1=>$row1){
                $a=array();
                //var_dump($row1->f_eva_prefix);
                $certData = $this->training_model->certData($row1->f_eva_prefix);
				array_push($a,$userData);
                array_push($a,$certData);
				array_push($eva,$a);
                $t++;
			}
           // var_dump($eva);die();
			//$certData = $this->training_model->certData($eva);

        $data['f_name_th'] = $userInfo[0]->f_name_th;
        $data['f_name_en'] = $userInfo[0]->f_name_en;
        $data['f_position'] = $userInfo[0]->f_position;
        $data['f_branch_name'] = $userInfo[0]->f_branch_name;
        $data['f_image'] = $userInfo[0]->f_image;

		//var_dump($eva);
		$data['chkBranch'] = $this->uri->segment(4);
		$data['getPreData'] = $eva;
        }
            
            $emp = $this->training_model->getEmpData2($cert);
			array_push($data['empData'],$emp);
		}
		//var_dump($certData);

		//

		$this->load->view('trainingreport',$data);
	}

	//P kang 
	private function exportToExcel($data, $filename = 'Training_Report')
    {
        if (empty($data)) {
            echo "<script>alert('ไม่พบข้อมูลตามเงื่อนไขที่เลือก'); window.history.back();</script>";
            return;
        }

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        
        $headerMap = [
            'f_cert_detail_th'  => 'ชื่อหลักสูตร',
			'f_datetime'		=> 'วันที่อบรม',
			'f_percentage'		=> 'เปอร์เซนต์',
            'f_user_code'       => 'รหัสพนักงาน',
            'f_name_th'         => 'ชื่อพนักงาน (ไทย)',
            'f_name_en'         => 'ชื่อพนักงาน (อังกฤษ)',
            'f_position'        => 'ตำแหน่ง',
            'f_branch_name'     => 'สาขา'	
        ];
        
        $originalHeaders = array_keys((array)$data[0]);
        $excelHeaders = [];

        foreach ($originalHeaders as $originalName) {
            $excelHeaders[] = $headerMap[$originalName] ?? $originalName;
        }

        $col = 'A';
        foreach ($excelHeaders as $header) {
            $sheet->setCellValue($col . '1', $header);
            $col++;
        }

        $row = 2;
        foreach ($data as $item) {
            $col = 'A';
            foreach ((array)$item as $value) {
                $sheet->setCellValue($col . $row, $value);
                $col++;
            }
            $row++;
        }

        $writer = new Xlsx($spreadsheet);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="'. $filename . '_' . date('Ymd_His') . '.xlsx"');
        header('Cache-Control: max-age=0');
        
        $writer->save('php://output');
        exit;		
		
		$this->load->view('trainingreport',$data);
    }
	//

	public function training()
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

    $this->load->view('trainingreport', $data);
    }
	
}