<?php if(isset($_SESSION['auth']))
{
    redirect("index");
}
?>
<?php require_once Root_Path . 'inc/header.php';?>
<?php require_once Root_Path . 'inc/nav.php';?>



    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href=<?php echo url("index");?>>home</a></li>
                            <li>Register</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
                <span class="text-success" style="font-size: 40px; font-weight: bold; display: block; text-align: center; line-height: 1.5; padding: 10px;">
                    <div class="text-center">
                        <?php echo $_SESSION['register'] ?? ''; ?>
                    </div>
                </span>
	<section class="account">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="account-contents" style="background: url('assets/img/about/about1.jpg'); background-size: cover;">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="account-thumb">
                                    <h2>Register now</h2>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis consectetur similique deleniti pariatur enim cumque eum</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="account-content">
                                    <form method ="post" action="<?php echo url("check-register");?>">
                                        <div class="single-acc-field">
                                            <label for="name">Name</label>
                                            <input type="text" id="name" name="name" placeholder="Enter Your Name">
                                            <span class="text-danger"><?php echo $_SESSION['errors']['name'] ?? ''; ?></span>
                                        </div>
                                        <div class="single-acc-field">
                                            <label for="email">Email</label>
                                            <input type="email" id="email" name="email" placeholder="Enter your Email">
                                            <span class="text-danger"><?php echo $_SESSION['errors']['email'] ?? ''; ?></span>
                                        </div>
                                        <div class="single-acc-field">
                                            <label for="password">Password</label>
                                            <input type="password" id="password" name="password" placeholder="At least 6 Charecter">
                                            <span class="text-danger"><?php echo $_SESSION['errors']['password'] ?? ''; ?></span>
                                        </div>
                                        <div class="single-acc-field boxes">
                                            <input type="checkbox" id="checkbox" name="checkbox">
                                            <label for="checkbox">I'm not a robot</label>
                                            <span class="text-danger"><?php echo $_SESSION['errors']['checkbox']??'';?></span>
                                        </div>
                                        <div class="single-acc-field">
                                            <button type="submit">Register now</button>
                                        </div>
                                        <a href=<?php echo url("login");?>>Already account? Login</a>
                                    </form>
                                </div>
                            </div>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</section>
    <?php unset($_SESSION['errors']);?>
    <?php unset($_SESSION['register']);?>
    <!--footer area start-->
    <?php require_once Root_Path . 'inc/footer.php';?>

    <!--footer area end-->
