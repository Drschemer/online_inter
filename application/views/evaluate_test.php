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
    <link rel="stylesheet" href="/online/css/adminlte.css" />
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
              <div class="col-sm-6"><h3 class="mb-0"><?php echo $this->lang->line('sidemenu3');?></h3></div>
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
          <form action="<?php echo base_url();?>training/addtestresult" enctype="multipart/form-data" method="POST" id='eva'>
        <div class="app-content">
          <!--begin::Container-->
          <div class="container-fluid">
            <!-- Timelime example  -->
            <div class="row">

            
          

              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectbranch');?></span>
                    <div class="col-md-12">
                        <select id="branchcode" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_branch_code'>
                          <option value="">---Select---</option>
                         <?php if($chkBranch < 999){$bdata = $chkBranch;} foreach($branchData as $rows10=>$value10){ ?>
                         
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

              
               <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectFunction');?></span>
                    <div class="col-md-12">
                        <select id="function" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_cert_code'>
                          <option value="" selected="selected">---Select---</option>
                         <?php $t=0; foreach($functionData as $rows8=>$value8){ 
                          //var_dump($value6); 
                           ?>
                          <option value="<?php echo $value8->f_function_code; ?>" <?php if($value8->f_function_code === $chkCert){echo 'selected="selected"';}?>><?php echo $value8->f_function_name; ?></option>
                          <?php	
			                    $t++;}?>
                        </select>
                      </div>
                  </div> 
                  <!-- /.info-box-content -->
                </div>                
                <!-- /.info-box -->                 
              </div>



              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectStaff');?></span>
                    <div class="col-md-12">
                        <select id="staff" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_user_code'>
                          <option value="" selected="selected">---Select---</option>
                         <?php $t=0; foreach($empData as $rows6=>$value6){ 
                          //var_dump($value6); 
                          foreach($value6 as $rows7=>$value7){ ?>
                          <option value="<?php echo $value7->f_user_code; ?>" <?php if($value7->f_user_code === $chkBranch){echo 'selected="selected"';}?>><?php if($_SESSION['slang'] == 'english'){echo $value7->f_name_en;}else{echo $value7->f_name_th;}echo ' - '.$value7->f_branch_name ?></option>
                          <?php	
			                   } $t++;}?>
                        </select>
                    </div>
                  </div> 
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
                         <input type='text' id='bdata' value='<?php if($chkBranch > 9999){echo $bdata;}else{echo $chkBranch;} ?>' hidden='hidden' >
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectCourse');?></span>
                    <div class="col-md-12">
                        <select id="cert" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_cert_code'>
                          <option value="" selected="selected">---Select---</option>
                         <?php $t=0; foreach($certData as $rows8=>$value8){ 
                          //var_dump($value6); 
                           ?>
                          <option value="<?php echo $value8->f_cert_code; ?>" <?php if($value8->f_cert_code === $chkCert){echo 'selected="selected"';}?>><?php if($_SESSION['slang'] == 'english'){echo $value8->f_cert_detail_en;}else{echo $value8->f_cert_detail_th;} ?></option>
                          <?php	
			                    $t++;}?>
                        </select>
                      </div>
                  </div> 
                  <!-- /.info-box-content -->
                </div>                
                <!-- /.info-box -->                 
              </div>
              
                
             <div class="col-12 col-sm-6 col-md-12">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectTest');?></span>
                    <div class="col-md-12">
                        <select id="test" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select" name='f_eva_prefix'>
                          <option value="" selected="selected">---Select---</option>
                         <?php $t=0; foreach($testData as $rowsa=>$valuea){ 
                          //var_dump($value6); 
                           ?>
                          <option value="<?php echo $valuea->f_eva_prefix; ?>" <?php if($valuea->f_eva_prefix === $testCode){echo 'selected="selected"';}?>><?php if($_SESSION['slang'] == 'english'){echo $valuea->f_eva_prefix;}else{echo $valuea->f_eva_prefix;} ?></option>
                          <?php	
			                    $t++;}?>
                        </select>
                      </div>
                  </div> 
                  <!-- /.info-box-content -->
                </div>                
                <!-- /.info-box -->                 
              </div>

            
              <?php $valueCount = 0; if($getTest){?>

                <table class="table table-striped">
                      <thead>
                        <tr>
                          <th style="width: 20px">#</th>
                          <th>Task</th>
                          <th style="width: 40px">Pass</th>
                          <th style="width: 40px">Fail</th>
                          <th style="width: 120px">Comment</th>
                          <th style="width: 120px">History</th> 
                        </tr>
                      </thead>
                      <tbody>
                        <?php 
                        $valueCount = count($getTest);

                        $i = 1;
                        //var_dump($getPreData);
                        foreach($getTest as $rows){ 
                          ?> 
                          
                        <tr class="align-middle">
                          <td><?php echo $i ?>.</td>
                          <td><?php if ($_SESSION['slang'] == 'english'){ echo $rows->f_name_en;} else {echo $rows->f_name_th;}?></td>
                          <td><input type='radio' name='<?php echo "f_score_$i"; ?>' id='<?php echo "pass$i"; ?>' onkeydown="return (event.keyCode!=13);" value='1' <?php if($getPreData){if($getPreData[0]->{'f_score_'.$i} == 1){echo 'checked';}}?>></td>
                          <td><input type='radio' name='<?php echo "f_score_$i"; ?>' id='<?php echo "fail$i"; ?>' onkeydown="return (event.keyCode!=13);" value='2' <?php if($getPreData){if($getPreData[0]->{'f_score_'.$i} == 2){echo 'checked';}}?>></td>
                           <td><input type='text' name='<?php echo "f_comment_$i"; ?>' id='<?php echo "comment$i"; ?>' onkeydown="return (event.keyCode!=13);" value="<?php if($getPreData){echo $getPreData[0]->{'f_comment_'.$i};}?>" ></td>
                          <td><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#customModal"><?php echo 'History';?></button></td> 

                          
                        </tr> <?php 
                      $i++;
                      } ?>
                      
                   
                        <tr>
                          <td></td>
                          <td><input placeholder='<?php echo $this->lang->line('remark');?>' type='textarea' size='40' name='<?php echo "f_comment"; ?>' onkeydown="return (event.keyCode!=13);" value='<?php if($getPreData){echo $getPreData[0]->f_comment;}?>' ></td>
                           <td></td>
                          <td></td> 
                          <td></td>
                          <td></td>
                          <input type='text' name='f_id' id='f_id' value='<?php if($getPreData){echo $getPreData[0]->f_id;}?>' hidden='hidden'/>
                          <input type='text' name='f_sum' id='f_sum' hidden='hidden'/>
                          <input type='text' name='f_percentage' id='f_percentage' hidden='hidden'/>
                          <input type='text' name='f_total' id='f_total' value='<?php echo $valueCount; ?>' hidden='hidden'/>
                          <input type='text' name='f_user_code' id='f_user_code' value='<?php echo $chkBranch; ?>' hidden='hidden'/>
                          <input type='text' name='f_branch_code' id='f_branch_code' value='<?php echo $bdata; ?>' hidden='hidden'/>
                        </tr>
                         <tr>
                          <td></td>
                          <td><?php echo $this->lang->line('dateeva');?> - <input placeholder='' type='date' size='120' name='<?php echo "f_datetime"; ?>' onkeydown="return (event.keyCode!=13);" value='<?php if($getPreData){echo $getPreData[0]->f_datetime;}?>'></td>
                          <td></td>
                          <td></td>
                           <td></td>
                          <td></td> 
       
                        </tr>
                        <tr>
                          <td></td>
                          <td style='display: flex;flex-wrap: wrap;justify-content: center;'><button type="button" class="btn btn-primary" id='senddata'><?php echo $this->lang->line('submit');?></button></td>
                          <td></td>
                          <td>  </form></td>

                        </tr>
                </table>
                   <?php }
                //echo '<br>';var_dump($getTest);
                ?>
              
                    <!-- /.card -->
                 
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!--end::Container-->
        </div>
        
        <!--end::App Content-->
      </main>

</div>

<div class="modal fade" id="customModal" tabindex="-1" aria-labelledby="customModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel"><?php echo 'History';?></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-striped">
                      <thead>
                        <tr>
                          <th style="width: 20px">#</th>
                          <th style="width: 120px">Date</th>
                          <th style="width: 120px">No.Pass</th>
                          <th style="width: 120px">No.Fail</th>
                          <th style="width: 120px">No.N/A</th>
                          <th style="width: 360px">Comment List</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php 
                        $valueCount = count($getTest);

                        $i = 1;
                        //var_dump($getPreData);
                        foreach($getHistory as $rows){ 
                          ?> 
                          
                        <tr class="align-middle">
                          <td><?php echo $i ?>.</td>
                          <td><?php echo $rows->f_datetime;  ?></td>
                          <td><?php echo $rows->f_pass;  ?></td>
                          <td><?php echo $rows->f_fail;  ?></td>
                          <td><?php echo $rows->f_na;  ?></td>
                          <td><?php echo $rows->f_comment;  ?></td>
                        </tr> <?php 
                      $i++;
                      } ?>
                      
                   
                       
                        
                </table>
             
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

      </div>
    </div>
  </div>
</div>
     <script>

      var manager = document.getElementById('staff')
      var lenghtgraphcoo = document.getElementById('cert') 
      var barnch = document.getElementById('branchcode')
      var functioncode = document.getElementById('function')
      var bdata = document.getElementById('bdata')
      var test = document.getElementById('test')
      var f_sum = document.getElementById('f_sum')
      var f_percentage = document.getElementById('f_percentage')
      var f_total = document.getElementById('f_total')
      

      


      functioncode.onchange = function() {

        window.location.replace("<?php echo base_url().'training/evaluate_test/';?>"+barnch.value+"/"+functioncode.value);
        //alert(manager.value);
      }

      lenghtgraphcoo.onchange = function() {
        
        //alert("<?php echo base_url().'login/getgraph/';?>"+manager.value+"/"+lenghtgraphcoo.value+"/");
        window.location.replace("<?php echo base_url().'training/evaluate_test/';?>"+manager.value+"/"+lenghtgraphcoo.value+"/"+bdata.value);
        //alert(manager.value);
      }

      test.onchange = function() {
       
        //alert("<?php echo base_url().'login/getgraph/';?>"+manager.value+"/"+lenghtgraphcoo.value+"/");
        window.location.replace("<?php echo base_url().'training/evaluate_test/';?>"+manager.value+"/"+lenghtgraphcoo.value+"/"+bdata.value+"/"+test.value);
        //alert(manager.value);
      }

       var myForm = document.getElementById('eva');
       var senddata = document.getElementById("senddata");

       //alert(document.getElementById(checkbox).value)
       let s = 0;
        let counter = <?php echo $valueCount; ?>;

       

       senddata.onclick = function() {

        for (let i = 1; i <= counter; i++){
          var checkbox = "f_score_"+i;
          var pass = "pass"+i;
          var fail = "fail"+i;
         
          if (document.getElementById(pass).checked == true) {
           // alert('true');
          s++;
          }
          
    


             // let fullscore = counter - (minusfull - 1);
             // let percent = ((s/fullscore) * 100).toFixed(2);
          }

        
        //alert(counter);
          var cal = ((s/counter) * 100).toFixed(2)
     

        if(confirm('Are you sure?\n'+'Evaluation Score = '+s+'/'+counter+'\nPercentage ='+cal+'%') == true){
          f_sum.value = s;
          f_percentage.value = cal;
        myForm.submit();
        }else{
          s = 0
        }
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
    <script src="/online/js/adminlte.js"></script>
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
