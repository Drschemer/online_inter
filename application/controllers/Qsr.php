<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Qsr extends CI_Controller {

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

	public function forminput()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');

		$lang = $this->uri->segment(3);
		$data['getPoint'] = $this->data_model->getQscPoint($lang);

 
		$data['formData'] = $lang;

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];

        $data['getBranch'] = array();
		$data['getBranch'] = $this->login_model->getBranch($branch,$rm);
        /*
		$iff = 3;
		$getpermittion = $this->user_model->getpermittion($iff);
		$getData = explode(',',$getpermittion[0]->f_sidebar_auth);

		$data['sidebarPermittion'] = array();
		foreach($getData as $rows){
			array_push($data['sidebarPermittion'],$rows);
		}
        */
		$data['formName'] = $this->uri->segment(3);
		//var_dump($data['getBranch']);die();
		$this->load->view('forminput',$data);
	}
/*
	public function checkdata()
    {
		$this->load->model('data_model');
		$this->load->model('login_model');
		$this->load->model('user_model');

        $user_code    = $this->input->post('f_user_code');
        $user_name    = $this->input->post('f_user_name');
        $branch_code  = $this->input->post('f_branch_code');
        $date         = $this->input->post('f_datetime');
        $area_code    = $this->input->post('f_area_code');
        $qsc_total    = $this->input->post('f_qsc1_total');
        $qsc_percent  = $this->input->post('f_qsc1_percentage');

		//var_dump($this->input->post());die();
        // เตรียมข้อมูลสำหรับ tbl_qsc1_checklist
        $data_checklist = [
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_area_code'   => $area_code,
            'f_datetime'    => $date
        ];

        $pass_count = 0;

        for ($i = 1; $i <= 42; $i++) {
            $score = $this->input->post('f_score_' . $i) ?? 0;
            $data_checklist['f_topic_code_' . $i] = 'QSC' . str_pad($i, 2, '0', STR_PAD_LEFT);
            $data_checklist['f_score_' . $i] = $score;
            $data_checklist['f_comment_' . $i] = $this->input->post('f_comment_' . $i) ?? '';

            if ($score == 1) {
                $pass_count++;
            }
        }

        $this->db->insert('tbl_qsc1_checklist', $data_checklist);
        $last_id = $this->db->insert_id();

        // เตรียมข้อมูลสำหรับ tbl_qsc1_image (แนวนอน)
        $data_image = [
            'f_id'      => $last_id,
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_datetime'    => $date
        ];

        $allowed_extensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp']; // รองรับนามสกุลรูปทั่วไป

        for ($i = 1; $i <= 42; $i++) {
            $field = 'f_image_path_' . $i;

            if (!empty($_FILES[$field]['name'])) {
                $original_extension = strtolower(pathinfo($_FILES[$field]['name'], PATHINFO_EXTENSION));

                // ตรวจสอบว่านามสกุลถูกต้อง
                if (in_array($original_extension, $allowed_extensions)) {
                    // สร้างชื่อไฟล์ใหม่แบบสุ่มไม่ซ้ำ
                    $filename = time() . $i . '.' . $original_extension;					
                    $target_path = 'img/area_service_checklist/' . $filename;

                    move_uploaded_file($_FILES[$field]['tmp_name'], $target_path);

					$data_image['f_topic_code_' . $i] = 'QSC' . str_pad($i, 2, '0', STR_PAD_LEFT);
                    $data_image['f_image_path_' . $i] = $filename;
                } else {
                    // นามสกุลไม่รองรับ
                    $data_image['f_topic_code_' . $i] = null;
                    $data_image['f_image_path_' . $i] = null;
                }
            } else {
                $data_image['f_topic_code_' . $i] = null;
                $data_image['f_image_path_' . $i] = null;
            }
        }


        $this->db->insert('tbl_qsc1_image', $data_image);

        // ดึงข้อมูลผู้ใช้จาก tbl_user_naragroup
        $this->db->where('f_user_code', $user_code);
        $user = $this->db->get('tbl_user_naragroup')->row();

        // ดึงข้อมูลสาขา
        $this->db->where('f_branch_code', $branch_code);
        $branch = $this->db->get('tbl_branch')->row();

        // บันทึกข้อมูลลง tbl_sum_qsc1
        $data_sum = [
            'f_qsc1_id'         => $last_id,
            'f_qsc1_sum'        => $pass_count,
            'f_qsc1_total'      => $qsc_total,
            'f_qsc1_percentage' => $qsc_percent,
            'f_user_code'      => $user_code,
            'f_user_name_th'   => $user->f_user_name_th ?? '',
            'f_user_name_en'   => $user->f_user_name_en ?? '',
            'f_branch_code'    => $branch_code,
            'f_branch_name_en' => $branch->f_branch_name_en ?? '',
            'f_datetime'       => $date,
            'f_area_name'      => $user->f_area_code ?? ''
        ];

        $this->db->insert('tbl_sum_qsc1', $data_sum);		
		
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
      
		$this->load->view('dashboard',$data);
    }	
*/
//	End of Checkdata	
	
	
    public function comment()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');

		$lang = $this->uri->segment(3);
		$data['getPoint'] = '';//$this->login_model->getQscPoint($lang);
		$data['allBranch'] = $this->login_model->getBranchAll();
        $data['question'] = array();

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];

		$dateDate = date('Y-m-dd');
		$data['getBranchname'] = '';
		$data['getCommentSumData'] = '';
		$data['getCommentSumData'] = '';
		$data['getCommentSumData'] = '';
		
		$data['dataDateStart'] = substr($dateDate,8,2).'/'.substr($dateDate,5,2).'/'.substr($dateDate,0,4);
		$data['dataDateEnd'] = '//';
        
		$data['getBranch'] = $this->login_model->getBranch($branch,$rm); 
		$data['table'] = $lang;

        $data['graphLenth'] = 7;
        /*
		$iff = 3;
		$getpermittion = $this->user_model->getpermittion($iff);
		//var_dump($getpermittion);die();
		$getData = explode(',',$getpermittion[0]->f_sidebar_auth);

		$data['graphLenth'] = 7;
		$data['sidebarPermittion'] = array();
		foreach($getData as $rows){
			array_push($data['sidebarPermittion'],$rows);
		}
        */
		$data['formName'] = $this->uri->segment(3);
		$this->load->view('comment',$data);
	}

	public function getcomment()
	{
		$this->load->model('login_model');
		$this->load->model('data_model');
		$this->load->model('user_model');

	
		$lang = $this->uri->segment(3);

		$dateDate = $this->input->post('f_datetime');
		$dataDateStart = $this->input->post('date_start');
		$dataDateEnd = $this->input->post('date_end');
		$branchCode  = $this->input->post('f_branch_code');
		$chklist = $this->uri->segment(3);


		//var_dump($this->input->post());die();
		$data['getBranchname'] = $this->login_model->getBranchName($branchCode);
		$data['dataDate'] = substr($dateDate,8,2).'/'.substr($dateDate,5,2).'/'.substr($dateDate,0,4);
		$data['dataDateStart'] = substr($dataDateStart,8,2).'/'.substr($dataDateStart,5,2).'/'.substr($dataDateStart,0,4);
		$data['dataDateEnd'] = substr($dataDateEnd,8,2).'/'.substr($dataDateEnd,5,2).'/'.substr($dataDateEnd,0,4);
		//$this->input->post('f_datetime');
		//var_dump($data['dateDate']);die();
		if(!$dataDateEnd){
		$data['getCommentSumData'] = $this->data_model->getCommentSumData($dataDateStart,$branchCode,$chklist);
		$data['getCommentDetailData'] = $this->data_model->getCommentDetailData($dataDateStart,$branchCode,$chklist);
		$data['getCommentImageData'] = $this->data_model->getCommentImageData($dataDateStart,$branchCode,$chklist);
		$data['getPoint'] = $this->login_model->getQscPoint($lang);
		}else{
			
			$tempData = $this->data_model->getCommentAverageSumData($dataDateStart,$dataDateEnd,$branchCode,$chklist);
			$summa = 0;
			$tota = 0;
			$pera = 0;
			$sumta = "f_".$chklist."_sum";
			$tonta = "f_".$chklist."_total";
			$penra = "f_".$chklist."_percentage";
			foreach($tempData as $rows=>$value){
				$summa = $summa + $value->$sumta;
				$tota = $tota + $value->$tonta;
				$pera = $pera + $value->$penra;
			}
			$divi = date_diff(date_create($dataDateStart),date_create($dataDateEnd));
            $divide = $divi->d + 1;
			$finals =$summa/$divide;
			$finalt =$tota/$divide;
			$finalp =$pera/$divide;
			$data['getCommentSumData'] = array();
			$data['getCommentSumData']["$sumta"] = $finals;
			$data['getCommentSumData']["$tonta"] = $finalt;
			$data['getCommentSumData']["$penra"] = $finalp;

			//var_dump($summa,$divide);die();
		$data['getCommentDetailData'] = '';
		$data['getCommentImageData'] = '';
		$data['getPoint'] = '';
		}
		//var_dump($data['getCommentImageData']);die();

		
		$data['allBranch'] = $this->login_model->getBranchAll();
        $data['question'] = array();

        $branch = $_SESSION['f_branch_code'];
		$rm = $_SESSION['f_user_code'];
		$data['table'] = $lang;
        
		$data['getBranch'] = $this->login_model->getBranch($branch,$rm);   		
		$data['graphLenth'] = 7;
		$data['formName'] = $this->uri->segment(3);
		$this->load->view('comment',$data);
	}

    
    public function checkdata()
    {
        $this->load->model('data_model');
        $this->load->model('login_model');
        $this->load->model('user_model');
        try{
        // รับชื่อฟอร์มจาก POST
		$formname = $this->input->post('table') ?: $this->uri->segment(3);			
        $tbl_topic_detail = "tbl_{$formname}_topic_detail";
        $tbl_checklist    = "tbl_{$formname}_checklist";
        $tbl_image        = "tbl_{$formname}_image";
        $tbl_image        = "tbl_{$formname}_image";
        $tbl_summary      = "tbl_sum_{$formname}";

        // ดึงจำนวนข้อจาก topic detail
        $this->db->order_by('f_topic_code', 'ASC');
        $topics = $this->db->get($tbl_topic_detail)->result_array();
        $topic_count = count($topics);

        // รับข้อมูลจาก POST
        $user_code    = $this->input->post('f_user_code');
        $user_name    = $this->input->post('f_user_name');
        $branch_code  = $this->input->post('f_branch_code');
        $date         = $this->input->post('f_datetime');
        $area_code    = $this->input->post('f_area_code');
        $qsc_total    = $this->input->post("f_{$formname}_total");
        $qsc_percent  = $this->input->post("f_{$formname}_percentage");
		//var_dump($this->input->post());die();
		

        // เตรียมข้อมูลสำหรับ checklist
        $data_checklist = [
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_area_code'   => $area_code,
            'f_datetime'    => $date
        ];

        $pass_count = 0;

        for ($i = 1; $i <= $topic_count; $i++) {
            $score = $this->input->post('f_score_' . $i) ?? 0;
            $formname_clean = substr($formname, 0, -1);
            $data_checklist['f_topic_code_' . $i] = strtoupper($formname_clean) . str_pad($i, 2, '0', STR_PAD_LEFT);
            //$data_checklist['f_topic_code_' . $i] = strtoupper($formname) . str_pad($i, 2, '0', STR_PAD_LEFT);
            $data_checklist['f_score_' . $i] = $score;
            $data_checklist['f_comment_' . $i] = $this->input->post('f_comment_' . $i) ?? '';

            if ($score == 1) {
                $pass_count++;
            }
        }

        $this->db->insert($tbl_checklist, $data_checklist);
        $last_id = $this->db->insert_id();
        $filename = "insert-log.txt";
        $new_line_content = "insert checklist data|$branch_code|$date|$user_code|$formname" . PHP_EOL; 
        $file_handle = fopen($filename, "a") or die("Unable to open file!");
        fwrite($file_handle, $new_line_content);

        // เตรียมข้อมูลสำหรับ image
        $data_image = [
            'f_id'          => $last_id,
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_datetime'    => $date
        ];

        $allowed_extensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'];

        for ($i = 1; $i <= $topic_count; $i++) {
            $field = 'f_image_path_' . $i;

            if (!empty($_FILES[$field]['name'])) {
                $original_extension = strtolower(pathinfo($_FILES[$field]['name'], PATHINFO_EXTENSION));
                if (in_array($original_extension, $allowed_extensions)) {
                    $filename = time() . $i . '.' . $original_extension;

					$target_path = 'img/area_service_checklist/' . $filename;
                    move_uploaded_file($_FILES[$field]['tmp_name'], $target_path);
                    $formname_clean = substr($formname, 0, -1);
                    $data_image['f_topic_code_' . $i] = strtoupper($formname_clean) . str_pad($i, 2, '0', STR_PAD_LEFT);
                   // $data_image['f_topic_code_' . $i] = strtoupper($formname) . str_pad($i, 2, '0', STR_PAD_LEFT);
                    $data_image['f_image_path_' . $i] = $filename;
                } else {
                    $data_image['f_topic_code_' . $i] = null;
                    $data_image['f_image_path_' . $i] = null;
                }
            } else {
                $data_image['f_topic_code_' . $i] = null;
                $data_image['f_image_path_' . $i] = null;
            }
        }

        $this->db->insert($tbl_image, $data_image);
        $new_line_content2 = "insert image data|$branch_code|$date|$user_code|$formname" . PHP_EOL; 
        fwrite($file_handle, $new_line_content2);
        $this->db->where('f_user_code', $user_code);
        $user = $this->db->get('tbl_user_naragroup')->row();
        $this->db->where('f_branch_code', $branch_code);
        $branch = $this->db->get('tbl_branch')->row();

        // บันทึก summary
        $data_sum = [
            "f_{$formname}_id"         => $last_id,
            "f_{$formname}_sum"        => $pass_count,
            "f_{$formname}_total"      => $qsc_total,
            "f_{$formname}_percentage" => $qsc_percent,
            'f_user_code'      => $user_code,
            'f_user_name_th'   => $user->f_user_name_th ?? '',
            'f_user_name_en'   => $user->f_user_name_en ?? '',
            'f_branch_code'    => $branch_code,
            'f_branch_name_en' => $branch->f_branch_name_en ?? '',
            'f_datetime'       => $date,
            'f_area_name'      => $user->f_area_code ?? ''
        ];

        $this->db->insert($tbl_summary, $data_sum);
        $new_line_content3 = "insert Sum data|a|$branch_code|$date|sum $pass_count|total $qsc_total|$qsc_percent %|$formname" . PHP_EOL; 
        fwrite($file_handle, $new_line_content3);
        fclose($file_handle);

        // โหลด dashboard เหมือนเดิม
        $branch = $_SESSION['f_branch_code'];
        $rm = $_SESSION['f_user_code'];
        $graphData = $_SESSION['graph']; 
        $getBranch = $this->login_model->getBranch($branch,$rm);

        $data['graph'] = array();
        foreach($getBranch as $value7){
            $sum = array();
            array_push($sum,$value7->f_branch_name_th);
            for($d=0;$d<7;$d++){
                $getDate =  date('Y-m-d',strtotime("-$d days"));
                $getPercent =  $this->data_model->getBranchData($value7->f_branch_code,$getDate,$graphData);
                $getfield = "f_".$graphData."_percentage";
                $pc = $getPercent ? round($getPercent[0]->$getfield,0) : 0.1;
                array_push($sum,$pc);
                array_push($sum,$getDate);
            }
            array_push($data['graph'],$sum);
        }

        $data['arealist'] = $this->data_model->getAreaManager();
        $data['activities'] = $this->data_model->getAreaManager();

        $data['graphLenth'] = 7;
        } catch (Exception $e) {
        $erroeget = $e->getMessage();
        echo "Caught exception: " . $e->getMessage() . "\n";

        $filename = "error-log.txt";
        $new_line_content = "Error:$errorget" . PHP_EOL; 
        $file_handle = fopen($filename, "a") or die("Unable to open file!");
        fwrite($file_handle, $new_line_content);
        fclose($file_handle);
        die();
        }
/*
        $iff = 3;
        $getpermittion = $this->user_model->getpermittion($iff);
        $getData = explode(',',$getpermittion[0]->f_sidebar_auth);

        
        $data['sidebarPermittion'] = $getData;
*/
        $data['table'] = $formname;
        $this->load->view('dashboard',$data);
    }
	
/*	
	// Begin Checkdata2
		public function checkdata2()
    {
		$this->load->model('data_model');
		$this->load->model('login_model');
		$this->load->model('user_model');

        $user_code    = $this->input->post('f_user_code');
        $user_name    = $this->input->post('f_user_name');
        $branch_code  = $this->input->post('f_branch_code');
        $date         = $this->input->post('f_datetime');
        $area_code    = $this->input->post('f_area_code');
        $dca_total    = $this->input->post('f_dca1_total');
        $dca_percent  = $this->input->post('f_dca1_percentage');

		//var_dump($this->input->post());die();
        // เตรียมข้อมูลสำหรับ tbl_dca1_checklist
        $data_checklist = [
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_area_code'   => $area_code,
            'f_datetime'    => $date
        ];

        $pass_count = 0;

        for ($i = 1; $i <= 66; $i++) {
            $score = $this->input->post('f_score_' . $i) ?? 0;
            $data_checklist['f_topic_code_' . $i] = 'DCA' . str_pad($i, 2, '0', STR_PAD_LEFT);
            $data_checklist['f_score_' . $i] = $score;
            $data_checklist['f_comment_' . $i] = $this->input->post('f_comment_' . $i) ?? '';

            if ($score == 1) {
                $pass_count++;
            }
        }

		//var_dump($data_checklist);die();
        $this->db->insert('tbl_dca1_checklist', $data_checklist);
        $last_id = $this->db->insert_id();

		
        // เตรียมข้อมูลสำหรับ tbl_dca1_image (แนวนอน)
        $data_image = [
            'f_id'      => $last_id,
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_datetime'    => $date
        ];

        $allowed_extensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp']; // รองรับนามสกุลรูปทั่วไป

        for ($i = 1; $i <= 66; $i++) {
            $field = 'f_image_path_' . $i;

            if (!empty($_FILES[$field]['name'])) {
                $original_extension = strtolower(pathinfo($_FILES[$field]['name'], PATHINFO_EXTENSION));

                // ตรวจสอบว่านามสกุลถูกต้อง
                if (in_array($original_extension, $allowed_extensions)) {
                    // สร้างชื่อไฟล์ใหม่แบบสุ่มไม่ซ้ำ
                    $filename = time() . $i . '.' . $original_extension;					
                    $target_path = 'img/area_service_checklist/' . $filename;

                    move_uploaded_file($_FILES[$field]['tmp_name'], $target_path);

					$data_image['f_topic_code_' . $i] = 'DCA' . str_pad($i, 2, '0', STR_PAD_LEFT);
                    $data_image['f_image_path_' . $i] = $filename;
                } else {
                    // นามสกุลไม่รองรับ
                    $data_image['f_topic_code_' . $i] = null;
                    $data_image['f_image_path_' . $i] = null;
                }
            } else {
                $data_image['f_topic_code_' . $i] = null;
                $data_image['f_image_path_' . $i] = null;
            }
        }

		
        $this->db->insert('tbl_dca1_image', $data_image);

        // ดึงข้อมูลผู้ใช้จาก tbl_user_naragroup
        $this->db->where('f_user_code', $user_code);
        $user = $this->db->get('tbl_user_naragroup')->row();

        // ดึงข้อมูลสาขา
        $this->db->where('f_branch_code', $branch_code);
        $branch = $this->db->get('tbl_branch')->row();

        // บันทึกข้อมูลลง tbl_sum_qsc1
        $data_sum = [
            'f_dca1_id'         => $last_id,
            'f_dca1_sum'        => $pass_count,
            'f_dca1_total'      => $dca_total,
            'f_dca1_percentage' => $dca_percent,
            'f_user_code'      => $user_code,
            'f_user_name_th'   => $user->f_user_name_th ?? '',
            'f_user_name_en'   => $user->f_user_name_en ?? '',
            'f_branch_code'    => $branch_code,
            'f_branch_name_en' => $branch->f_branch_name_en ?? '',
            'f_datetime'       => $date,
            'f_area_name'      => $user->f_area_code ?? ''
        ];

		
        $this->db->insert('tbl_sum_dca1', $data_sum);		
		
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


        $data['graphLenth'] = 7;
		$this->load->view('dashboard',$data);
    }		
	// End of Checkdata2
	
	
	// Begin Checkdata3 QSCE1
	public function checkdata3()
    {
		$this->load->model('data_model');
		$this->load->model('login_model');
		$this->load->model('user_model');

        $user_code    = $this->input->post('f_user_code');
        $user_name    = $this->input->post('f_user_name');
        $branch_code  = $this->input->post('f_branch_code');
        $date         = $this->input->post('f_datetime');
        $area_code    = $this->input->post('f_area_code');
        $qsce_total    = $this->input->post('f_qsce1_total');
        $qsce_percent  = $this->input->post('f_qsce1_percentage');

		//var_dump($this->input->post());die();
        // เตรียมข้อมูลสำหรับ tbl_qsce1_checklist
        $data_checklist = [
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_area_code'   => $area_code,
            'f_datetime'    => $date
        ];

        $pass_count = 0;

        for ($i = 1; $i <= 101; $i++) {
            $score = $this->input->post('f_score_' . $i) ?? 0;
            $data_checklist['f_topic_code_' . $i] = 'QSCE' . str_pad($i, 2, '0', STR_PAD_LEFT);
            $data_checklist['f_score_' . $i] = $score;
            $data_checklist['f_comment_' . $i] = $this->input->post('f_comment_' . $i) ?? '';

            if ($score == 1) {
                $pass_count++;
            }
        }

        $this->db->insert('tbl_qsce1_checklist', $data_checklist);
        $last_id = $this->db->insert_id();

        // เตรียมข้อมูลสำหรับ tbl_qsce1_image (แนวนอน)
        $data_image = [
            'f_id'      => $last_id,
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_datetime'    => $date
        ];

        $allowed_extensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp']; // รองรับนามสกุลรูปทั่วไป

        for ($i = 1; $i <= 101; $i++) {
            $field = 'f_image_path_' . $i;

            if (!empty($_FILES[$field]['name'])) {
                $original_extension = strtolower(pathinfo($_FILES[$field]['name'], PATHINFO_EXTENSION));

                // ตรวจสอบว่านามสกุลถูกต้อง
                if (in_array($original_extension, $allowed_extensions)) {
                    // สร้างชื่อไฟล์ใหม่แบบสุ่มไม่ซ้ำ
                    $filename = time() . $i . '.' . $original_extension;					
                    $target_path = 'img/area_service_checklist/' . $filename;

                    move_uploaded_file($_FILES[$field]['tmp_name'], $target_path);

					$data_image['f_topic_code_' . $i] = 'QSCE' . str_pad($i, 2, '0', STR_PAD_LEFT);
                    $data_image['f_image_path_' . $i] = $filename;
                } else {
                    // นามสกุลไม่รองรับ
                    $data_image['f_topic_code_' . $i] = null;
                    $data_image['f_image_path_' . $i] = null;
                }
            } else {
                $data_image['f_topic_code_' . $i] = null;
                $data_image['f_image_path_' . $i] = null;
            }
        }


        $this->db->insert('tbl_qsce1_image', $data_image);

        // ดึงข้อมูลผู้ใช้จาก tbl_user_naragroup
        $this->db->where('f_user_code', $user_code);
        $user = $this->db->get('tbl_user_naragroup')->row();

        // ดึงข้อมูลสาขา
        $this->db->where('f_branch_code', $branch_code);
        $branch = $this->db->get('tbl_branch')->row();

        // บันทึกข้อมูลลง tbl_sum_qsce1
        $data_sum = [
            'f_qsce1_id'         => $last_id,
            'f_qsce1_sum'        => $pass_count,
            'f_qsce1_total'      => $qsce_total,
            'f_qsce1_percentage' => $qsce_percent,
            'f_user_code'      => $user_code,
            'f_user_name_th'   => $user->f_user_name_th ?? '',
            'f_user_name_en'   => $user->f_user_name_en ?? '',
            'f_branch_code'    => $branch_code,
            'f_branch_name_en' => $branch->f_branch_name_en ?? '',
            'f_datetime'       => $date,
            'f_area_name'      => $user->f_area_code ?? ''
        ];

        $this->db->insert('tbl_sum_qsce1', $data_sum);		
		
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


        $data['graphLenth'] = 7;
		$this->load->view('dashboard',$data);
    }			
	// End of Checkdata3

	
	// Begin Checkdata4 BCL1
	public function checkdata4()
    {
		$this->load->model('data_model');
		$this->load->model('login_model');
		$this->load->model('user_model');

        $user_code    = $this->input->post('f_user_code');
        $user_name    = $this->input->post('f_user_name');
        $branch_code  = $this->input->post('f_branch_code');
        $date         = $this->input->post('f_datetime');
        $area_code    = $this->input->post('f_area_code');
        $bcl_total    = $this->input->post('f_bcl1_total');
        $bcl_percent  = $this->input->post('f_bcl1_percentage');

		//var_dump($this->input->post());die();
        // เตรียมข้อมูลสำหรับ tbl_bcl1_checklist
        $data_checklist = [
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_area_code'   => $area_code,
            'f_datetime'    => $date
        ];

        $pass_count = 0;

        for ($i = 1; $i <= 45; $i++) {
            $score = $this->input->post('f_score_' . $i) ?? 0;
            $data_checklist['f_topic_code_' . $i] = 'BCL' . str_pad($i, 2, '0', STR_PAD_LEFT);
            $data_checklist['f_score_' . $i] = $score;
            $data_checklist['f_comment_' . $i] = $this->input->post('f_comment_' . $i) ?? '';

            if ($score == 1) {
                $pass_count++;
            }
        }

        $this->db->insert('tbl_bcl1_checklist', $data_checklist);
        $last_id = $this->db->insert_id();

        // เตรียมข้อมูลสำหรับ tbl_bcl1_image (แนวนอน)
        $data_image = [
            'f_id'      => $last_id,
            'f_user_code'   => $user_code,
            'f_branch_code' => $branch_code,
            'f_datetime'    => $date
        ];

        $allowed_extensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp']; // รองรับนามสกุลรูปทั่วไป

        for ($i = 1; $i <= 45; $i++) {
            $field = 'f_image_path_' . $i;

            if (!empty($_FILES[$field]['name'])) {
                $original_extension = strtolower(pathinfo($_FILES[$field]['name'], PATHINFO_EXTENSION));

                // ตรวจสอบว่านามสกุลถูกต้อง
                if (in_array($original_extension, $allowed_extensions)) {
                    // สร้างชื่อไฟล์ใหม่แบบสุ่มไม่ซ้ำ
                    $filename = time() . $i . '.' . $original_extension;					
                    $target_path = 'img/area_service_checklist/' . $filename;

                    move_uploaded_file($_FILES[$field]['tmp_name'], $target_path);

					$data_image['f_topic_code_' . $i] = 'BCL' . str_pad($i, 2, '0', STR_PAD_LEFT);
                    $data_image['f_image_path_' . $i] = $filename;
                } else {
                    // นามสกุลไม่รองรับ
                    $data_image['f_topic_code_' . $i] = null;
                    $data_image['f_image_path_' . $i] = null;
                }
            } else {
                $data_image['f_topic_code_' . $i] = null;
                $data_image['f_image_path_' . $i] = null;
            }
        }


        $this->db->insert('tbl_bcl1_image', $data_image);

        // ดึงข้อมูลผู้ใช้จาก tbl_user_naragroup
        $this->db->where('f_user_code', $user_code);
        $user = $this->db->get('tbl_user_naragroup')->row();

        // ดึงข้อมูลสาขา
        $this->db->where('f_branch_code', $branch_code);
        $branch = $this->db->get('tbl_branch')->row();

        // บันทึกข้อมูลลง tbl_sum_bcl1
        $data_sum = [
            'f_bcl1_id'         => $last_id,
            'f_bcl1_sum'        => $pass_count,
            'f_bcl1_total'      => $bcl_total,
            'f_bcl1_percentage' => $bcl_percent,
            'f_user_code'      => $user_code,
            'f_user_name_th'   => $user->f_user_name_th ?? '',
            'f_user_name_en'   => $user->f_user_name_en ?? '',
            'f_branch_code'    => $branch_code,
            'f_branch_name_en' => $branch->f_branch_name_en ?? '',
            'f_datetime'       => $date,
            'f_area_name'      => $user->f_area_code ?? ''
        ];

        $this->db->insert('tbl_sum_bcl1', $data_sum);		
		
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

        $data['graphLenth'] = 7;
		$this->load->view('dashboard',$data);
    }	
	// End of Checkdata4 BCL1
	
	*/
	
	
	
	
	
}