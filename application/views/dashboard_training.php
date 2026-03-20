<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->load->helper('url');
$this->lang->load("form_input",$_SESSION['slang']);
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Training</title>
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
                  <li class="breadcrumb-item active" aria-current="page"><?php echo $this->lang->line('sidemenu3');?></li>
                </ol>
              </div>
            </div>
            <!--end::Row-->
          </div>
          <!--end::Container-->
        </div>
        <!--end::App Content Header-->
        <!--begin::App Content-->
        <div class="app-content">
          <!--begin::Container-->
          <div class="container-fluid">
            <!-- Timelime example  -->
            <div class="row">
              <div class="col-md-12">
                <!-- The time line -->

                <div class="timeline">
                  <!-- timeline time label -->
                   <?php //var_dump($TrainingInfo);die();
                   $temp1 = '';
                   foreach($TrainingInfo as $rows=>$value){ ?>
                    
                  <div class="time-label"><span class="text-bg-danger"><?php echo $value[0].' '.$value[1]; ?></span></div>
                 
                  <!-- /.timeline-label -->
                  
                  <!-- timeline item -->
                  <div>
                    <?php foreach($value[2] as $data=>$info){ ?>
                    <i class="timeline-icon bi bi-person text-bg-success"></i>
                    <div class="timeline-item">
                      <span class="time"> <i class="bi bi-clock-fill"></i></span>
                      <h3 class="timeline-header no-border">
                        ได้รับการอบรมเรื่อง <a href="#"><?php echo $info->f_topic_name; ?></a> || <b><font color='blue'>Trained</font></b> 
                        <?php if($info->f_image){
                        echo " --> "."<img src='http://10.0.1.88/online_staging/online/img/training/".$info->f_image."' class='user-image rounded-square shadow' alt='Image' width='300px' hight='200px' onclick='onClick(this)' class='w3-hover-opacity'>";
                      } ?>
                      </h3>
                    </div>
                    <?php } ?>
                  </div>
                  <!-- END timeline item -->
                 <?php
                //$temp1 = $value->f_datetime;
                 } ?>
                </div>

                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!--end::Container-->
        </div>
        <!--end::App Content-->
      </main>

</div>


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
     <script>

       var lenthGraph = document.getElementById('lenghtgraph') 
       

      lenthGraph.onchange = function() {
        window.location.replace("<?php echo base_url().'login/changeLengthGraph/';?>"+lenthGraph.value);
        //alert(manager.value);
      }
      </script>

     <script>

      var manager = document.getElementById('areamanager')
      var lenghtgraphcoo = document.getElementById('lenghtgraphcoo') 

      lenghtgraphcoo.onchange = function() {
        if(!manager.value){
          alert("Select Area Manager");
          exit;
        }
        window.location.replace("<?php echo base_url().'login/getgraph/';?>"+manager.value+"/"+lenghtgraphcoo.value);
        //alert(manager.value);
      }

     function onClick(element) {
          document.getElementById("img01").src = element.src;
          document.getElementById("modal01").style.display = "block";
        }

     </script>
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
