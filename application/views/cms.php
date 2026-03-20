<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->load->helper('url');
$this->lang->load("form_input",$_SESSION['slang']);
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Admin Panal</title>
 <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/@fontsource/source-sans-3@5.0.12/index.css"
      integrity="sha256-tXJfXfp6Ewt1ilPzLDtQnJV4hclT9XuaZUKyUvmyr+Q="
      crossorigin="anonymous"
    />
    <!--end::Fonts-->
    <!--begin::Third Party Plugin(OverlayScrollbars)-->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.10.1/styles/overlayscrollbars.min.css"
      integrity="sha256-tZHrRjVqNSRyWg2wbppGnT833E/Ys0DHWGwT04GiqQg="
      crossorigin="anonymous"
    />
    <!--end::Third Party Plugin(OverlayScrollbars)-->
    <!--begin::Third Party Plugin(Bootstrap Icons)-->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
      integrity="sha256-9kPW/n5nn53j4WMRYAxe9c1rCY96Oogo/MKSVdKzPmI="
      crossorigin="anonymous"
    />
    <!--end::Third Party Plugin(Bootstrap Icons)-->
    <!--begin::Required Plugin(AdminLTE)-->
    <link rel="stylesheet" href="/online_inter/css/adminlte.css" />
    <!--end::Required Plugin(AdminLTE)-->

</head>

<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">   

<?php //var_dump($_SESSION);die(); ?>
<div class="app-wrapper">
	<!-- HERE Comes Header -->
		<?php $this->load->view('header'); ?> 
        <!-- HERE Comes Side Bar -->
        
   <main class="app-main"><br><br>
  
   <div class="row">
              <div class="col-sm-6"><h3 class="mb-0">Training</h3></div>
    </div>
     <div class="row">
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-primary shadow-sm">
                    <i class="bi bi-book-fill"></i>
                  </span>
                  <div class="info-box-content">
                    <span class="info-box-text">Course MANAGEMENT</span>
                    <span class="info-box-number">
                      
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
                <!--  <button type="button" class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#addCert">เพิ่ม cert</button>  <button type="button" class="btn btn-warning mb-2" data-bs-toggle="modal" data-bs-target="#addCourse">เพิ่มหลักสูตร</button>  <button type="button" class="btn btn-danger mb-2" data-bs-toggle="modal" data-bs-target="#addTopic">เพิ่มหัวข้ออบรม</button>
                -->  <button type="button" class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#addStep">เพิ่มหลักสูตร-คอสอบรม-หัวข้ออบรม</button> 
              </div>
              <!-- /.col -->
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-danger shadow-sm">
                    <i class="bi bi-person-bounding-box"></i>
                  </span>
                  <div class="info-box-content">
                    <span class="info-box-text">Staff Training MANAGEMENT</span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
                 <button type="button" class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#addStaff">เพิ่มพนักงาน</button>  <button type="button" class="btn btn-warning mb-2" data-bs-toggle="modal" data-bs-target="#editStaff">แก้ไขข้อมูล</button>  <button type="button" class="btn btn-danger mb-2" data-bs-toggle="modal" data-bs-target="#deleteStaff">ลบพนักงาน</button>
              </div>
              <!-- /.col -->
              <!-- fix for small devices only -->
              <!-- <div class="clearfix hidden-md-up"></div> -->
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-success shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span>
                  <div class="info-box-content">
                    <span class="info-box-text">Evaluate Management</span>
                   
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
                      <button type="button" class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#addTest">เพิ่มข้อสอบ</button>  

              </div>
              <!-- /.col -->

              <!-- /.col -->
            </div>
           
  </main>
</div>

<!-- The Modal Staff-->
<div class="modal fade" id="addStaff" tabindex="-1" aria-labelledby="addStaffLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">เพิ่มรายชื่อพนักงาน</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <?php  $this->load->model('data_model');
               
        $getBranchAll = $this->data_model->getBranchAll();
        $getFunction = $this->data_model->getFunction();
        $getStaffAll = $this->data_model->getStaffAll();
        $getCertAll = $this->data_model->getCertAll();
        $getTopicAll = $this->data_model->getTopicAll();
        $getFunctionAll = $this->data_model->getFunctionAll();

        
        ?>
        <form action="<?php echo base_url();?>admin/addstaff" enctype="multipart/form-data" method="POST">
        <select  id="f_branch" name="f_branch" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">เลือกสาขา</option>
                         <?php if ($_SESSION['slang'] == 'english'){ 
                      foreach($getBranchAll as $rows3=>$value3){ ?>
                        <option value="<?php echo $value3->f_branch_code;?>"><?php echo $value3->f_branch_name_en;?></option>
                      <?php }
                      } else {
                         foreach($getBranchAll as $rows3=>$value3){ ?>
                        <option value="<?php echo $value3->f_branch_code; ?>"><?php echo $value3->f_branch_name_th;?></option>
                      <?php }
                        }?>
                        </select><br>
          
         <input placeholder='รหัสพนักงาน' type='textarea' size='40' name='<?php echo "f_user_code"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ชื่อภาษาไทย' type='textarea' size='40' name='<?php echo "f_name_th"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ขื่อภาษาอังกฤษ' type='textarea' size='40' name='<?php echo "f_name_en"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ชื่อเล่น' type='textarea' size='40' name='<?php echo "f_nickname"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ตำแหน่ง' type='textarea' size='40' name='<?php echo "f_position"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <select  id="f_function" name="f_function" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">ระบุฟังก์ชั่นงาน</option>                        
                        <?php foreach($getFunction as $rows3=>$value3){ ?>
                        <option value="<?php echo $value3->f_function_code; ?>"><?php echo $value3->f_function_name;?></option>
                      <?php } ?>
                        </select><br>
          <br>                     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button> </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="editStaff" tabindex="-1" aria-labelledby="editStaffLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">แก้ไขข้อมูลพนักงาน</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url();?>admin/editstaff" enctype="multipart/form-data" method="POST">
        <select  id="f_user_code" name="f_user_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">เลือกพนักงาน</option>
                         <?php if ($_SESSION['slang'] == 'english'){ 
                      foreach($getStaffAll as $rows4=>$value4){ ?>
                        <option value="<?php echo $value4->f_user_code;?>"><?php echo $value4->f_name_en.'-'.$value4->f_user_code.'-'.$value4->f_branch_name;?></option>
                      <?php }
                      } else {
                         foreach($getStaffAll as $rows4=>$value4){ ?>
                        <option value="<?php echo $value4->f_user_code; ?>"><?php echo $value4->f_name_th.'-'.$value4->f_user_code.'-'.$value4->f_branch_name;?></option>
                      <?php }
                        }?>
                        </select><br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-danger">แก้ไขพนักงาน</button> </form>
      </div>
    </div>
  </div>
</div>



<div class="modal fade" id="deleteStaff" tabindex="-1" aria-labelledby="deleteStaffLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">ลบพนักงาน</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       
        <form action="<?php echo base_url();?>admin/deletestaff" enctype="multipart/form-data" method="POST">
        <select  id="f_user_code" name="f_user_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">เลือกพนักงาน</option>
                         <?php if ($_SESSION['slang'] == 'english'){ 
                      foreach($getStaffAll as $rows4=>$value4){ ?>
                        <option value="<?php echo $value4->f_user_code;?>"><?php echo $value4->f_name_en.'-'.$value4->f_user_code.'-'.$value4->f_branch_name;?></option>
                      <?php }
                      } else {
                         foreach($getStaffAll as $rows4=>$value4){ ?>
                        <option value="<?php echo $value4->f_user_code; ?>"><?php echo $value4->f_name_th.'-'.$value4->f_user_code.'-'.$value4->f_branch_name;?></option>
                      <?php }
                        }?>
                        </select><br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-danger">ลบพนักงาน</button> </form>
      </div>
    </div>
  </div>
</div>
<!-- The Modal Course-->
<div class="modal fade" id="addCert" tabindex="-1" aria-labelledby="addCertLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">เพิ่มใบรับรอง</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url();?>admin/addcert" enctype="multipart/form-data" method="POST">
       <br>
          
         <input placeholder='รหัสหลักสูตร' type='textarea' size='40' name='<?php echo "f_cert_code"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ชื่อภาษาไทย' type='textarea' size='40' name='<?php echo "f_cert_detail_th"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ขื่อภาษาอังกฤษ' type='textarea' size='40' name='<?php echo "f_cert_detail_en"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
       
          <br>                     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button> </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="addCourse" tabindex="-1" aria-labelledby="addCourseLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">เพิ่มหลักสูตร</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url();?>admin/addcourse" enctype="multipart/form-data" method="POST">
       <br>
       <select  id="f_cert_code" name="f_cert_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">เลือกใบรับรอง</option>
                         <?php if ($_SESSION['slang'] == 'english'){ 
                      foreach($getCertAll as $rows5=>$value5){ ?>
                        <option value="<?php echo $value5->f_cert_code;?>"><?php echo $value5->f_cert_detail_en;?></option>
                      <?php }
                      } else {
                         foreach($getCertAll as $rows5=>$value5){ ?>
                        <option value="<?php echo $value5->f_cert_code; ?>"><?php echo $value5->f_cert_detail_th;?></option>
                      <?php }
                        }?>
                        </select><br>
          
         <input placeholder='รหัสหลักสูตร' type='textarea' size='40' name='<?php echo "f_course_code"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ชื่อหลักสูตรภาษาไทย' type='textarea' size='40' name='<?php echo "f_course_detail_th"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ขื่อภาษาอังกฤษ' type='textarea' size='40' name='<?php echo "f_course_detail_en"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
       
          <br>                     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button> </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="addTopic" tabindex="-1" aria-labelledby="addTopicLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">เพิ่มหัวข้ออบรม</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url();?>admin/addtopic" enctype="multipart/form-data" method="POST">
       <br>
       <select  id="f_course_code" name="f_course_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">เลือกใบรับรอง</option>
                         <?php if ($_SESSION['slang'] == 'english'){ 
                      foreach($getTopicAll as $rows7=>$value7){ ?>
                        <option value="<?php echo $value7->f_course_code;?>"><?php echo $value7->f_cert_code.' - '.$value7->f_course_detail_en;?></option>
                      <?php }
                      } else {
                         foreach($getTopicAll as $rows7=>$value7){ ?>
                        <option value="<?php echo $value7->f_course_code; ?>"><?php echo $value7->f_cert_code.' - '.$value7->f_course_detail_th;?></option>
                      <?php }
                        }?>
                        </select><br>
              <div id="inputFieldsContainer">
               
              </div>
              <button type="button" onclick="addTextField()">Add More Topic</button>
          <br>
        <select  id="f_function_code" name="f_function_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">เลือก Function</option>
                         <?php 
                      foreach($getFunctionAll as $rows9=>$value9){ ?>
                        <option value="<?php echo $value9->f_function_code;?>"><?php echo $value9->f_function_name;?></option>
                      <?php }
                     ?>
                        </select><br>                     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button> </form>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="addTest" tabindex="-1" aria-labelledby="addTestLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">เพิ่มข้อสอบประเมิน</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url();?>admin/addtest" enctype="multipart/form-data" method="POST">
       <br>
       <select  id="f_cert_code" name="f_cert_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">เลือกใบรับรอง</option>
                         <?php if ($_SESSION['slang'] == 'english'){ 
                      foreach($getCertAll as $rows7=>$value7){ ?>
                        <option value="<?php echo $value7->f_cert_code;?>"><?php echo $value7->f_cert_code.' - '.$value7->f_cert_detail_en;?></option>
                      <?php }
                      } else {
                         foreach($getCertAll as $rows7=>$value7){ ?>
                        <option value="<?php echo $value7->f_cert_code; ?>"><?php echo $value7->f_cert_code.' - '.$value7->f_cert_detail_th;?></option>
                      <?php }
                        }?>
                        </select><br>
        <input placeholder='รหัสข้อสอบ' type='textarea' size='40' name='<?php echo "f_eva_code"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ตัวย่อแบบทดสอบ' type='textarea' size='40' name='<?php echo "f_eva_prefix"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
       
              <div id="inputFieldsContainer2">
               
              </div>
              <button type="button" onclick="addTextField2()">Add More Test</button>
          <br>
                         
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button> </form>
      </div>
    </div>
  </div>
</div>
                      <!--End Modal -->

<div class="modal fade" id="addStep" tabindex="-1" aria-labelledby="addCertLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">เพิ่มหลักสูตร</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
       <br>
          
         <input placeholder='รหัสหลักสูตร' type='textarea' size='40' name='<?php echo "f_cert_code"; ?>' id='<?php echo "f_cert_code2"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ชื่อภาษาไทย' type='textarea' size='40' name='<?php echo "f_cert_detail_th"; ?>' id='<?php echo "f_cert_detail_th1"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
        <input placeholder='ขื่อภาษาอังกฤษ' type='textarea' size='40' name='<?php echo "f_cert_detail_en"; ?>' id='<?php echo "f_cert_detail_en1"; ?>' onkeydown="return (event.keyCode!=13);" ><br><br>
       
          <br>                     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#addStep2" onclick="addC()">Next</button>
       
      </div>
    </div>
  </div>
</div>
 <form id='sbm' action="<?php echo base_url();?>admin/addstep" enctype="multipart/form-data" method="POST">
<div class="modal fade" id="addStep2" tabindex="-1" aria-labelledby="addCourseLabel" aria-hidden="true" >
  <div class="modal-dialog modal-70 modal-dialog-centered" style="width: 650px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">เพิ่มคอส หลักสูตร &nbsp; <input  type='textarea' size='20' name='Cname' id='Cname' readonly='readonly'></h5>
        
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        
      </div>
       <h5><input  type='textarea' size='20' name='Cname2' id='Cname2' readonly='readonly' hidden='hidden'> | <input  type='textarea' size='20' name='Cname3' id='Cname3' readonly='readonly' hidden='hidden'></h5>
      <div class="modal-body">
       
       <br>
          
        <div id="inputFieldsContainer3" style="width: 650px;">
               
              </div>
              <button type="button" onclick="addTextField3()">Add More Course</button>
       
          <br>                     
      </div>
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel">เพิ่มหัวข้ออบรม หลักสูตร</h5> &nbsp; 
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       
       <br>
       
              <div id="inputFieldsContainer4" style="width: 650px;">
               
              </div>
              <button type="button" onclick="addTextField4()">Add More Topic</button>
          <br>
                   
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary mb-2" data-bs-toggle="modal"  onclick="sbm()"><?php echo $this->lang->line('submit');?></button>
      </div>
    </div>
  </div>
</div> </form>


</body>
<script>
function addTextField() {
    const container = document.getElementById('inputFieldsContainer');   
    const lineBreak = document.createElement('br');
    const newField = document.createElement('input');
    newField.type = 'text';
    newField.name = 'myTextField[]'; // Use array notation for PHP
    newField.placeholder = 'รหัสหัวข้อ';
    const newField2 = document.createElement('input');
    newField2.type = 'text';
    newField2.name = 'myTextField[]'; // Use array notation for PHP
    newField2.placeholder = 'Topic';
    container.appendChild(newField);
    container.appendChild(newField2);
    container.appendChild(lineBreak);
}

function addTextField2() {
    const container2 = document.getElementById('inputFieldsContainer2');   
    const lineBreak2 = document.createElement('br');
    const newField3 = document.createElement('input');
    newField3.type = 'text';
    newField3.name = 'myTextField[]'; // Use array notation for PHP
    newField3.placeholder = 'ภาษาไทย';
    const newField4 = document.createElement('input');
    newField4.type = 'text';
    newField4.name = 'myTextField[]'; // Use array notation for PHP
    newField4.placeholder = 'ภาษาอังกฤษ';
    const newField5 = document.createElement('input');
    newField5.type = 'text';
    newField5.name = 'myTextField[]'; // Use array notation for PHP
    newField5.placeholder = 'คำนวนคะแนนขึ้นกับคอส';
    container2.appendChild(newField3);
    container2.appendChild(newField4);
    container2.appendChild(newField5);
    container2.appendChild(lineBreak2);
}

function addTextField3() {
    const container3 = document.getElementById('inputFieldsContainer3');   
    const lineBreak3 = document.createElement('br');
    const newField6 = document.createElement('input');
    newField6.type = 'text';
    newField6.name = 'myTextField5[]'; // Use array notation for PHP
    newField6.placeholder = 'รหัสคอส';
    const newField7 = document.createElement('input');
    newField7.type = 'text';
    newField7.name = 'myTextField5[]'; // Use array notation for PHP
    newField7.placeholder = 'ภาษาไทย';
    const newField8 = document.createElement('input');
    newField8.type = 'text';
    newField8.name = 'myTextField5[]'; // Use array notation for PHP
    newField8.placeholder = 'ภาษาอังกฤษ';
    container3.appendChild(newField6);
    container3.appendChild(newField7);
    container3.appendChild(newField8);
    container3.appendChild(lineBreak3);
}

function addTextField4() {
    const container4 = document.getElementById('inputFieldsContainer4');   
    const lineBreak4 = document.createElement('br');
    const newField9 = document.createElement('input');
    newField9.type = 'text';
    newField9.name = 'myTextField2[]'; // Use array notation for PHP
    newField9.placeholder = 'รหัสคอสของหัวข้อ';
    const newField10 = document.createElement('input');
    newField10.type = 'text';
    newField10.name = 'myTextField2[]'; // Use array notation for PHP
    newField10.placeholder = 'รหัสหัวข้อ';
    const newField11 = document.createElement('input');
    newField11.type = 'text';
    newField11.name = 'myTextField2[]'; // Use array notation for PHP
    newField11.placeholder = 'ภาษาไทย';
    const newField12 = document.createElement('input');
    newField12.type = 'text';
    newField12.name = 'myTextField2[]'; // Use array notation for PHP
    newField12.placeholder = 'ภาษาอังกฤษ';
    const newField13 = document.createElement('select');
    newField13.name = 'myTextField2[]'; // Use array notation for PHP
    const option1 = document.createElement('option');
    option1.value = '';
    option1.text = '--- เลือก Function งาน ---';
    const option2 = document.createElement('option');
    option2.value = 'DEPT01';
    option2.text = 'Operation';
    const option3 = document.createElement('option');
    option3.value = 'DEPT02';
    option3.text = 'Kitchen';
    const option4 = document.createElement('option');
    option4.value = 'DEPT03';
    option4.text = 'Bar';
    const option5 = document.createElement('option');
    option5.value = 'DEPT04';
    option5.text = 'Dessert';
    const option6 = document.createElement('option');
    option6.value = 'DEPT05';
    option6.text = 'Other';
    newField13.appendChild(option1);
    newField13.appendChild(option2);
    newField13.appendChild(option3);
    newField13.appendChild(option4);
    newField13.appendChild(option5);
    newField13.appendChild(option6);
    container4.appendChild(newField9);
    container4.appendChild(newField10);
    container4.appendChild(newField11);
    container4.appendChild(newField12);
    container4.appendChild(newField13);
    container4.appendChild(lineBreak4);
}

function addC() {
    const certcode = document.getElementById('f_cert_code2');
    const f_cert_detail_th1 = document.getElementById('f_cert_detail_th1');
    const f_cert_detail_en1 = document.getElementById('f_cert_detail_en1');
    const ccode = document.getElementById('Cname');
    const ccode2 = document.getElementById('Cname2');
    const ccode3 = document.getElementById('Cname3');
    ccode.value = certcode.value;
    ccode2.value = f_cert_detail_th1.value;
    ccode3.value = f_cert_detail_en1.value;
}
     
function sbm() {
    const sbm = document.getElementById('sbm');
    sbm.submit();
    //ccode2.value = certcode.value;
}

</script>
      <footer class="app-footer">
        <!--begin::To the end-->
        <div class="float-end d-none d-sm-inline" id='loadtime'></div>
        <!--end::To the end-->
        <!--begin::Copyright-->
        <strong>
          Copyright &copy; 2025-2030&nbsp;
          <a href="https://adminlte.io" class="text-decoration-none">IT TEAM</a>.
        </strong>
        All rights reserved.
        <!--end::Copyright-->
      </footer>

	   <script
      src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.10.1/browser/overlayscrollbars.browser.es6.min.js"
      integrity="sha256-dghWARbRe2eLlIJ56wNB+b760ywulqK3DzZYEpsg2fQ="
      crossorigin="anonymous"
    ></script>
    <!--end::Third Party Plugin(OverlayScrollbars)--><!--begin::Required Plugin(popperjs for Bootstrap 5)-->
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
      integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
      crossorigin="anonymous"
    ></script>
    <!--end::Required Plugin(popperjs for Bootstrap 5)--><!--begin::Required Plugin(Bootstrap 5)-->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
      integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
      crossorigin="anonymous"
    ></script>
    <!--end::Required Plugin(Bootstrap 5)--><!--begin::Required Plugin(AdminLTE)-->
    <script src="/online_inter/js/adminlte.js"></script>
    <!--end::Required Plugin(AdminLTE)--><!--begin::OverlayScrollbars Configure-->
    <script>
      const SELECTOR_SIDEBAR_WRAPPER = '.sidebar-wrapper';
      const Default = {
        scrollbarTheme: 'os-theme-light',
        scrollbarAutoHide: 'leave',
        scrollbarClickScroll: true,
      };
      document.addEventListener('DOMContentLoaded', function () {
        const sidebarWrapper = document.querySelector(SELECTOR_SIDEBAR_WRAPPER);
        if (sidebarWrapper && typeof OverlayScrollbarsGlobal?.OverlayScrollbars !== 'undefined') {
          OverlayScrollbarsGlobal.OverlayScrollbars(sidebarWrapper, {
            scrollbars: {
              theme: Default.scrollbarTheme,
              autoHide: Default.scrollbarAutoHide,
              clickScroll: Default.scrollbarClickScroll,
            },
          });
        }
      });
    </script>
    <!--end::OverlayScrollbars Configure-->
    <!-- dropdown -->
 
    <!--/ dropdown -->
    <!-- OPTIONAL SCRIPTS -->


   
</html>
