

 <?php include 'include/header.php';?>
 <?php include 'include/navbarsecond.php';?>




    <!-------------------------------------------------------------------- Post Section start -------------------------------------------------->
<section class="post-section">
    <div>
      <div class="container m-auto pt-5 row">    
        <div class="col-md-9">

      
          <?php
          if(!empty($_GET)){

          
           $post_id=$_GET['id'];
           
           $postQuery="SELECT * FROM posts WHERE id=$post_id";
           $runPQ=mysqli_query($db,$postQuery);
           while($post=mysqli_fetch_assoc($runPQ)){
            ?>
  
          
            <div class="posts">
              <div class="post-content">
                  <div class="post-image">
                      <div>
                          <img src="./assets/blog/<?php echo $post['pictures']?>" class="img" alt="blog1">
                      </div>
                      <div class="post-info flex-row">
                          <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;Admin</span>
                          <span><i class="fas fa-calendar-alt text-gray"></i>Posted on <?php echo date('F d ,Y',strtotime($post['created_at']))?></span>
                          <span>2 Commets</span>
                      </div>
                  </div>
                  <div class="post-title">
                      <h3><?php echo $post['title']?></h3>
                      <p><?php echo $post['content']?></p>

                      
                      
                     
                  </div>
              </div>
              </div>
              </div>   
              <?php
          }
        }
        else{
              header("location: http://localhost/ourawesomeworld/");
        }

          ?>
      


        <!-------------------------------------------------------------------- Post Section End -------------------------------------------------->

<!-------------------------------------------------------------------- Sidebar Section start -------------------------------------------------->
            <div class="col-md-3">
                    <!--------Popular Posts---------->
                    <div class="popular-post">
                <h2>Related Post</h2>
                
                
                <?php 
              
              
               
                $rpquery="SELECT * FROM posts WHERE category_id=3";
                  $prun=mysqli_query($db,$rpquery);
                  while($rpost=mysqli_fetch_assoc($prun)){
                    ?>

                  <div class="post-content" >
                        <div class="post-image">
                            <div>
                                <img src="./assets/blog/<?=$rpost['pictures']?>" class="img" alt="blog1">
                            </div>
                            <div class="post-info flex-row">
                                <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;<?=date('F d ,Y',strtotime($rpost['created_at']))?></span>
                                <span>2 Commets</span>
                            </div>
                        </div>
                        <div class="post-title">
                            <h5><?=$rpost['title']?></h5>
                        </div>
                    </div>

                    <?php
                  
                  }
                  ?>
              
              <!--------Popular Posts---------->
            </div>

<!-------------------------------------------------------------------- Sidebar Section start -------------------------------------------------->


            
      </div>
      </div>
    </section>

    <!-------------------------------------------------------------------- Post Section End -------------------------------------------------->

    
    <!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
    <?php include_once('include/footer.php'); ?>
    <!-------------------------------------------------------------------- Footer Section-------------------------------------------------->



    
  
   