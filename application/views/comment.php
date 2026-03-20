  <?php
  defined('BASEPATH') OR exit('No direct script access allowed');
  $this->load->helper('url');
  $this->lang->load("form_input",$_SESSION['slang']);
  ?><!DOCTYPE html>
  <html lang="en">
  <head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/5/w3.css">
    <meta charset="utf-8">
    <title>Area Service Checklist</title>
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
          <!-- HERE Comes Side Bar -->
  <main class="app-main">
        <div class="app-content">
            <!--begin::Container-->
            <div class="container-fluid">
              <!--begin::Row-->
              <div class="row">
                  </div>
      
              <div class="col-12"> 
                <div class="row">
                <div class="col-3 col-sm-3 col-md-3">
                  <div class="info-box">
                    <span class="info-box-icon text-bg-warning shadow-sm">
                      <i class="bi bi-people-fill"></i>
                    </span> 
                    
                    <form id="watchData" action="<?php echo base_url();?>qsr/getcomment/<?php echo $formName;?>" method="POST">
                    <div class="info-box-content">
                      <span class="info-box-text"><?php echo $this->lang->line('selectbranch');?></span>
                      <div class="col-md-12">
                        <?php if($_SESSION['f_user_login'] == 'suvat.k@naracuisine.com' || $_SESSION['f_user_login'] == 'pakpoom@naracuisine.com' || $_SESSION['f_user_login'] == 'napatsakorn@naracuisine.com'){ ?><input type='text' id='shopcomment2' hidden='hidden'>
                          <select id="shopcomment1" name="f_branch_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                                <option value="" selected="selected">---Select---</option>
                            <?php if ($_SESSION['slang'] == 'english'){ 
                              foreach($allBranch as $rows6=>$value6){ ?>
                              <option value="<?php echo $value6->f_branch_code;?>"><?php echo $value6->f_branch_name_en;?></option>  <?php 
                              }
                            } else {
                              foreach($allBranch as $rows6=>$value6){ ?>
                              <option value="<?php echo $value6->f_branch_code;?>"><?php echo $value6->f_branch_name_th;?></option>
                            <?php }
                              }?>
                          </select>
                      <?php } else {?><input type='text' id='shopcomment1' hidden='hidden'>
                          <select id="shopcomment2"  name="f_branch_code"  class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                            <option value="" selected="selected" name='shopcomment2'>---Select---</option>
                          <?php if ($_SESSION['slang'] == 'english'){ 
                        foreach($getBranch as $rows3=>$value3){ ?>
                          <option value="<?php echo $value3->f_branch_code;?>"><?php echo $value3->f_branch_name_en;?></option>
                        <?php }
                        } else {
                          foreach($getBranch as $rows3=>$value3){ ?>
                          <option value="<?php echo $value3->f_branch_code; ?>"><?php echo $value3->f_branch_name_th;?></option>
                        <?php }
                          }?>
                          </select>
                      
                          <?php } ?>
                          
                        </div>
                        
                    </div> 
                    <!-- /.info-box-content -->
                  </div>

                  <!-- /.info-box -->

                  
                  
                  
                </div>

                <div class="col-3 col-sm-3 col-md-3">
                  <div class="info-box">
                    <span class="info-box-icon text-bg-warning shadow-sm">
                      <i class="bi bi-calendar-fill"></i>
                    </span> 
                    <div class="info-box-content">
                      <span class="info-box-text"><?php echo $this->lang->line('datestart');?></span>
                      <div class="col-md-12">
                       <div class="input-group date" id="reservationdatetime" data-target-input="nearest">
                        <input type="date" class="form-control datetimepicker-input" name='date_start' id='date_start'>
                        <div class="input-group-append" data-target="#reservationdatetime" data-toggle="datetimepicker">
                        </div>
                    </div>
                          
                        </div>
                        
                    </div> 
                    <!-- /.info-box-content -->
                  </div>

                  <!-- /.info-box -->

                  
                  
                  
                </div>

                 <div class="col-3 col-sm-3 col-md-3">
                  <div class="info-box">
                    <span class="info-box-icon text-bg-warning shadow-sm">
                      <i class="bi bi-calendar-fill"></i>
                    </span> 
                    <div class="info-box-content">
                      <span class="info-box-text"><?php echo $this->lang->line('dateend');?></span>
                      <div class="col-md-12">
                        <div class="input-group date" id="reservationdatetime" data-target-input="nearest">
                          <input type="date" class="form-control datetimepicker-input" name='date_end' id='date_end'>
                          <div class="input-group-append" data-target="#reservationdatetime" data-toggle="datetimepicker">
                          </div>
                       </div>
                  </div>
                        
                    </div> 
                    <!-- /.info-box-content -->
                  </div>

                  <!-- /.info-box -->

                  
                  
                  
                </div>
                <div class="col-3 col-sm-3 col-md-3">
                  <div class="info-box">
                    
                    <div class="info-box-content">
                     <button id='watchDataBnT' type="button" class="btn btn-primary mb-4"><?php echo $this->lang->line('calldata');?></button>
                        </form>
                        <form class="info-box-content" id="theForm" action="<?php echo base_url();?>Exportdaily/daily_excel" method="POST">
                          <button type="button" class="btn btn-success mb-4" id='exexcel'><?php echo 'Export Excel';?></button>
                          <input  type="text" name='formname' id='formname' value="<?php echo $formName;?>" hidden="hidden">
                          <input  type='text' name='f_branch_code' id='f_branch_code' value="<?php if($getBranchname){foreach($getBranchname as $rows4){echo $rows4->f_branch_code;}} ?>" hidden="hidden">
                          <input  type="text" name='date_start' id='f_timestart2' value="" hidden="hidden">
                          <input  type="text" name='date_end' id='f_timeend2' value="" hidden="hidden">
                     </form>
                    </div>
                    </div>
                        
                    </div> 
                    <!-- /.info-box-content -->
                  </div>

                </div>
 </div>
                
                        
<div class="card mb-4">
                  <div class="card-header"><h3 class="card-title"><?php echo $this->lang->line('summary');?> <?php echo $this->lang->line('branch').': <b>'; if($getBranchname){foreach($getBranchname as $rows4) {if ($_SESSION['slang'] == 'english'){ echo $rows4->f_branch_name_en;} else {echo $rows4->f_branch_name_th;}}}else{echo $this->lang->line('selectbranch');} ;echo '</b> '.$this->lang->line('datedata').':<b> '.$dataDateStart.'</b>'; if($dataDateEnd != '//'){echo ' - <b>'.$dataDateEnd.'</b>';} ?> </h3></div>
                  <!-- /.card-header -->
                  <div class="card-body">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th><?php echo $this->lang->line('point');?></th>
                          <th><?php echo $this->lang->line('fulltotal');?></th>
                          <th><?php echo $this->lang->line('percenttotal');?></th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php //var_dump($dataDateEnd);
                        if($getCommentSumData){
                          if($dataDateEnd != '//'){
                            //

  $sum = 'f_'.$table.'_sum';
                          $total = 'f_'.$table.'_total';
                          $percentage = 'f_'.$table.'_percentage'; 
                          ?>
                          
                        <tr class="align-middle">
                          <td><?php echo round($getCommentSumData["$sum"],2);?></td>
                          <td><?php echo round($getCommentSumData["$total"],2);?></td>
                          
                           <?php if($getCommentSumData["$percentage"] < 50){?>
                          <td>
                            <div class="progress progress-xs">
                              <div
                                class="progress-bar text-bg-danger"
                                style="width: <?php echo round($getCommentSumData["$percentage"],2) .'%';?>"
                              ></div>
                            </div>
                          <span class="badge text-bg-danger"><?php echo round($getCommentSumData["$percentage"] ,2).'%';?></span></td>
                          <?php  }elseif(50 < $getCommentSumData["$percentage"]  && $getCommentSumData["$percentage"]  < 90){?>
                          <td>
                            <div class="progress progress-xs">
                              <div
                                class="progress-bar text-bg-warning"
                                style="width: <?php echo round($getCommentSumData["$percentage"] ,2).'%';?>"
                              ></div>
                            </div> 
                          <span class="badge text-bg-warning"><?php echo round($getCommentSumData["$percentage"],2).'%';?></span></td>
                          <?php  }elseif($getCommentSumData["$percentage"] > 90){?>
                          <td>
                            <div class="progress progress-xs">
                              <div
                                class="progress-bar text-bg-success"
                                style="width: <?php echo round($getCommentSumData["$percentage"],2).'%';?>"
                              ></div>
                            </div> 
                          <span class="badge text-bg-success"><?php echo round($getCommentSumData["$percentage"],2) .'%';?></span></td>
                            <?php  } ?>
                          
                          
                        </tr>
<?php
                            //
                           // var_dump($getCommentSumData);die();
                          }else{
                            
                          
                          foreach($getCommentSumData as $rows7){
                          $sum = 'f_'.$table.'_sum';
                          $total = 'f_'.$table.'_total';
                          $percentage = 'f_'.$table.'_percentage'; 
                          ?>
                          
                        <tr class="align-middle">
                          <td><?php echo round($rows7->$sum,2);?></td>
                          <td><?php echo round($rows7->$total,2);?></td>
                          
                          <?php if($rows7->$percentage < 50){?>
                          <td>
                            <div class="progress progress-xs">
                              <div
                                class="progress-bar text-bg-danger"
                                style="width: <?php echo $rows7->$percentage.'%';?>"
                              ></div>
                            </div>
                          <span class="badge text-bg-danger"><?php echo round($rows7->$percentage,2).'%';?></span></td>
                          <?php  }elseif(50 < $rows7->$percentage && $rows7->$percentage < 90){?>
                          <td>
                            <div class="progress progress-xs">
                              <div
                                class="progress-bar text-bg-warning"
                                style="width: <?php echo round($rows7->$percentage,2).'%';?>"
                              ></div>
                            </div> 
                          <span class="badge text-bg-warning"><?php echo $rows7->$percentage.'%';?></span></td>
                          <?php  }elseif($rows7->$percentage > 90){?>
                          <td>
                            <div class="progress progress-xs">
                              <div
                                class="progress-bar text-bg-success"
                                style="width: <?php echo round($rows7->$percentage,2).'%';?>"
                              ></div>
                            </div> 
                          <span class="badge text-bg-success"><?php echo $rows7->$percentage.'%';?></span></td>
                            <?php  } ?>
                          
                          
                        </tr>
                        <?php }}}else{} ?>
                      </tbody>
                    </table>
                  </div>
                  <!-- /.card-body -->
                 
                </div>

                <?php $o=1;  if($getPoint){ foreach($getPoint as $rows9){   ?>
                  <div class="card card-success" >
                    <div class="card-header">
                      <h3 class="card-title"><?php echo "<p id='content'>".$o.'. '; if ($_SESSION['slang'] == 'english'){ echo $rows9->f_topic_detail_en.'</p>';} else {echo $rows9->f_topic_detail_th.'</p>';}?></h3>
                      <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-lte-toggle="card-collapse" aria-expanded="false">
                          <i data-lte-icon="expand" class="bi bi-plus-lg"></i>
                          <i data-lte-icon="collapse" class="bi bi-dash-lg"></i>
                        </button>
                      </div>
                      <!-- /.card-tools -->
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body"><?php foreach($getCommentDetailData as $comment){
                      $field = 'f_comment_'.$o;
                      $stat = 'f_score_'.$o;
                      
                      if($comment->$stat == 2){
                        echo "<b><p type='textarea' id='x' name='x' style='color: #FF0000'>ไม่ผ่าน</p></b>";
                      }elseif($comment->$stat == 1){
                        echo "<b><p type='textarea' id='x' name='x' style='color: #008000'>ผ่าน</p></b>";
                      }elseif($comment->$stat == 0){
                        echo "<b><p type='textarea' id='x' name='x' style='color: #f9e505'>N / A</p></b>";
                      }

                      echo ' : '.$comment->$field;}

                      foreach($getCommentImageData as $img){
                      $field = 'f_topic_code_'.$o;
                      $img_path = 'f_image_path_'.$o;
                      //echo $field.'/'.$img_path;
                      if($img->$field){
                        echo " --> "."<img src='http://10.0.1.88/online/img/area_service_checklist/".$img->$img_path."' class='user-image rounded-square shadow' alt='Image' width='300px' hight='200px' onclick='onClick(this)' class='w3-hover-opacity'>";
                      }
                     }

                     ?></div>
                    <!-- /.card-body -->
                  </div><?php $o++; }}else{} ?>
                  <!-- /.card -->
                </div> 
              <!-- /.row (main row) -->
            </div>
            <!--end::Container-->
          </div></mian>
  </div>
<div id="modal01" class="w3-modal" onclick="this.style.display='none'">
  <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
  <div class="w3-modal-content w3-animate-zoom">
    <img id="img01" style="width:100%">
  </div>
</div>


  </body>

        <footer class="app-footer">
          <!--begin::To the end-->
          <div class="float-end d-none d-sm-inline">All Gas. No Break</div>
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
      <script>
        var coodata = document.getElementById('shopcomment1');
        var baanch = document.getElementById('f_branch_code');
        var baanch3 = document.getElementById('f_branch_code3');
        var timedate = document.getElementById('date_start');
        var timedate2 = document.getElementById('date_end');
        
        var exexcel = document.getElementById("exexcel");
        //var timedate3 = document.getElementById('f_timestart2');
        //var timedate4 = document.getElementById('f_timeend2');
        var watchDataBnT1999 = document.getElementById("watchDataBnT");

        var timestart2 = document.getElementById('f_timestart2');
        var timeend2 = document.getElementById('f_timeend2');

        var timestart3 = document.getElementById('f_timestart3');
        var timeend3 = document.getElementById('f_timeend3');
      
        coodata.onchange = function() {
         // window.location.replace("<?php //echo base_url().'login/getcomment/qsc1/';?>"+coodata.value);
          baanch.value = coodata.value;
        // alert(coo.value);
        }

        exexcel.onclick = function() {
        //  alert(timestart2);
        //alert(f_chk1.value);
        //  modal2.style.display = "block";
        if (!timestart2.value) {
            alert('Missing Date Start');
            
            window.stop();
            exit;
        }
        if (!timeend2.value) {
            alert('Missing Date End');
            window.stop();
            exit;
        }
        document.getElementById('theForm').submit();
        }

        watchDataBnT1999.onclick = function() {
        //  alert(timestart2);
        //alert(f_chk1.value);
        //  modal2.style.display = "block";
        if (!timedate.value) {
            alert('Missing Date Start');            
            exit;
            alert('Missing Date Startfsdfsdfsdfds'); 
        }
        
        document.getElementById('watchData').submit();
        
        }

        var manager = document.getElementById('shopcomment2');

        manager.onchange = function() {
         // window.location.replace("<?php// echo base_url().'login/getcomment/qsc1/';?>"+manager.value);
        // alert(manager.value);
         baanch.value = manager.value;
         baanch3.value = manager.value;
        // alert(baanch.value);
        }

        timedate.onchange = function() {
         // window.location.replace("<?php// echo base_url().'login/getcomment/qsc1/';?>"+manager.value);
        // timedate2.value = timedate.value;
          timestart2.value = timedate.value;
          timestart3.value = timedate.value;
        //alert(timedate2.value);
        }

        timedate2.onchange = function() {
         // window.location.replace("<?php// echo base_url().'login/getcomment/qsc1/';?>"+manager.value);
        // timedate2.value = timedate.value;           
         timeend2.value = timedate2.value;
         timeend3.value = timedate2.value;
        //alert(timedate2.value);
        }
       
        
        function onClick(element) {
          document.getElementById("img01").src = element.src;
          document.getElementById("modal01").style.display = "block";
        }


  </script>
  </html>
