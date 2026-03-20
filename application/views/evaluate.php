<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->load->helper('url');
$this->lang->load("form_input",$_SESSION['slang']);
?><!DOCTYPE html>
<html lang="en">
<head>
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
    <link rel="stylesheet" href="/online_inter/css/adminlte.css" />
    <!--end::Required Plugin(AdminLTE)-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">
     <?php if($dupdata == 1){
      ?> <script>alert('<?php echo $this->lang->line('dupdata');?>');</script>
   <?php  } ?>

<div class="app-wrapper">
	<!-- HERE Comes Header -->
		<?php $this->load->view('header'); ?> 
    <?php $this->load->view('sidebar'); ?>
        <!-- HERE Comes Side Bar -->
        
   <main class="app-main">
      <div class="card mb-16">
                  <div class="card-header">
                    <h3 class="card-title"><?php echo $this->lang->line('traininghead');?></h3>
                  </div>
                  <!-- /.card-header -->
            
                  <!-- -->
            <div class="card-body p-6">
              <div class="col-lg-12 col-12">
                        
                      <?php foreach($personalInfo as $info=>$value1){?>
                <!--begin::User Image-->
                <li class="user-header">
                  <img src="<?php echo $value1->f_image; ?>" alt="User Image"
                    class="rounded-circle shadow d-block mx-auto"
                    width="150" 
                    height="150"
                    style="vertical-align: middle;">
                  <p align="center">
                    <?php if ($_SESSION['slang'] == 'english'){ 
                      
                       echo $value1->f_name_th;  
                      } else {
                         echo $value1->f_name_en;  
                         }echo ' - '.$value1->f_position;  ?>
                  </p>
                </li>
                <?php } ?>
                <!--end::User Image-->
                <!--begin::Menu Body-->
                
                  <!--begin::Row-->
                  <div class="row">
                    <div class="col-6 text-center text-bg-warning"><a><?php echo count($TrainingInfo);;?></a><br><a><?php echo $this->lang->line('takecouse');?></a></div>
                    <div class="col-6 text-center text-bg-success"><a><?php echo $success;?></a><br><a><?php echo $this->lang->line('completetraining');?></a></div>
                  </div>
                  <!--end::Row-->
              </div>

                 
            </div>
      <div class="card">
                  <div class="card-header">
                    <h3 class="card-title"><?php echo $this->lang->line('training_list');?></h3>
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-lte-toggle="card-collapse">
                        <i data-lte-icon="expand" class="bi bi-plus-lg"></i>
                        <i data-lte-icon="collapse" class="bi bi-dash-lg"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-lte-toggle="card-remove">
                        <i class="bi bi-x-lg"></i>
                      </button>
                    </div>
                  </div>
      </div>
            <!-- EDIT -->
		  <?php 
      //$this->load->model('data_model');
               
     /*   $a1 = $this->data_model->getCertAll();
        $certData = array();
        foreach($a1 as $b=>$valu){
          $c = $valu->f_cert_code.'-'.$valu->f_cert_detail_th;
          array_push($certData,$c);
        }*/
     // $certData = array('CERTO01-TEST','CERT06-BAR CROSS FUNCTION'); var_dump($certData);echo '$certData';?>	  
		<?php  foreach($certData as $a=>$aValue){ 
      $eva = explode('|',$aValue);?>
            <div class="card">
                  <div class="card-header">
                    <h3 class="card-title"><?php echo $eva[0]; ?></h3>
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-lte-toggle="card-collapse">
                        <i data-lte-icon="expand" class="bi bi-plus-lg"></i>
                        <i data-lte-icon="collapse" class="bi bi-dash-lg"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-lte-toggle="card-remove">
                        <i class="bi bi-x-lg"></i>
                      </button>
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body p-0" style="box-sizing: border-box; ">
                    <div class="table-responsive">
                      <table class="table m-0">
                        <thead>
                          <tr>
                            <th width='5%'>ลำดับที่</th>
                            <th width='30%'>ชื่อหัวข้อ</th>
                            <th width='10%'>วันที่อบรม</th>
                            <th width='10%'>สถานะ</th>
                            <th width='30%'>Info</th>
                            <th width='15%'>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                          <?php $cut = explode('-',$aValue);
                           $m=0;$q=1; foreach($TrainingInfo as $rows=>$value){
                            //var_dump($value);
                            if($value['details']['0']['f_cert_code'] == $cut[0]){?>
                          <tr>
                            <td><?php echo $q;?></td>
                            <td><?php echo $value['module_name']; ?></td>
                            <td><?php echo $value['date']; ?></td>
                            <td><a href="/online_inter/index.php/training/evaluate_test/<?php echo $value['details']['0']['f_user_code'];?>/<?php echo $value['details']['0']['f_cert_code'];?>/199/<?php echo $eva[1];?>"><?php 
                              if(strpos($value['details']['0']['f_course_code'],'_') === false){echo $value['details']['0']['f_percenttage'];}
                              ?></a>
                            </td>
                            <td>
                            <?php  $trainby = $value['details']['0']['f_trainer_name'];  $evaby = $value['details']['0']['f_cert_approve']; echo 'Train by '.$trainby.'| Evaluate by '.$evaby;?>
                            </td>
                            <td><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#evaModal<?php echo $m;?>"><?php echo $this->lang->line('training_desc2');?></button></td>
                          <?php } ?>
                          </tr>
                          <?php $q++; $m++;} ?>
                        </tbody>
                      </table>
                    </div>
                    <!-- /.table-responsive -->
                  </div>
                  <!-- /.card-body -->
                  
                  <!-- /.card-footer -->
                </div>
                <?php } ?>
                <div class="card-footer clearfix" style="box-sizing: border-box;">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#customModal"><?php echo $this->lang->line('addtraining');?></button>

                  </div>
      </div>
      
            <!-- end edit -->

<!-- The Modal -->
<div class="modal fade" id="customModal" tabindex="-1" aria-labelledby="customModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-50 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel"><?php echo $this->lang->line('addtraingtopic');?></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url();?>training/addtraining/<?php echo $empId; ?>" enctype="multipart/form-data" method="POST">
        <select  id="f_cert_id" name="f_cert_id" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">---Select Certificate---</option>
                         <?php if ($_SESSION['slang'] == 'english'){ 
                      foreach($selectcert as $rows3=>$value3){ ?>
                        <option value="<?php echo $value3->f_cert_code;?>"><?php echo $value3->f_cert_code.'-'.$value3->f_cert_detail_en;?></option>
                      <?php }
                      } else {
                         foreach($selectcert as $rows3=>$value3){ ?>
                        <option value="<?php echo $value3->f_cert_code; ?>"><?php echo  $value3->f_cert_code.'-'.$value3->f_cert_detail_th;?></option>
                      <?php }
                        }?>
                        </select><br>

        <select  id="f_topic_id" name="f_topic_id" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">---Select Course---</option>
                        
                        </select><br>
        <input type='date' name='f_datetime'/>   <br>
        <input placeholder='<?php echo $this->lang->line('trainby');?>' type='textarea' size='40' name='<?php echo "f_trainer_name"; ?>' onkeydown="return (event.keyCode!=13);" ><br>
        <input placeholder='<?php echo $this->lang->line('evaby');?>'type='textarea' size='40' name='<?php echo "f_cert_approve"; ?>' onkeydown="return (event.keyCode!=13);" >
                              
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button> </form>
      </div>
    </div>
  </div>
</div>

<?php //var_dump($TrainingInfo); 
 $z=0;foreach($TrainingInfo as $rows9=>$value9){ ?>
<div class="modal fade" id="evaModal<?php echo $z;?>" tabindex="-1" aria-labelledby="evaModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-75 modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="customModalLabel"><?php echo $this->lang->line('traininghead');?></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url();?>training/addresult/<?php echo $empId; ?>" enctype="multipart/form-data" method="POST" id='eva<?php echo $z;?>'>
                           <?php $y=0;
                           $x = 0;
                           foreach ($value9['details'] as $row9=>$id9) {
                            //var_dump($id9);
                            $x = 1;?>
                              <p><?php echo $id9['f_topic_name']; ?></p>
                             
                            <?php echo "<b><p type='textarea' id='x' name='x' style='color: #0800ffff'>Trained</p></b>";?> 
                            
                            <br>-----------------------------------------------------------------------
                            
                            <?php $y++;}
                            $y=0;?>
                            <td><input placeholder='<?php echo $this->lang->line('trainby');?>' type='textarea' size='40' name='<?php echo "f_trainer_name"; ?>' onkeydown="return (event.keyCode!=13);" <?php if($id9['f_trainer_name']){echo "value='Train by ".$id9['f_trainer_name']."'";} ?> readonly='readonly'></td><br>
                            <td><input placeholder='<?php echo $this->lang->line('evaby');?>'type='textarea' size='40' name='<?php echo "f_cert_approve"; ?>' onkeydown="return (event.keyCode!=13);" <?php if($id9['f_cert_approve']){echo "value='Cert by ".$id9['f_cert_approve']."'";}?> readonly='readonly'></td>
                            
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       <?php if($x == 0){?> <button type="button" id='senddata<?php echo $z;?>' class="btn btn-primary"><?php echo $this->lang->line('submit');?></button><?php } ?> </form>
      </div>
    </div>
  </div>
</div>
<?php $x = 0; ?>
 <script>
    var myForm<?php echo $z;?> = document.getElementById('eva<?php echo $z;?>');
    var senddata<?php echo $z;?> = document.getElementById("senddata<?php echo $z;?>");

    senddata<?php echo $z;?>.onclick = function() {
      if(confirm('Are you sure?<?php echo $z;?>') == true){
      myForm<?php echo $z;?>.submit();
      }
    }
  </script>

<?php $z++;}?>
</main>
</div>


</body>

      <footer class="app-footer">
        <!--begin::To the end-->
        <div class="float-end d-none d-sm-inline">All gas. No break.</div>
        <!--end::To the end-->
        <!--begin::Copyright-->
        <strong>
          Copyright &copy; 2025-2030&nbsp;
          <a href="https://adminlte.io" class="text-decoration-none">IT TEAM</a>.
        </strong>
        
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
    <!-- OPTIONAL SCRIPTS -->
    <!-- sortablejs -->
    <script
      src="https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/Sortable.min.js"
      integrity="sha256-ipiJrswvAR4VAx/th+6zWsdeYmVae0iJuiR+6OqHJHQ="
      crossorigin="anonymous"
    ></script>
    <!-- sortablejs -->
    <script>
      const connectedSortables = document.querySelectorAll('.connectedSortable');
      connectedSortables.forEach((connectedSortable) => {
        let sortable = new Sortable(connectedSortable, {
          group: 'shared',
          handle: '.card-header',
        });
      });

      const cardHeaders = document.querySelectorAll('.connectedSortable .card-header');
      cardHeaders.forEach((cardHeader) => {
        cardHeader.style.cursor = 'move';
      });
    </script>

 <script>
    var btn = document.getElementById("myBtn");
    var modal = document.getElementById("myModal");
    var btn2 = document.getElementById("myBtn");
    var modal2 = document.getElementById("myModal");
    var senddata = document.getElementById("senddata");

    senddata.onclick = function() {
      confirm('Are you sure?');

    }
    

   // btn.onclick = function() {
  //    modal.style.display = "block";
    //}
  </script>

  <script>
    $(function(){
    var provinceObject = $('#f_cert_id');
    var amphureObject = $('#f_topic_id');
    

    // on change province
    provinceObject.on('change', function(){
        var provinceId = $(this).val();

        var childSelect = document.getElementById('f_topic_id');
        // Clear all options except the first one (e.g., a "Select an option" placeholder)
        while (childSelect.options.length > 1) {
            childSelect.remove(1); 
        }


        $.get('http://10.0.1.88/online_staging/online_inter/getcert.php?province_id=' + provinceId, function(data){
            var result = JSON.parse(data);
            $.each(result, function(index, item){
                amphureObject.append(
                    $('<option></option>').val(item.f_course_code).html(item.f_course_detail_th)
                );
            });
        });
    });
  });
  </script>

</html>
