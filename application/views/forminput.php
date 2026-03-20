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
                    <h3 class="card-title"><?php echo $this->lang->line('qschead');?></h3>
                  </div>
                  <form action="<?php echo base_url();?>qsr/checkdata" enctype="multipart/form-data" method="POST" id='forminput'>
                  <!-- /.card-header -->
              <div class="row">
              <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box">
                  <span class="info-box-icon text-bg-primary shadow-sm">
                    <i class="bi bi-map"></i>
                  </span>
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('country');?></span>
                    <span class="info-box-number"><?php echo $_SESSION['f_country'];?><input type='text' id='f_country' name='f_country' value='<?php echo $_SESSION['f_country'];?>' hidden='hidden'>
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <!-- /.col -->
              <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box">
                  <span class="info-box-icon text-bg-danger shadow-sm">
                    <i class="bi bi-shop"></i>
                  </span>
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('branch');?></span>
                    <span class="info-box-number"><select  id="f_branch_code" name="f_branch_code" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="" selected="selected">---Select---</option>
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
                      </span> 
                 <input type='text' id='f_user_code' name='f_user_code' value='<?php echo $_SESSION['f_user_code'];?>' hidden='hidden'>
                 <?php if ($_SESSION['slang'] == 'english'){ ?>
                      <input type='text' id='f_user_name' name='f_user_name' value='<?php echo $_SESSION['f_user_name_en'];?>' hidden='hidden'>
                      <?php 
                      } else {?>
                       <input type='text' id='f_user_name' name='f_user_name' value='<?php echo $_SESSION['f_user_name_th'];?>' hidden='hidden'>
                      <?php 
                        }?>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <!-- /.col -->
              <!-- fix for small devices only -->
              <!-- <div class="clearfix hidden-md-up"></div> -->
              <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box">
                  <span class="info-box-icon text-bg-success shadow-sm">
                    <i class="bi bi-person-bounding-box"></i>
                  </span>
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('rm');?></span>
                    <span class="info-box-number"><small><?php if ($_SESSION['slang'] == 'english'){ 
                     echo $_SESSION['f_area_name_en'];
                      } else {
                         echo $_SESSION['f_area_name_th'];
                        }?> </small></span>
                    <input type='text' id='f_area_code' name='f_area_code' value='<?php echo $_SESSION['f_area_code'];?>' hidden='hidden'>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
            </div>
                  <!-- -->
                  <div class="card-body p-0">
                     <div class="col-lg-4 col-2">
                        
                      
                        <!--begin::Small Box Widget 1-->
                        <div class="small-box">
                          <div class="inner">
                            <p><?php echo $this->lang->line('dateselect');?></p> 
                            <input type='text' name='f_datetime' id='f_datetime'  value='<?php echo date('Y-m-d'); ?>' readonly='readonly'>
                            <!-- <input type='date' name='f_datetime' id='f_datetime'  Required> -->
                          </div>
                        </div>
                        <!--end::Small Box Widget 1-->
                      </div>

                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th style="width: 10px">#</th>
                          <th>Task</th>
                          <th style="width: 30px">Pass</th>
                          <th style="width: 30px">Fail</th>
                          <th style="width: 30px">N/A</th>
                          <th>Comment</th> 
                          <th>Upload</th> 
                        </tr>
                      </thead>
                      <tbody>
                        <?php 
                        $valueCount = count($getPoint);
                        
                        $i = 1;
                        foreach($getPoint as $rows){ 
                         // echo $i.'<br>';
                         // var_dump($rows); ?> 
                          
                        <tr class="align-middle">
                          <td><?php echo $i ?>.</td>
                          <td><?php if ($_SESSION['slang'] == 'english'){ echo $rows->f_topic_detail_en;} else {echo $rows->f_topic_detail_th;}?></td>
							
                          <td><input type='radio' name='<?php echo "f_score_$i"; ?>' id='<?php echo "pass$i"; ?>' onkeydown="return (event.keyCode!=13);" value='1'></td>
                           <td><input type='radio' name='<?php echo "f_score_$i"; ?>' id='<?php echo "fail$i"; ?>' onkeydown="return (event.keyCode!=13);" value='2'></td>
                            <td><input type='radio' name='<?php echo "f_score_$i"; ?>' id='<?php echo "na$i"; ?>' onkeydown="return (event.keyCode!=13);" value='0'></td>
							
                          <td>
                            <input type='textarea' name='<?php echo "f_comment_$i"; ?>' id='<?php echo "f_comment_$i"; ?>' onkeydown="return (event.keyCode!=13);">
                          </td>
							
                          <td> 
                            <input type="file" id="<?php echo "f_image_path_$i"; ?>" name="<?php echo "f_image_path_$i"; ?>" onkeydown="return (event.keyCode!=13);">                         
                          </td>
                          
                        </tr> <?php 
                      $i++;
                      } ?>
						  
                        <tr class="align-middle">
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td> <input type='text' id='f_qsc_sum' name='f_<?php echo $formData; ?>_sum' value='' hidden='hidden'>
                         <input type='text' id='f_qsc_total' name='f_<?php echo $formData; ?>_total' value='' hidden='hidden'>
                         <input type='text' id='f_qsc_percentage' name='f_<?php echo $formData; ?>_percentage' value='' hidden='hidden'>
                         <input type='text' id='table' name='table' value='<?php echo $formData; ?>' hidden='hidden'></td>
                          <td>
                            <button type="button" class="btn btn-primary" id="myBtn"><?php echo $this->lang->line('checkdata');?></button>
                          </td>
                          <td></td>
                        </tr>


                      </tbody>
                    </table>
                  </div>
                 
                  <!-- /.card-body -->
                </div>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close" style='text-align: right;'><b><font color='red' size='7'> &times;</font></b></span>
    <div class="card-body p-0">
       <h3 class="card-title"><?php echo $this->lang->line('verify');?></h3>
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th style="width: 10px">#</th>
                          <th><?php echo $this->lang->line('task');?></th>
                          <th style="width: 40px">Checked</th>
                          <th>Comment</th> 
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="align-right">
                          <td></td>
                          <td><span class="direct-chat-name float-end"> <?php echo $this->lang->line('datedata');?></span></td>
                          <td> <input type='textarea' id='datepreview' name='datepreview' disabled></td>
                          <td>
                          </td>
                        </tr>
                        <?php 
                        $u = 1;
                        foreach($getPoint as $rows){ 
                         // echo $i.'<br>';
                         // var_dump($rows); ?> 
                          
                        <tr class="align-middle">
                          <td><?php echo $u ?>.</td>
                          <td><?php if ($_SESSION['slang'] == 'english'){ echo $rows->f_topic_detail_en;} else {echo $rows->f_topic_detail_th;}?></td>
                          <td><p type='textarea' id='<?php echo "pass9s$u"; ?>' name='<?php echo "pass9s$u"; ?>'></p></td>
                          <td>
                            <input type='textarea' id='<?php echo "comment$u"; ?>' name='<?php echo "comment$u"; ?>' disabled>
                          </td>
                        </tr> <?php 
                      $u++;
                      } ?>
                      <tr class="align-right">
                          <td></td>
                          <td><span class="direct-chat-name float-end"> <?php echo $this->lang->line('total');?></span></td>
                          <td> <input type='textarea' id='f_qsc_sum1' name='f_qsc_sum1' disabled></td>
                          <td>
                          </td>
                        </tr>
                         <tr class="align-right">
                          <td></td>
                          <td><span class="direct-chat-name float-end"> <?php echo $this->lang->line('fulltotal');?></span></td>
                          <td> <input type='textarea' id='f_qsc_total1' name='f_qsc_total1' disabled></td>
                          <td>
                          </td>
                        </tr>
                         <tr class="align-right">
                          <td></td>
                          <td><span class="direct-chat-name float-end"> <?php echo $this->lang->line('percenttotal');?></span></td>
                          <td> <input type='textarea' id='f_qsc_percentage1' name='percenttotal1' disabled></td>
                          <td>
                          </td>
                        </tr>
                        <tr class="align-middle">
                          <td></td>
                          <td></td>
                          <td><button type="button" class="btn btn-primary" id="myBtn2"><?php echo $this->lang->line('submit');?></button></td>
                          <td>
                            
                          </td>
                        </tr>


                      </tbody>
                    </table>
                  </div>
   
  </div>
 </form></main>
</div>


<script>
// Get the modal
var modal = document.getElementById("myModal");
var modal2 = document.getElementById("modal-primary");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");
var btn2 = document.getElementById("myBtn2");
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 

    var f_score_1 = document.getElementById("f_score_1"),
        f_score_2 = document.getElementById("f_score_2"),
        f_score_3 = document.getElementById("f_score_3"),
        f_comment1 = document.getElementById("f_comment_1"),
        f_comment2 = document.getElementById("f_comment_2"),
        f_comment3 = document.getElementById("f_comment_3"),
        chk1 = document.getElementById("chk1"),
        chk2 = document.getElementById("chk2"),
        chk3 = document.getElementById("chk3"),
        comment1 = document.getElementById("comment1"),
        comment2 = document.getElementById("comment2"),
        comment3 = document.getElementById("comment3");
/*
f_score_1.addEventListener('change', function() {chk1.checked = f_score_1.checked;});
f_score_2.addEventListener('change', function() {chk2.checked = f_score_2.checked;});
f_score_3.addEventListener('change', function() {chk3.checked = f_score_3.checked;});

f_score_4.addEventListener('change', function() {chk4.checked = f_score_4.checked;});
f_score_5.addEventListener('change', function() {chk5.checked = f_score_5.checked;});
f_score_6.addEventListener('change', function() {chk6.checked = f_score_6.checked;});
f_score_7.addEventListener('change', function() {chk7.checked = f_score_7.checked;});
f_score_8.addEventListener('change', function() {chk8.checked = f_score_8.checked;});
f_score_9.addEventListener('change', function() {chk9.checked = f_score_9.checked;});
f_score_10.addEventListener('change', function() {chk10.checked = f_score_10.checked;});
f_score_11.addEventListener('change', function() {chk11.checked = f_score_11.checked;});
f_score_12.addEventListener('change', function() {chk12.checked = f_score_12.checked;});
f_score_13.addEventListener('change', function() {chk13.checked = f_score_13.checked;});
f_score_14.addEventListener('change', function() {chk14.checked = f_score_14.checked;});
f_score_15.addEventListener('change', function() {chk15.checked = f_score_15.checked;});
f_score_16.addEventListener('change', function() {chk16.checked = f_score_16.checked;});
f_score_17.addEventListener('change', function() {chk17.checked = f_score_17.checked;});
f_score_18.addEventListener('change', function() {chk18.checked = f_score_18.checked;});
f_score_19.addEventListener('change', function() {chk19.checked = f_score_19.checked;});
f_score_20.addEventListener('change', function() {chk20.checked = f_score_20.checked;});
f_score_21.addEventListener('change', function() {chk21.checked = f_score_21.checked;});
f_score_22.addEventListener('change', function() {chk22.checked = f_score_22.checked;});
f_score_23.addEventListener('change', function() {chk23.checked = f_score_23.checked;});
f_score_24.addEventListener('change', function() {chk24.checked = f_score_24.checked;});
f_score_25.addEventListener('change', function() {chk25.checked = f_score_25.checked;});
f_score_26.addEventListener('change', function() {chk26.checked = f_score_26.checked;});
f_score_27.addEventListener('change', function() {chk27.checked = f_score_27.checked;});
f_score_28.addEventListener('change', function() {chk28.checked = f_score_28.checked;});
f_score_29.addEventListener('change', function() {chk29.checked = f_score_29.checked;});
f_score_30.addEventListener('change', function() {chk30.checked = f_score_30.checked;});
f_score_31.addEventListener('change', function() {chk31.checked = f_score_31.checked;});
f_score_32.addEventListener('change', function() {chk32.checked = f_score_32.checked;});
f_score_33.addEventListener('change', function() {chk33.checked = f_score_33.checked;});
f_score_34.addEventListener('change', function() {chk34.checked = f_score_34.checked;});
*/

btn.onclick = function() {
var sumpointqsc = document.getElementById("f_qsc_sum");
var sumpreview = document.getElementById("f_qsc_sum1");
var fulltotal = document.getElementById("f_qsc_total1");
var percenttotal = document.getElementById("f_qsc_percentage1");
var sumpreview1 = document.getElementById("f_qsc_sum");
var fulltotal1 = document.getElementById("f_qsc_total");
var percenttotal1 = document.getElementById("f_qsc_percentage");
let s = 0;
let minusfull = 1;
let chkdate = document.getElementById('f_datetime').value;
let chkbranch = document.getElementById('f_branch_code').value;
var checkbox = "f_score_1";
//alert(document.getElementById(checkbox).value)
let counter = <?php echo $valueCount; ?>;

for (let i = 1; i <= counter; i++){
  var checkbox = "f_score_"+i;
  var comment = "f_comment_"+i;
  var pass = "pass"+i;
  var pass2 = "pass9s"+i;
  var fail = "fail"+i;
  var nai = "na"+i;
  
  if (document.getElementById(fail).checked == true && document.getElementById(comment).value.length == 0) {
    alert('Missing comment'+i);
    exit;
  }

  if (document.getElementById(pass).checked == false && document.getElementById(fail).checked == false && document.getElementById(nai).checked == false) {
    alert('Missing Checked'+i);
    exit;
  }
 //alert(document.getElementsByName(checkbox).value)
  if (document.getElementById(pass).checked == true) {
      s++;
     // alert(document.getElementsByName(checkbox).value)
      document.getElementById(pass2).innerHTML = "ผ่าน";
      document.getElementById(pass2).style.color = '#008000';
  }else if(document.getElementById(fail).checked == true) {
  //  alert(document.getElementsByName(checkbox).value)
    document.getElementById(pass2).innerHTML = "ไม่ผ่าน";
    document.getElementById(pass2).style.color = '#FF0000';
  }else{
    minusfull++;
    document.getElementById(pass2).innerHTML = "N / A";
    document.getElementById(pass2).style.color = '#f9e505ff';
  }
  if (!chkdate) {
      alert('Missing Datetime');
      exit;
  }

  const inputDate = new Date(chkdate); 

const currentDate = new Date();

const nowDate = new Date('Y-d-m');

const inputData = new Date('Y-d-m',chkdate);

  if (inputDate > currentDate) {
      alert('Over Date');
      exit;
  }



  if (!chkbranch) {
      alert('Missing Branch');
      exit;
  }

  let a1 = document.getElementById('comment' + i);
  let a2 = document.getElementById('f_comment_' + i);
    if (a1 && a2) {
        a1.value = a2.value;
    }

}

let fullscore = counter - (minusfull - 1);
let percent = ((s/fullscore) * 100).toFixed(2);


   sumpointqsc.value = s;
   sumpreview.value = s;
   fulltotal.value = fullscore;
   percenttotal.value = percent;
       
/*
        comment1.value = f_comment_1.value;        
        comment2.value = f_comment_2.value;
        comment3.value = f_comment_3.value;
        comment4.value = f_comment_4.value;        
        comment5.value = f_comment_5.value;
        comment6.value = f_comment_6.value;
        comment7.value = f_comment_7.value;        
        comment8.value = f_comment_8.value;
        comment9.value = f_comment_9.value;
        comment10.value = f_comment_10.value;
        comment11.value = f_comment_11.value;        
        comment12.value = f_comment_12.value;
        comment13.value = f_comment_13.value;
        comment14.value = f_comment_14.value;        
        comment15.value = f_comment_15.value;
        comment16.value = f_comment_16.value;
        comment17.value = f_comment_17.value;        
        comment18.value = f_comment_18.value;
        comment19.value = f_comment_19.value;
        comment20.value = f_comment_20.value;
        comment21.value = f_comment_21.value;        
        comment22.value = f_comment_22.value;
        comment23.value = f_comment_23.value;
        comment24.value = f_comment_24.value;        
        comment25.value = f_comment_25.value;
        comment26.value = f_comment_26.value;
        comment27.value = f_comment_27.value;        
        comment28.value = f_comment_28.value;
        comment29.value = f_comment_29.value;
        comment30.value = f_comment_30.value;
        comment31.value = f_comment_31.value;        
        comment32.value = f_comment_32.value;
        comment33.value = f_comment_33.value;
        comment34.value = f_comment_34.value;
*/
        fulltotal1.value = fullscore;
        percenttotal1.value = percent;
        sumpreview1.value = s;
        datepreview.value = f_datetime.value;

//alert(f_chk1.value);
  modal.style.display = "block";
 
}

btn2.onclick = function() {
  var forminput = document.getElementById('forminput');

  var formDataTemp = new FormData(forminput); 
  var dataForm = Object.fromEntries(formDataTemp.entries());
  var provinceId = JSON.stringify(dataForm);

  
  $.get('http://10.0.1.88/online/createtemp.php?province_id=' + provinceId);

  if(confirm('Are you sure?\n') == true){
        forminput.submit();
        }else{
         alert('Abort!!!');
        }
  
//alert(f_chk1.value);
//  modal2.style.display = "block";
 
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

//copy input data

//document.getElementById('f_chk1').onchange =

</script>

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

 

</html>
