<?php require_once Root_Path . 'inc/header.php';?>
<?php require_once Root_Path . 'inc/nav.php';?>
<?php require_once Root_Path . 'src/Database.php';?>
<?php require_once Root_Path . 'src/DB_Actions/Blogs.php';?>
<?php require_once Root_Path . 'src/DB_Functions.php';?>

<?php
 $db = new DataBase();
 $conn = $db->getConnection();
$blogs = new Blog($conn);
$blogs_res = $blogs->readAll();
if(isset($_GET['id'])){$id = $_GET['id'];}
else{$id = rand(1,mysqli_num_rows($blogs_res));}
$blog_res = $blogs->read($id);
$blog_row = mysqli_fetch_assoc($blog_res);
?>


	  <!--breadcrumbs area start-->
      <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="index-2.html">home</a></li>
                            <li>Blog Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
	
	<!--blog body area start-->
    <div class="blog_details mt-60">
        <div class="container">
            <div class="row">
              
                <div class="col-lg-9 col-md-12">
                    <!--blog grid area start-->
                    <div class="blog_wrapper">
                        <article class="single_blog">
                            <figure>
                               <div class="post_header">
                                   <h3 class="post_title"><?php echo $blog_row['title'];?></h3>
                                    <div class="blog_meta">                                        
                                        <span class="author">Posted by : <?php echo $blog_row['author_name'];?>/ </span>
                                        <span class="post_date"><?php echo $blog_row['created_at'];?></span>
                                    </div>
                                </div>
                                <div class="blog_thumb">
                                   <a href="#"><img src=<?php echo Base_Url . "public/images/blogs/" . $blog_row['image'];?> alt=""></a>
                               </div>
                               <figcaption class="blog_content">
                                    <div class="post_content">
                                    <blockquote>
                                            <p><?php echo $blog_row['special_content'];?></p>
                                        </blockquote>
                                        <p><?php echo $blog_row['content'];?></p>
                                        

                                    </div>
                                    <div class="entry_content">
                                        <div class="post_meta">
                                            <span>Tags: </span>
                                            <span><a href="#">Drone, </a></span>
                                            <span><a href="#">Sky, </a></span>
                                            <span><a href="#">Fly</a></span>
                                        </div>

                                        <div class="social_sharing">
                                            <p>share this post:</p>
                                            <ul>
                                                <li><a href="https://www.facebook.com/" title="facebook"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#" title="https://www.twitter.com/"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#" title="https://www.pinterest.com/"><i class="fa fa-pinterest"></i></a></li>
                                                <li><a href="#" title="https://www.google.com/"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#" title="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                               </figcaption>
                            </figure>
                        </article>
                        <div class="comments_box">
                            <h3>3 Comments	</h3>
                            <div class="comment_list">
                                <div class="comment_thumb">
                                    <img src="assets/img/blog/comment3.png.jpg" alt="">
                                </div>
                                <div class="comment_content">
                                    <div class="comment_meta">
                                        <h5><a href="#">Admin</a></h5>
                                        <span>October 16, 2018 at 1:38 am</span> 
                                    </div>
                                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure</p>
                                    <div class="comment_reply">
                                        <a href="#">Reply</a>
                                    </div>
                                </div>

                            </div>
                            <div class="comment_list list_two">
                                <div class="comment_thumb">
                                    <img src="assets/img/blog/comment3.png.jpg" alt="">
                                </div>
                                <div class="comment_content">
                                    <div class="comment_meta">
                                        <h5><a href="#">Demo</a></h5>
                                        <span>October 16, 2018 at 1:38 am</span> 
                                    </div>
                                    <p>Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur</p>
                                    <div class="comment_reply">
                                        <a href="#">Reply</a>
                                    </div>
                                </div>
                            </div>
                            <div class="comment_list">
                                <div class="comment_thumb">
                                    <img src="assets/img/blog/comment3.png.jpg" alt="">
                                </div>
                                <div class="comment_content">
                                    <div class="comment_meta">
                                        <h5><a href="#">Admin</a></h5>
                                        <span>October 16, 2018 at 1:38 am</span> 
                                    </div>
                                    <p>Quisque orci nibh, porta vitae sagittis sit amet, vehicula vel mauris. Aenean at</p>
                                    <div class="comment_reply">
                                        <a href="#">Reply</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comments_form">
                            <h3>Leave a Reply </h3>
                            <p>Your email address will not be published. Required fields are marked *</p>
                            <form action="#">
                                <div class="row">
                                    <div class="col-12">
                                        <label for="review_comment">Comment </label>
                                        <textarea name="comment" id="review_comment" ></textarea>
                                    </div> 
                                    <div class="col-lg-4 col-md-4">
                                        <label for="author">Name</label>
                                        <input id="author"  type="text">

                                    </div> 
                                    <div class="col-lg-4 col-md-4">
                                        <label for="email">Email </label>
                                        <input id="email"  type="text">
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <label for="website">Website </label>
                                        <input id="website"  type="text">
                                    </div>   
                                </div>
                                <button class="button" type="submit">Post Comment</button>
                             </form>    
                        </div>
                         
                    </div>
                    <!--blog grid area start-->
                </div>
                <div class="col-lg-3 col-md-12">
                <div class="blog_sidebar_widget">
                        <div class="widget_list widget_search">
                            <h3>Search</h3>
                            <form method = "GET" action ="route.php">
                            <input type="hidden" name="page" value="blog-details">
                                <input name="search_query" placeholder="Search..." type="text" value="<?php echo isset($_GET['search_query'])?$_GET['search_query'] : '';?>">
                                <button type="submit">search</button>
                            </form>
                            <?php if(isset($_GET['search_query'])):?>
                            <?php
                                $search_query = mysqli_real_escape_string($conn, $_GET['search_query']);
                                $sql = "SELECT * FROM `blogs` WHERE `title` LIKE '%$search_query%'";
                                $search_res = mysqli_query($conn,$sql);
 
                            
                            ?>
                            
                        </div>
                        <?php if(mysqli_num_rows($search_res) > 0):?>
                        
                            <div class="widget_list widget_post">
                            <h3>Search Results</h3>
                            <?php while($search_row = mysqli_fetch_assoc($search_res)):?>
                            <div class="post_wrapper">
                                <div class="post_thumb">
                                    <a href=<?php echo url("blog-details&id=") . $search_row['id'];?>><img src=<?php echo Base_Url . "public/images/blogs/" .  $search_row['image'];?> alt=""></a>
                                </div>
                                <div class="post_info">
                                    <h3><a href=<?php echo url("blog-details&id=") . $search_row['id'];?>><?php echo $search_row['title'];?></a></h3>
                                    <span><?php echo $search_row['created_at'];?> </span>
                                </div>
                            </div>
                            <?php endwhile;?>
                             <?php else:?>
                                <h3><?php echo "No Result Found";?></h3>
                                <?php endif;?>
                             
                        </div>
                        <?php else:?>
                            <h3></h3>
                        <div class="widget_list widget_post">
                            <h3>Recent Posts</h3>
                            <?php $recent_res = select_limit("blogs","DESC","3");?>
                            <?php while($recent_row = mysqli_fetch_assoc($recent_res)):?>
                            <div class="post_wrapper">
                                <div class="post_thumb">
                                    <a href=<?php echo url("blog-details&id=") . $recent_row['id'];?>><img src=<?php echo Base_Url . "public/images/blogs/" .  $recent_row['image'];?> alt=""></a>
                                </div>
                                <div class="post_info">
                                    <h3><a href=<?php echo url("blog-details&id=") . $recent_row['id'];?>><?php echo $recent_row['title'];?></a></h3>
                                    <span><?php echo $recent_row['created_at'];?> </span>
                                </div>
                            </div>
                            <?php endwhile;?>
                             
                             
                        </div>
                        <?php endif;?>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--blog section area end-->
	
	
    <!--footer area start-->
    <?php require_once Root_Path . 'inc/footer.php';?>
    <!--footer area end-->
