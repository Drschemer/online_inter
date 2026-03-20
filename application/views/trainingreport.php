<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->load->helper('url');
$this->lang->load("form_input",$_SESSION['slang']);
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>TRaining Evaluate</title>
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
     

<div class="app-wrapper">
	<!-- HERE Comes Header -->
		<?php $this->load->view('header'); ?> 
    <?php $this->load->view('sidebar'); ?>

    <main class="app-main">
        <!--begin::App Content Header-->
        <div class="app-content-header">
          <!--begin::Container-->
          <div class="container-fluid">
            <!--begin::Row-->
            <div class="row">
              <div class="col-sm-6"><h3 class="mb-0"><?php echo $this->lang->line('reportHeader');?></h3></div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-end">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page"><?php echo $this->lang->line('sidemenu4');?></li>
                </ol>
              </div>
            </div>
            <!--end::Row-->
          </div>
          <!--end::Container-->
        </div>
        <!--end::App Content Header-->
        <!--begin::App Content-->
          <form action="<?php echo base_url();?>report/trainingreport" enctype="multipart/form-data" method="POST" id='eva'>
        <div class="app-content">
          <!--begin::Container-->
          <div class="container-fluid">
            <!-- Timelime example  -->
            <div class="row">
              
            <?php //var_dump($empData); ?>
              <div class="col-12 col-sm-6 col-md-6">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectreport');?></span>
                    <div class="col-md-12">
                        <select id="reporttype" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='report_type'>
                          <option value="">---Select---</option>                         
                          <?php if($_SESSION['slang'] == 'english'){ ?>
                          <option value="staff" <?php if($trainingreportselect == 'staff'){echo 'selected';} ?>>Report training by staff</option>  
                          <option value="cert" <?php if($trainingreportselect == 'cert'){echo 'selected';} ?>>Report training by certificate</option>  
                          <?php }else{ ?>
                          <option value="staff" <?php if($trainingreportselect == 'staff'){echo 'selected';} ?>>รายงานการฝึกอบรมตามพนักงาน</option>  
                          <option value="cert" <?php if($trainingreportselect == 'cert'){echo 'selected';} ?>>รายงานการฝึกอบรมตามหลักสูตร</option>    
                          <?php } ?>
                        </select>
                    </div>
                  </div> 
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
             
             <?php if($trainingreportselect == 'staff'){ ?>
              </div>
             <div class="row">
              <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectbranch');?></span>
                    <div class="col-md-12">
                        <select id="branchcode" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_branch_code'>
                          <option value="">---Select---</option>
                         <?php if($chkBranch < 999){$bdata = $chkCert;} foreach($trainingreport as $rows10=>$value10){ ?>
                         
                          <option value="<?php echo $value10->f_branch_code;  ?>" <?php if($value10->f_branch_code === $bdata){echo 'selected="selected"';}?>><?php if($_SESSION['slang'] == 'english'){echo $value10->f_branch_name_en;}else{echo $value10->f_branch_name_th;}?></option>
                          <?php	
			                    }?>
                        </select>
                    </div>
                  </div> 
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>

              <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectFunction');?></span>
                    <div class="col-md-12">
                        <select id="f_function_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_function_code'>
                          <option value="">---Select---</option>
                         <?php  foreach($functionData as $rows10=>$value10){ ?>
                         
                          <option value="<?php echo $value10->f_function_code;  ?>" <?php if($value10->f_function_code === $fcode){echo 'selected="selected"';}?>><?php echo $value10->f_function_name;?></option>
                          <?php	
			                    }?>
                        </select>
                    </div>
                  </div> 
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>


              <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectStaffReport');?></span>
                    <div class="col-md-12">
                        <select id="staffcode" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_user_code'>
                          <option value="" selected="selected">---Select---</option>
                         <?php $t=0; foreach($empData as $rows6=>$value6){ 
                          //var_dump($value6); 
                          foreach($value6 as $rows7=>$value7){ ?>
                          <option value="<?php echo $value7->f_user_code; ?>" <?php if($value7->f_user_code === $staffcode){echo 'selected="selected"';}?>><?php if($_SESSION['slang'] == 'english'){echo $value7->f_name_en;}else{echo $value7->f_name_th;}echo ' - '.$value7->f_branch_name ?></option>
                          <?php	
			                   } $t++;}?>
                        </select>
                    </div>
                  </div> <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button></form>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->                 
              </div>
             </div> 
            <?php }elseif($trainingreportselect == 'cert'){ 
              //fix <select id="branchcode"
              echo '<select id="branchcode" hidden="hidden"></select>';
              echo '<select id="f_function_code" hidden="hidden"></select>';
              echo '<select id="staffcode" hidden="hidden"></select>';?>
              
              <div class="col-12 col-sm-6 col-md-6">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectCourse');?></span>
                    <div class="col-md-12">
                        <select id="certcode" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_cert_code'>
                          <option value="" selected="selected">---Select---</option>
                         <?php $t=0; foreach($certData as $rows8=>$value8){ 
                          //var_dump($value6); 
                           ?>
                          <option value="<?php echo $value8->f_cert_code; ?>" <?php if($value8->f_cert_code === $chkCert){echo 'selected="selected"';}?>><?php if($_SESSION['slang'] == 'english'){echo $value8->f_cert_detail_en;}else{echo $value8->f_cert_detail_th;}?></option>
                          <?php	
			                    $t++;}?>
                        </select>
                      </div>
                  </div>  <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button></form>
                  <!-- /.info-box-content -->
                </div>                
                <!-- /.info-box -->                 
              </div>
            </div>
          <?php } ?>
          <!--end::Container-->
        </div>
        <?php if($getTest){ ?>
          <div class="card mb-412">
                  <div class="card-header border-0">
                    <h3 class="card-title"><?php echo $certName ?></h3>
                    <div class="card-tools">
                      <a href="#" class="btn btn-tool btn-sm"> <i class="bi bi-download"></i> </a>
                      
                    </div>
                  </div>
                  <div class="card-body table-responsive p-0">
                    <table class="table table-striped align-middle">
                      <thead>
                        <tr>
                          <th>ลำดับที่</th>
                          <th>รหัสพนักงาน</th>
                          <th>ชื่อ - นามสกุล <br> (คลิกบนชื่อเพื่อดูประวัติการอบรม)</th>
                          <th>ตำแหน่ง</th>
                          <th>สาขา</th>
                          <th>Percentage</th>
                          <th>วันที่อบรม</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php $p = 1; foreach($getTest as $value2=>$row2){ ?>
                        <tr>
                          <td><?php echo $p; ?></td>
                          <td><?php echo $row2[1][0]->f_user_code; ?></td>
                          <td><a href="/online_inter/index.php/training/evaluate_person/<?php echo $row2[1][0]->f_user_code;?>"><?php echo $row2[1][0]->f_name_th; ?></a></td>
                          <td><?php echo $row2[1][0]->f_position; ?></td>
                          <td><?php echo $row2[1][0]->f_branch_name; ?></td>
                          <td><div class="progress progress-xs progress-striped active">
                              <div class="progress-bar text-bg-success" style='width: <?php echo $row2[2]; ?>%'></div>
                            </div><?php echo $row2[2].'%'; ?></td>
                          <td><?php echo $row2[0]; ?></td>
                        </tr>
                         <?php $p++; }  ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              <?php  } ?>
          <!-- display staff report -->
            <?php if($getPreData){ ?>
          <div class="card mb-412">
                <li class="user-header">
                  <img 
                    src="<?php echo $f_image; ?>" 
                    alt="User Image"
                    class="rounded-circle shadow d-block mx-auto"
                    width="150" 
                    height="150"
                    style="vertical-align: middle;">

                  <b><p align="center"><?php if($_SESSION['slang'] == 'english'){echo $f_name_en;}else{echo $f_name_th;}?><br>
                   <?php echo $f_position; ?> <br>
                  <?php echo $f_branch_name; ?> </p></b>
                </li>
                  <div class="card-header border-0">
                    <h3 class="card-title"><?php //echo $certName ?></h3>
                    <div class="card-tools">
                      <a href="#" class="btn btn-tool btn-sm"> <i class="bi bi-download"></i> </a>
                      
                    </div>
                  </div>
                  <div class="card-body table-responsive p-0">
                    <table class="table table-striped align-middle">
                      <thead>
                        <tr>
                          <th>ลำดับที่</th>
                          <th>หลักสูตร</th>
                          <th>Percentage</th>
                          <th>วันที่อบรม</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php $p = 1; foreach($getPreData as $value2=>$row2){ ?>
                        <tr>
                          <td><?php echo $p; ?></td>
                          <td><?php echo $row2[1][0]->f_cert_detail_th; ?></td>
                          <td><div class="progress progress-xs progress-striped active">
                              <div class="progress-bar text-bg-success" style='width: <?php echo $row2[0][0]->f_percentage; ?>%'></div>
                            </div><?php echo $row2[0][0]->f_percentage.'%'; ?></td>
                          <td><?php echo $row2[0][0]->f_datetime; ?></td>
                        </tr>
                         <?php $p++; }  ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              <?php  } ?>
        <!--end::App Content-->
      </main>

</div>

     <script>

      var reporttype = document.getElementById('reporttype')

      var staff = document.getElementById('staff')
      var cert = document.getElementById('cert') 
      
      var branchcode = document.getElementById('branchcode')
      var f_function_code = document.getElementById('f_function_code')
      var staffcode = document.getElementById('staffcode')
      var certcode = document.getElementById('certcode')
      


      var f_sum = document.getElementById('f_sum')
      var f_percentage = document.getElementById('f_percentage')
      var f_total = document.getElementById('f_total')
      

      


      reporttype.onchange = function() {

        window.location.replace("<?php echo base_url().'report/trainingreport/';?>"+reporttype.value);
        //alert(manager.value);
      }

      f_function_code.onchange = function() {
        
        window.location.replace("<?php echo base_url().'report/trainingreport/';?>"+reporttype.value+"/"+branchcode.value+"/"+f_function_code.value);
        //alert(manager.value);
      }

      staffcode.onchange = function() {
        
        window.location.replace("<?php echo base_url().'report/trainingreport/';?>"+reporttype.value+"/"+branchcode.value+"/"+staffcode.value+"/"+f_function_code.value);
        //alert(manager.value);
      }

      certcode.onchange = function() {
        
        window.location.replace("<?php echo base_url().'report/trainingreport/';?>"+reporttype.value+"/"+certcode.value);
       // alert(certcode.value);
      }

      

      staff.onchange = function() {
       
        window.location.replace("<?php echo base_url().'training/evaluate_test/';?>"+reporttype.value+"/"+branchcode.value+"/"+staff.value);
        //alert(manager.value);
      }

       
     

     </script>

</body>

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
    <!-- sortablejs -->
        <script
      src="https://cdn.jsdelivr.net/npm/apexcharts@3.37.1/dist/apexcharts.min.js"
      integrity="sha256-+vh8GkaU7C9/wbSLIcwq82tQ2wTf44aOHA8HlBMwRI8="
      crossorigin="anonymous"
    ></script>
    <script>
      // NOTICE!! DO NOT USE ANY OF THIS JAVASCRIPT
      // IT'S ALL JUST JUNK FOR DEMO
      // ++++++++++++++++++++++++++++++++++++++++++

    </script>


</html>
