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

</head>

<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">   

<?php //var_dump($_SESSION);die(); ?>
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
            <!-- start suvat-->  
            <?php if($_SESSION['f_user_login'] == 'suvat.k@naracuisine.com' || $_SESSION['f_user_login'] == 'manar@naracuisine.com' || $_SESSION['f_user_login'] == 'pakpoom@naracuisine.com' || $_SESSION['f_user_login'] == 'napatsakorn@naracuisine.com'){ ?>
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectManaer');?></span>
                    <div class="col-md-12">
                        <select id="areamanager" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <?php if($mgrSelect){?>
                              <option value="" selected="selected">---Select---</option> 
                            <?php }else{ ?>
                          <option value="" selected="selected">---Select---</option> <?php } ?>
                         <?php $t=0; foreach($arealist as $rows6=>$value6){ ?>
                          <option value="<?php echo $value6->f_user_code; ?>"><?php if($_SESSION['slang'] == 'english'){echo $value6->f_user_name_en;}else{echo $value6->f_user_name_th;} ?></option>
                          <?php	
			                    $t++;}?>
                        </select>
                        <input type='text' id='datatable' name='datatable' value='<?php if(!$datatable){$datatable = 'qsc1';} echo $datatable;?>' hidden='hidden'>
                        <input type='text' id='functions' name='functions' value='<?php if(!$functions){$functions = '888';}echo $functions;?>' hidden='hidden'>
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
                    <span class="info-box-text"><?php echo $this->lang->line('selectgraphlenth');?></span>
                    <div class="col-md-12">
                        <select id="lenghtgraphcoo" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                        <!--  <option value="7" <?php if($graphLenth == 7){echo 'selected="selected"'; }?>>7</option>
                          <option value="15" <?php if($graphLenth == 15){echo 'selected="selected"'; }?>>15</option>
                          <option value="30" <?php if($graphLenth == 30){echo 'selected="selected"'; }?>>30</option> -->
                          <option value="">---Select---</option>
                          <option value="7">7</option>
                          <option value="15">15</option>
                          <option value="30">30</option>
                        
                        </select>
                      </div>
                  </div> 
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div><h5> <?php echo  $this->lang->line('watching'); if($table == 'qsc1'){echo ' - Nara Group-Service';} if($table == 'qscakg1'){echo ' - AnnKuagai';} if($table == 'qscmbe1'){echo ' - Mee Ban Eang';} if($table == 'dca1'){echo ' - Nara Group-Kitchen';} if($table == 'bcl1'){echo ' - Nara Group-Bar';} echo  ' '.$this->lang->line('mgrname'); echo ' = '.$mgrSelect.' '; echo  $this->lang->line('graphperiod'); echo ' = '.$graphLenth.' Days'; ?>  </h5>
              <?php } ?>

              <!-- start mana -->



              <?php if($_SESSION['f_user_login'] != 'suvat.k@naracuisine.com' && $_SESSION['f_user_login'] != 'manar@naracuisine.com' && $_SESSION['f_user_login'] != 'pakpoom@naracuisine.com' && $_SESSION['f_user_login'] != 'napatsakorn@naracuisine.com'){ ?>
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon text-bg-warning shadow-sm">
                    <i class="bi bi-people-fill"></i>
                  </span> 
                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $this->lang->line('selectgraphlenth');?></span>
                    <div class="col-md-12">
                        <select id="lenghtgraph" class="form-select form-select-lg" aria-label="Sidebar Color Mode Select">
                          <option value="7" <?php if($graphLenth == 7){echo 'selected="selected"'; }?>>7</option>
                          <option value="15" <?php if($graphLenth == 15){echo 'selected="selected"'; }?>>15</option>
                          <option value="30" <?php if($graphLenth == 30){echo 'selected="selected"'; }?>>30</option>
                        
                        </select>
                      </div><input type='text' name='table' id='table' value='<?php echo $table; ?>' hidden='hidden'>
                  </div> 
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>                     <h5> <?php echo  $this->lang->line('watching'); if($table == 'qsc1'){echo ' - Nara Group-Service';} if($table == 'qscakg1'){echo ' - AnnKuagai';} if($table == 'qscmbe1'){echo ' - Mee Ban Eang';} if($table == 'dca1'){echo ' - Nara Group-Kitchen';} if($table == 'bcl1'){echo ' - Nara Group-Bar';} ?> </h5>

              <?php }?>

              <!--begin::Col-->
             <div class="card-body">
                    <div class="d-flex">
                      <p class="d-flex flex-column">
                        <span class="fw-bold fs-5"><!-- $18,230.00 --></span> <span><?php echo $this->lang->line('graphname');?></span>
                      </p>
                      <p class="ms-auto d-flex flex-column text-end">
                        <span class="text-success"> <i class="bi bi-arrow-up"></i> <!-- 33.1% --> </span>
                        <span class="text-secondary"><?php echo $this->lang->line('dayback')." $graphLenth ". $this->lang->line('day');?></span>
                      </p>
                    </div>
                    <!-- /.d-flex -->
                    <div class="position-relative mb-4"><div id="sales-chart"></div></div>
                    <div class="d-flex flex-row justify-content-end">
                      
                    </div>
                  </div>
                  <?php if($_SESSION['f_user_login'] != 'suvat.k@naracuisine.com' && $_SESSION['f_user_login'] != 'napatsakorn@naracuisine.com' && in_array(1,$_SESSION['sidebarPermittion'])){ ?>
              <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 1-->
                
                <div class="small-box text-bg-primary">
                  <div class="inner">
                    <h4>Area Store visit Checklist</h4>
                    <p>Online </p>
                  </div>
                  <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/forminput/qsc1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                   <?php echo $this->lang->line('start');?><i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                
                <!--end::Small Box Widget 1-->
              </div><?php } ?>
              <!--end::Col-->
              <?php if(in_array(1,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-success">
                  <div class="inner">
                    <h4>Area Store visit Checklist</h4>
                    <p>Comment</p>
                  </div>
                  <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/comment/qsc1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('result');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div>  
                
               <?php }if($_SESSION['f_user_login'] != 'suvat.k@naracuisine.com' && $_SESSION['f_user_login'] != 'napatsakorn@naracuisine.com' && in_array(2,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-primary">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card2');?></h4>
                    <p>Online</p>
                  </div>
                 <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/forminput/bcl1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                   <?php echo $this->lang->line('start');?><i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> <?php } ?>
                <?php if(in_array(2,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-success">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card2');?></h4>
                    <p>Comment</p>
                  </div>
                  <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/comment/bcl1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('result');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> 

            <?php }if($_SESSION['f_user_login'] != 'suvat.k@naracuisine.com' && $_SESSION['f_user_login'] != 'napatsakorn@naracuisine.com' && in_array(3,$_SESSION['sidebarPermittion'])){ ?>
                 <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-primary">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card3');?></h4>
                    <p>Online</p>
                  </div>
                   <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/forminput/dca1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('start');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> <?php } ?>

               <?php if(in_array(3,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-success">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card3');?></h4>
                    <p>Comment</p>
                  </div>
                  <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/comment/dca1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('result');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> 
              
              <?php }if($_SESSION['f_user_login'] != 'suvat.k@naracuisine.com' && $_SESSION['f_user_login'] != 'napatsakorn@naracuisine.com' && in_array(4,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-primary">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card4');?></h4>
                    <p>Local</p>
                  </div>
                   <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/forminput/qsce1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('start');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> <?php } ?>

               <?php if(in_array(4,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-success">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card4');?></h4>
                    <p>Local</p>
                  </div>
                  <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/comment/qsce1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('result');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> 
              <?php }if($_SESSION['f_user_login'] != 'suvat.k@naracuisine.com' && $_SESSION['f_user_login'] != 'napatsakorn@naracuisine.com' && in_array(6,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-primary">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card5');?></h4>
                    <p>International</p>
                  </div>
                   <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/forminput/qsce1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('start');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> <?php } ?>

               <?php if(in_array(6,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-success">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card5');?></h4>
                    <p>International</p>
                  </div>
                  <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/comment/qsce1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('result');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> 
              <?php }if($_SESSION['f_user_login'] != 'suvat.k@naracuisine.com' && $_SESSION['f_user_login'] != 'napatsakorn@naracuisine.com' && in_array(7,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-primary">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card7');?></h4>
                    <p>Online</p>
                  </div>
                   <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/forminput/qscakg1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('start');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> <?php } ?>

               <?php if(in_array(7,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-success">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card7');?></h4>
                    <p>Comment</p>
                  </div>
                  <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/comment/qscakg1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('result');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> 
               <?php }if($_SESSION['f_user_login'] != 'suvat.k@naracuisine.com' && $_SESSION['f_user_login'] != 'napatsakorn@naracuisine.com' && in_array(8,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-primary">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card8');?></h4>
                    <p>MBE</p>
                  </div>
                   <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/forminput/qscmbe1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('start');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> <?php } ?>

               <?php if(in_array(8,$_SESSION['sidebarPermittion'])){ ?>
               <div class="col-lg-3 col-6">
                <!--begin::Small Box Widget 2-->
                <div class="small-box text-bg-success">
                  <div class="inner">
                    <h4><?php echo $this->lang->line('card8');?></h4>
                    <p>MBE</p>
                  </div>
                  <svg class="small-box-icon" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z"></path>
                  </svg>
                  <a href="/online_inter/index.php/qsr/comment/qscmbe1" class="small-box-footer link-light link-underline-opacity-0 link-underline-opacity-50-hover">
                    <?php echo $this->lang->line('result');?> <i class="bi bi-link-45deg"></i>
                  </a>
                </div>
                <!--end::Small Box Widget 2-->
              </div> 
              <?php } ?> 
                </div>
                <!--end::Small Box Widget 2-->
              </div>
              <!--end::Col-->
              <!--end::Col-->
            </div>
            <!-- /.row (main row) -->
          </div>
          <!--end::Container-->
        </div>
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
     <script>

       var lenthGraph = document.getElementById('lenghtgraph') 
       var table = document.getElementById('table') 
       

      lenthGraph.onchange = function() {
        window.location.replace("<?php echo base_url().'login/changeLengthGraph/';?>"+lenthGraph.value+'/'+table.value);
        //alert(manager.value);
      }
      </script>

     <script>

      var manager = document.getElementById('areamanager')
      var lenghtgraphcoo = document.getElementById('lenghtgraphcoo') 
      var datatable = document.getElementById('datatable')
      var functions = document.getElementById('functions') 

      lenghtgraphcoo.onchange = function() {
        if(!manager.value){
          alert("Select Area Manager");
          exit;
        }
      //  alert("<?php echo base_url().'login/getgraph/';?>"+manager.value+"/"+lenghtgraphcoo.value+"/"+datatable.value+"/"+functions.value);
        window.location.replace("<?php echo base_url().'login/getgraph/';?>"+manager.value+"/"+lenghtgraphcoo.value+"/"+datatable.value+"/"+functions.value);
        //alert(manager.value);
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
//Kang
      const sales_chart_options = {
        series: [
          <?php foreach($graph as $rows9=>$value9){ ?>
				  {
            name: '<?php echo $value9['0'];?>',
            data: [<?php if($graphLenth == "7"){
              $arr = array(1,3,5,7,9,11,13);for($y=1;$y<=14;$y++){if(in_array($y,$arr)){echo $value9["$y"].',';}}
            }elseif($graphLenth == "15"){
              $arr = array(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29);for($y=1;$y<=30;$y++){if(in_array($y,$arr)){echo $value9["$y"].',';}}
            }elseif($graphLenth == "30"){
              $arr = array(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59);for($y=1;$y<=60;$y++){if(in_array($y,$arr)){echo $value9["$y"].',';}}
            }?>],
          },
			<?php	
			}?>
        ],
        chart: {
          type: 'bar',
          height: 200,
        },
       <?php if(count($graph) == 1){
          echo " title: {
          text: '".$graph['0']['0']."'},";
        } ?>
        
        
        plotOptions: {
          bar: {
            horizontal: false,
            columnWidth: '75%',
            endingShape: 'rounded',
            dataLabels: {
              position: 'top',
            },
          },
        },
        dataLabels: {
          enabled: true,
          offsetX: 0,
          textAnchor: 'middle',
          style: {
            fontSize: '12px',
            colors: ['#000']
          }
        },
        legend: {
          show: true,
        },
        colors: ['#3B71CA', '#9FA6B2', '#14A44D', '#54B4D3', '#E4A11B', '#E3711B', '#E49de2', '#F369AA'],
        dataLabels: {
          enabled: true,
        },
        stroke: {
          show: true,
          width: 2,
          colors: ['transparent'],
        },
        xaxis: {
          categories: [<?php if($graphLenth == 7){
            $arr = array(2,4,6,8,10,12,14);for($y=1;$y<=15;$y++){if(in_array($y,$arr)){echo '"'.$value9["$y"].'",';}}
            }elseif($graphLenth == 15){
            $arr = array(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30);for($y=1;$y<=31;$y++){if(in_array($y,$arr)){echo '"'.$value9["$y"].'",';}}
            }elseif($graphLenth == 30){
            $arr = array(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60);for($y=1;$y<=61;$y++){if(in_array($y,$arr)){echo '"'.$value9["$y"].'",';}}
            }?>],
        },
        yaxis: {
      
      min: 1,
      max: 100,
        },
        fill: {
          opacity: 1,
        },
        tooltip: {
          y: {
            formatter: function (val) {
              return val;
            },
          },
        },
      };

      const sales_chart = new ApexCharts(
        document.querySelector('#sales-chart'),
        sales_chart_options,
      );
      sales_chart.render();

      var then,now=new Date();

      
        then=new Date();
      

      

      document.getElementById('loadtime').innerHTML = ' Load Time '+((then-now)/1000)+' sec';

      //geo
        

      function geoFindMe() {
  const status = document.querySelector("#status");
  const mapLink = document.querySelector("#map-link");

  mapLink.href = "";
  mapLink.textContent = "";

  function success(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;

    status.textContent = "";
    mapLink.href = `https://www.openstreetmap.org/#map=18/${latitude}/${longitude}`;
    mapLink.textContent = `Latitude: ${latitude} °, Longitude: ${longitude} °`;
  }

  function error() {
    status.textContent = "Unable to retrieve your location";
  }

  if (!navigator.geolocation) {
    status.textContent = "Geolocation is not supported by your browser";
  } else {
    status.textContent = "Locating…";
    navigator.geolocation.getCurrentPosition(success, error);
  }
}

document.querySelector("#find-me").addEventListener("click", geoFindMe);

/////
    </script>

    <script>
  function geoFindMe() {
  const status = document.querySelector("#status");
  const mapLink = document.querySelector("#map-link");

  mapLink.href = "";
  mapLink.textContent = "";

  function success(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;

    status.textContent = "";
    mapLink.href = `https://www.openstreetmap.org/#map=18/${latitude}/${longitude}`;
    mapLink.textContent = `Latitude: ${latitude} °, Longitude: ${longitude} °`;
  }

  function error() {
    status.textContent = "Unable to retrieve your location";
  }

  if (!navigator.geolocation) {
    status.textContent = "Geolocation is not supported by your browser";
  } else {
    status.textContent = "Locating…";
    navigator.geolocation.getCurrentPosition(success, error);
  }
}

document.querySelector("#find-me").addEventListener("click", geoFindMe);
</script>
</html>
