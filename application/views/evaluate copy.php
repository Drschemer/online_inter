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
    <link rel="stylesheet" href="/online/css/adminlte.css" />
    <!--end::Required Plugin(AdminLTE)-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">
     

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
              <div class="col-lg-2 col-2">
                        
                      <?php foreach($personalInfo as $info=>$value1){?>
                <!--begin::User Image-->
                <li class="user-header text-bg-primary">
                  <img src="/online/img/avatar/logo.png" class="rounded-circle shadow" alt="User Image" width="150" height="150">
                  <p align="center">
                    <?php if ($_SESSION['slang'] == 'english'){ 
                      
                       echo $value1->f_user_name_th;  
                      } else {
                         echo $value1->f_user_name_en;  
                         }echo ' - '.$value1->f_position;  ?>
                  </p>
                </li>
                <?php } ?>
                <!--end::User Image-->
                <!--begin::Menu Body-->
                
                  <!--begin::Row-->
                  <div class="row">
                    <div class="col-6 text-center text-bg-warning"><a><?php echo $count;?></a><br><a><?php echo $this->lang->line('takecouse');?></a></div>
                    <div class="col-6 text-center text-bg-success"><a><?php echo $success;?></a><br><a><?php echo $this->lang->line('completetraining');?></a></div>
                  </div>
                  <!--end::Row-->
              </div>

                 
            </div>

            <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">รายการอบรม</h3>
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
                            <th width='10%'>วันที่</th>
                            <th width='10%'>สถานะ</th>
                            <th width='30%'>comment</th>
                            <th width='15%'>รูปภาพประกอบ</th>
                          </tr>
                        </thead>
                        <tbody>
                          <?php $q=1; foreach($TrainingInfo as $rows=>$value){ ?>
                          <tr>
                            <td><?php echo $q;?></td>
                            <td><?php echo $value['0']; ?></td>
                            <td><?php echo $value['1']; ?></td>
                            <td><?php if($value['2']){
                              if($value['2'] == 1){
                                echo '<span class="badge text-bg-success"> Pass </span>';
                              }else{
                                echo '<span class="badge text-bg-danger"> Fail </span>';
                              }
                              ?></td>
                            <td><?php echo $value['3']; ?></td>
                            <td><?php echo $value['4']; ?></td>
                            <?php
                            }else{ ?>
                            <form action="<?php echo base_url();?>training/addresult/<?php echo $empId; ?>/<?php echo $value['5']; ?>" enctype="multipart/form-data" method="POST">
                            <input type='radio' name='<?php echo "f_score"; ?>' id='test' onkeydown="return (event.keyCode!=13);" value='1'>Pass | 
                            <input type='radio' name='<?php echo "f_score"; ?>' id='test' onkeydown="return (event.keyCode!=13);" value='2'>Fail
                          
                            </td>
                            <td><input type='textarea' name='<?php echo "f_comment"; ?>' onkeydown="return (event.keyCode!=13);"></td>
                            <td> <input type="file" id="<?php echo "f_image"; ?>" name="<?php echo "f_image"; ?>" onkeydown="return (event.keyCode!=13);"> <button type="submit" class="btn btn-primary" id="myBtn2"><?php echo $this->lang->line('submit');?></button></td>
                            </form>
                           <?php } ?>
                          </tr>
                          <?php $q++;} ?>
                        </tbody>
                      </table>
                    </div>
                    <!-- /.table-responsive -->
                  </div>
                  <!-- /.card-body -->
                  <div class="card-footer clearfix" style="box-sizing: border-box;">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#customModal"><?php echo 'เพิ่มการอบรม';?></button>

                  </div>
                  <!-- /.card-footer -->
                </div>
      </div>

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
        <select  id="f_topic_id" name="f_topic_id" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">---Select---</option>
                         <?php if ($_SESSION['slang'] == 'english'){ 
                      foreach($selecttopic as $rows3=>$value3){ ?>
                        <option value="<?php echo $value3->f_id;?>"><?php echo $value3->f_training_name;?></option>
                      <?php }
                      } else {
                         foreach($selecttopic as $rows3=>$value3){ ?>
                        <option value="<?php echo $value3->f_id; ?>"><?php echo $value3->f_training_name;?></option>
                      <?php }
                        }?>
                        </select><br>
        <input type='date' name='f_training_date'/>     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('submit');?></button> </form>
      </div>
    </div>
  </div>
</div>

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

  btn.onclick = function() {

       

  modal.style.display = "block";
 
}
  </script>

</html>
