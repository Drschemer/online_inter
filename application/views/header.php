        <!--begin::Container-->
      <nav class="app-header navbar navbar-expand bg-body"> 
        <div class="container-fluid">
          <!--begin::Start Navbar Links-->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" data-lte-toggle="sidebar" href="#" role="button">
                <i class="bi bi-list"></i>
              </a>
            </li>
            <ol class="breadcrumb float-sm-end">
                  <li class="breadcrumb-item"><a href="/online_inter/index.php/langswitch/switchlanguage/english">EN</a></li>
                  <li class="breadcrumb-item"><a href="/online_inter/index.php/langswitch/switchlanguage/thailand">TH</a></li>
                </ol>
          </ul>
          <!--end::Start Navbar Links-->
          <!--begin::End Navbar Links-->
          <ul class="navbar-nav ms-auto">
            <!--begin::Navbar Search-->
            <div class="col-4">
                        <input type="text" class="form-control" placeholder="search..." id='search'>
            </div>
            <li class="nav-item">
              <a class="nav-link" data-widget="navbar-search" role="button" id='searchBtn'>
                <i class="bi bi-search"></i>
              </a>
            </li>
            <!--end::Navbar Search-->


            <!--begin::Fullscreen Toggle-->
            <li class="nav-item">
              <a class="nav-link" href="#" data-lte-toggle="fullscreen">
                <i data-lte-icon="maximize" class="bi bi-arrows-fullscreen"></i>
                <i data-lte-icon="minimize" class="bi bi-fullscreen-exit" style="display: none"></i>
              </a>
            </li>
            <!--end::Fullscreen Toggle-->
            <!--begin::User Menu Dropdown-->
            <li class="nav-item dropdown user-menu">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                <?php 
                $ucode = $_SESSION['f_user_code'];
                $fname = "./././online_inter/img/avatar/$ucode.jpg";
                $serverPath = $_SERVER['DOCUMENT_ROOT'] . "/online_inter/img/avatar/$ucode.jpg";
                $fname2 = "/online_inter/img/avatar/$ucode.jpg";
               // echo file_exists($fname);die();
                if (file_exists($serverPath)) { ?>
                    <img
                                  src="<?php echo $fname2; ?>"
                                  class="user-image rounded-circle shadow"
                                  alt="User Image"
                                />
                <?php } else { ?>
                  <img
                                  src="/online_inter/img/avatar/logo.png"
                                  class="user-image rounded-circle shadow"
                                  alt="User Image"
                                />
                <?php } ?>
                
                <span class="d-none d-md-inline"><?php if ($_SESSION['slang'] == 'english'){ 
                      
                       echo $_SESSION['f_user_name_en'];  
                      } else {
                         echo $_SESSION['f_user_name_th'];
                         }?></span>
              </a>
              <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-end" >
                <!--begin::User Image-->
                <li class="user-header text-bg-primary">
                    <img
                                  src="<?php if (file_exists($serverPath)) {  echo $fname2; } else {echo "/online_inter/img/avatar/logo.png";}?>"
                
                    class="rounded-circle shadow"
                    alt="User Image"
                  />
                  <p>
                    <?php if ($_SESSION['slang'] == 'english'){ 
                      
                       echo $_SESSION['f_user_name_en'];  
                      } else {
                         echo $_SESSION['f_user_name_th'];
                         }echo '<br>'.$_SESSION['f_position'] ;?>
                    <small><?php echo $_SESSION['f_user_login'];?></small>
                    <?php //var_dump($_SESSION['f_rm_th']);
                    $s = 0;
                    if($_SESSION['f_branch_code'] == 888){ 
                              if ($_SESSION['slang'] == 'english'){ 
                              foreach($_SESSION['f_rm_en'] as $rows3=>$value3){ ?>
                                <small><?php  echo $value3["0"].':';if(isset($value3["1"])){echo $value3["1"];} if(isset($value3["2"])){echo '/'.$value3["2"];}?></small>
                              <?php $s++;}
                              } else {
                                foreach($_SESSION['f_rm_th'] as $rows3=>$value3){ ?>
                                <small><?php  echo $value3["0"].':';if(isset($value3["1"])){echo $value3["1"];} if(isset($value3["2"])){echo '/'.$value3["2"];}?></small>
                              <?php $s++;}
                                }
                            }else{
                              if ($_SESSION['slang'] == 'english'){ 
                              foreach($_SESSION['f_branch_en'] as $rows3){ ?>
                                <small><?php echo $rows3;?></small>
                              <?php }
                              } else {
                                foreach($_SESSION['f_branch_th'] as $rows3){ ?>
                                <small><?php echo $rows3;?></small>
                              <?php }
                                }
                            }?>
                    
                  </p>
                </li>
                <!--end::User Image-->
                <!--begin::Menu Body-->
                <li class="user-body">
                  <!--begin::Row-->
                  
                  <!--end::Row-->
                </li>
                <!--end::Menu Body-->
                <!--begin::Menu Footer-->
                <li class="user-footer">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                  <a href="<?php echo base_url();?>login/signout" class="btn btn-default btn-flat float-end">Sign out</a>
                </li>
                <!--end::Menu Footer-->
              </ul>
            </li>
            <!--end::User Menu Dropdown-->
          </ul>
          <!--end::End Navbar Links-->
        </div>
        <!--end::Container-->
       </nav>
<script>
      const searchBtn = document.getElementById("searchBtn");
      var searchdata = document.getElementById('search');

        searchBtn.addEventListener("click", function () {
          
        });


      searchdata.addEventListener("keydown", function(event) {
      // Check if the pressed key is 'Enter'
      if (event.key === "Enter") {
        const searchResult = window.find(searchdata.value);
        }
      });

</script>