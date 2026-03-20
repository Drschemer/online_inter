        <!--begin::Sidebar Brand-->
 		 <aside class="app-sidebar bg-body-secondary shadow" data-bs-theme="dark">
        <div class="sidebar-brand">
          <!--begin::Brand Link-->
          <a href="./index.html" class="brand-link">
            <!--begin::Brand Image-->
            <img
              src="/online/img/newlogo.jpg"
              alt="NARA Logo"
              class="brand-image opacity-75 shadow"
            />
            <!--end::Brand Image-->
            <!--begin::Brand Text-->
           
            <!--end::Brand Text-->
          </a>
          <!--end::Brand Link-->
        </div>
        <!--end::Sidebar Brand-->
        <!--begin::Sidebar Wrapper-->
        <?php if($_SESSION['f_user_login'] == 'suvat.k@naracuisine.com' || $_SESSION['f_user_login'] == 'napatsakorn@naracuisine.com'){ ?>
 <div class="sidebar-wrapper">
          <nav class="mt-2">
            <!--begin::Sidebar Menu-->
            <ul
              class="nav sidebar-menu flex-column"
              data-lte-toggle="treeview"
              role="menu"
              data-accordion="false"
            >
              <li class="nav-item menu-open">
                <a href="#" class="nav-link active">
                  <i class="nav-icon bi bi-speedometer"></i>
                  <p>
                    <?php echo $this->lang->line('systemname');?>
                    <i class="nav-arrow bi bi-chevron-right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                   <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="nav-icon bi bi-circle-fill"></i>
                      <p>
                        <?php echo $this->lang->line('sidemenu1');?>
                        <i class="nav-arrow bi bi-chevron-right"></i>
                      </p>
                    </a>

                    <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu11');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a href="/online/index.php/login/getgraph/102501054/7/qsc1/888" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p><?php echo $this->lang->line('subsidemenul21');?></p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p>
                            <?php echo $this->lang->line('subsidemenu12');?>
                            
                          </p>
                        </a>  
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a href="/online/index.php/login/getgraph/102201018/7/bcl1/555" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p><?php echo $this->lang->line('subsidemenul22');?></p>
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu13');?></p>
                        </a>
                         
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a href="/online/index.php/login/getgraph/102501054/7/dca1/666" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p><?php echo $this->lang->line('subsidemenul23');?></p>
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p>
                            <?php echo $this->lang->line('subsidemenu14');?>
                            
                          </p>
                        </a>  
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a href="/online/index.php/login/getgraph/102501054/7/qsce1/666" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p><?php echo $this->lang->line('subsidemenul24');?></p>
                            </a>
                          </li>
                        </ul>
                      </li>
                    </ul>
                 </li>
               
                </ul>
              </li>
                <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu15');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/login/getgraph/102501054/7/qscakg1/888" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p><?php echo $this->lang->line('subsidemenul25');?></p>
                            </a>
                          </li>
                        </ul>
                      </li> 
               <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="nav-icon bi bi-circle-fill"></i>
                      <p>
                        <?php echo $this->lang->line('sidemenu4');?>
                        <i class="nav-arrow bi bi-chevron-right"></i>
                      </p>
                    </a>

                    <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu31');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/training/dashboard/<?php echo $_SESSION['f_user_code']; ?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p>ชื่อ โมดูล เทรนนิ่ง</p>
                            </a>
                          </li>
                          <li class="nav-item">
                            <a  href="/online/index.php/training/dashboard/<?php echo $_SESSION['f_user_code']; ?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p>มาย โปรไฟล์</p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                       <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu32');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/training/evaluate/" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p>level 3</p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                      </ul>
                       

              </li>
            </ul>
            <!--end::Sidebar Menu-->
          </nav>
        </div>
        <?php }else{ ?>
        <div class="sidebar-wrapper">
          <nav class="mt-2">
            <!--begin::Sidebar Menu-->
            <ul
              class="nav sidebar-menu flex-column"
              data-lte-toggle="treeview"
              role="menu"
              data-accordion="false"
            >
              <li class="nav-item menu-open">
                <a href="#" class="nav-link active">
                  <i class="nav-icon bi bi-speedometer"></i>
                  <p>
                    <?php echo $this->lang->line('systemname');?>
                    <i class="nav-arrow bi bi-chevron-right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                   <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="nav-icon bi bi-circle-fill"></i>
                      <p>
                        <?php echo $this->lang->line('sidemenu1');?>
                        <i class="nav-arrow bi bi-chevron-right"></i>
                      </p>
                    </a>

                    <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                      <?php if(in_array(1,$_SESSION['sidebarPermittion'])){ ?>
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu11');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/login/getgraph/<?php echo $_SESSION['f_user_code'];?>/7/qsc1/<?php echo $_SESSION['f_branch_code'];?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenul21');?></p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                      <?php }if(in_array(2,$_SESSION['sidebarPermittion'])){ ?>
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p>
                            <?php echo $this->lang->line('subsidemenu12');?>
                            
                          </p>
                        </a>
                         
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/login/getgraph/<?php echo $_SESSION['f_user_code'];?>/7/bcl1/<?php echo $_SESSION['f_branch_code'];?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenul22');?></p>
                            </a>
                          </li>
                        </ul>
                      </li>
                      <?php }if(in_array(3,$_SESSION['sidebarPermittion'])){ ?>
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu13');?></p>
                        </a>
                         
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          
                          <li class="nav-item">
                            <a href="/online/index.php/login/getgraph/<?php echo $_SESSION['f_user_code'];?>/7/dca1/<?php echo $_SESSION['f_branch_code'];?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenul23');?></p>
                            </a>
                          </li>
                         
                        </ul>
                      </li>
                      <?php } ?>
                      
                      <?php if(in_array(4,$_SESSION['sidebarPermittion'])){ ?>
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p>
                            <?php echo $this->lang->line('subsidemenu14');?>
                            
                          </p>
                        </a>  
                         <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <?php if(in_array(4,$_SESSION['sidebarPermittion'])){ ?>
                          <li class="nav-item">
                            <a href="/online/index.php/login/getgraph/<?php echo $_SESSION['f_user_code'];?>/7/qsce1/<?php echo $_SESSION['f_branch_code'];?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenul24');?></p>
                            </a>
                          </li>
                          <?php  } if(in_array(6,$_SESSION['sidebarPermittion'])){ ?>
                             <li class="nav-item">
                            <a href="/online/index.php/login/getgraph/<?php echo $_SESSION['f_user_code'];?>/7/qsce2/<?php echo $_SESSION['f_branch_code'];?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p>QSC Evaluation FSS</p>
                            </a>
                          </li>
                          <?php } ?>
                        </ul>
                      </li>
                       <?php } ?>  
                       
                        <?php if(in_array(7,$_SESSION['sidebarPermittion'])){ ?>
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu15');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/login/getgraph/<?php echo $_SESSION['f_user_code'];?>/7/qscakg1/<?php echo $_SESSION['f_branch_code'];?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenul25');?></p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                      <?php } ?>

                       <?php if(in_array(8,$_SESSION['sidebarPermittion'])){ ?>
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu16');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/login/getgraph/<?php echo $_SESSION['f_user_code'];?>/7/qscmbe1/<?php echo $_SESSION['f_branch_code'];?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenul26');?></p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                      <?php } ?>
                    </ul>
                 </li>
                
                 <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="nav-icon bi bi-circle-fill"></i>
                      <p>
                        <?php echo $this->lang->line('sidemenu3');?>
                        <i class="nav-arrow bi bi-chevron-right"></i>
                      </p>
                    </a>

                    <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu31');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/training/course/" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenutrainingmodule');?></p>
                            </a>
                          </li>
                          <li class="nav-item">
                            <a  href="/online/index.php/training/dashboard/<?php echo $_SESSION['f_user_code']; ?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenutrainingprofile');?></p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                       <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu32');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/training/evaluate/" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('subsidemenutrainingeva');?></p>
                            </a>
                          </li>
                          <li class="nav-item">
                            <a  href="/online/index.php/training/evaluate_test/" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                               <p><?php echo $this->lang->line('evaluate_test');?></p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                      </ul>
                       

              </li>

               <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="nav-icon bi bi-circle-fill"></i>
                      <p>
                        <?php echo $this->lang->line('sidemenu4');?>
                        <i class="nav-arrow bi bi-chevron-right"></i>
                      </p>
                    </a>

                    <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                      <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu31');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/training/dashboard/<?php echo $_SESSION['f_user_code']; ?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p>coming soon!!!</p>
                            </a>
                          </li>
                          <li class="nav-item">
                            <a  href="/online/index.php/training/dashboard/<?php echo $_SESSION['f_user_code']; ?>" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                             <p>coming soon!!!</p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                       <li class="nav-item">
                        <a href="#" class="nav-link ">
                          <i class="nav-icon bi bi-arrow-return-right"></i>
                          <p><?php echo $this->lang->line('subsidemenu32');?></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none; box-sizing: border-box;">
                          <li class="nav-item">
                            <a  href="/online/index.php/training/evaluate/" class="nav-link">
                              <i class="nav-icon bi bi-record-circle-fill"></i>
                              <p>coming soon!!!</p>
                            </a>
                          </li>
                        </ul>
                      </li> 
                      </ul>
                       

              </li>
                          
                </ul>
              </li>
     
                 

                
            
            </ul>
            <!--end::Sidebar Menu-->
          </nav>
        </div>
        <?php } ?>
   </aside>