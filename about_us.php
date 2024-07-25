<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
error_reporting(0);
session_start();
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="images/lgicon.png">
    <title>About Us</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> </head>

<body>
           <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/food-picky-logo.png" alt=""> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php"><i><b>Home</i></b><span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php"> <i><b>Restaurants</i></b><span class="sr-only"></span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="about_us.php"> <i><b>About Us</i></b><span class="sr-only"></span></a> </li>
							<?php
						if(empty($_SESSION["user_id"]))
							{
								echo '<li class="nav-item">
                                        <a href="login.php" class="nav-link active">
                                            <i><b>Login</i></b></a>
                                     </li>
							        <li class="nav-item">
                                        <a href="registration.php" class="nav-link active">
                                        <i><b>Signup</i></b></a> 
                                    </li>';
							}
						else
							{
									
									
									echo  '<li class="nav-item">
                                                <a href="your_orders.php" class="nav-link active">
                                                    <i><b>Your Orders</i></b></a> 
                                            </li>';
									echo  '<li class="nav-item">
                                                <a href="logout.php" class="nav-link active">
                                                    <i><b>Logout</i></b></a> 
                                            </li>';
							}

						?>
							 
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>
        <div class="page-wrapper">
            <!-- top Links -->
            <div class="top-links">
                <div class="container">
                    <ul class="row links">
                       
                        <li class="col-xs-12 col-sm-4 link-item active"><span>1</span><a href="restaurants.php">Choose Restaurant</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>2</span><a href="#">Pick Your favorite food</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>3</span><a href="#">Order and Pay online</a></li>
                    </ul>
                </div>
            </div>
            <!-- end:Top links -->
            <!-- start: Inner page hero -->

            <div class="hero bg-image" data-image-src="images/img/main2.jpg" height="50px">
         
     

                    <div class="hero-inner">
                        <div class="container text-center hero-text font-white">

                            <h1>About Us</h1>

                        </div>
                    </div>
            
                         
                    </div>

                <!-- end:Container -->



            <div class="result-show">
                <div class="container">
                    <div class="row">
                       
                       
                    </div>
                </div>
            </div>
            <!-- //results show -->
            <section class="restaurants-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-5 col-md-5 col-lg-3">
                          
                          
                            <div class="widget clearfix">
                                <!-- /widget heading -->
                                <div class="container">
                                    <div class="jumbrtron p-1">
                                        <img src="images/about_us1.jpg" class="img-thumbnail">
                                        <img src="images/about_us2.jpg" class="img-thumbnail">
                                        <img src="images/about_us3.jpeg" class="img-thumbnail">
                                        <img src="images/about_us4.jpeg" class="img-thumbnail">
                                        <img src="images/about_us5.jpeg" class="img-thumbnail">
                                        <br>
                                        <br>
                                  
                                        <div class="card ">
                                            <div class="card-body p-1">
                                            <b>
                                                <h5 class="card-title"><b>Note</b></h5>
                                                    <p class="card-text"><a href="admin/index.php">You can log in to Admin panel by click this link </a>
                                                        <br>Testing Username: ########
                                                        <br>Testing Password: ####### 
                                                    </p>
                                                    <p class="card-text">After logging, you can add admin users to the database within the admin dashboard.<br>
                                                         Check DB to get admin user input cordes.</p>
                                                
       
                                            </b>
                                            </div>
        
                                    </div>



                                    </div>

                                </div>
                            </div>
                            <!-- end:Widget -->
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-9">
                            <div class="bg-gray restaurant-entry">
                                <div class="row">
                                <div class="container">
                                    <div class="jumbrtron p-1">
                                        <div class="container text-center hero-text font-black">

                                <h5>Hospitality is central to the restaurant business,
                                    Yet it's a hard idea to define precisely. Mostly, 
                                    it involves being nice to people and making them feel welcome.
                                    You notice it when it's there, and you particularly notice it when it isn't. 
                                    A single significant lapse in this area can be your dominant impression of an entire meal.

                                </h5>
                                <div class="row">
                                    <div class="col-lg-6 p-1">
                                        <div class="card card-about_us">
                                            <div class="card-body p-1">
                                                <h5 class="card-title">Group Leader</h5>
                                                    <p class="card-text ">Madushan Ilangakoon
                                                        <br>Codse201f-053<br>
                                                        <b>0765650075</b>
                                                    </p>
                                                     <p class="card-text">Most of the bootstrap part was handle by me.</p>
                                                     <p class="card-text">I was helped to design the front-end and the back-end. Most of done in the front-end and PHP part.</p>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6  p-1">
                                        <div class="card card-about_us">
                                            <div class="card-body p-1">
                                                <h5 class="card-title">Member</h5>
                                                    <p class="card-text">Maleesha
                                                        <br>Codse201f-071

                                                    </p>
                                                    <p class="card-text">Working as consultation about this project and most of the HTML part was handle by Maleesha.</p>
                                                    <p class="card-text">She was helped to build the front-end and back-end with the coding part.</p>
 
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-lg-6 p-1">
                                        <div class="card card-about_us">
                                            <div class="card-body p-1">
                                                <h5 class="card-title">Member</h5>
                                                    <p class="card-text">Rasari Nilmini
                                                        <br>Codse201f-056
                                                    </p>
                                                    <p class="card-text">As in our previous projects, Nilmini handles the database part and SQL query, statements.</p>
                                                    <p class="card-text">She has planned the website structure how is to be done.</p>
 
                                            </div>
                                        </div>
                                    </div>
                                </div>



                               


                                        </div>
                                </div>
                                <!--end:row -->
     
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="result-show">
                <div class="container">
                    <div class="row">
                       
                       
                    </div>
                </div>
            </div>
            <!-- https://dashboard.tawk.to/?lang=en#/messaging/61272384649e0a0a5cd2fdfa -->
            
        <!-- start: FOOTER -->
      <footer class="footer">
            <div class="container">
               
                <!-- bottom footer statrs -->
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 payment-options color-gray">
                            <h5><i>Payment Options</i></h5>
                            <ul>
                                <li>
                                    <a href="index.php"> <img src="images/pay-online.jpg" alt="Paypal"> </a>
                                </li>
                        
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-4 address color-gray">
                           
                          </div>
                        <div class="col-xs-12 col-sm-5 additional-info color-gray">
                        <h5><i><u>About Us</u></i></h5>
                            <i><h5>Address :- </h5>
                            <p>Saliya Road,<br>Kollupitiya<br>Colombo-7 </p>
                            <h5>Phone :- <a href="tel: 0765650075">0765650075</a></h5>
                            <h5>Email :- <a href="mail : madushan.imkmi@gmail.com">madushan.imkmi@gmail.com</a></h5>
                            <h5>Fax   :-  0001535758 </h5></i>
                        </div>
                    </div>
                </div>
               <center> © 2021 All rights reserved. </center>
                <!-- bottom footer ends -->
            </div>

        </footer>

        <!--Start of Tawk.to Script-->
        <script>
window.embeddedChatbotConfig = {
chatbotId: "7UB3IiyRryYn8R2jFHe4_",
domain: "www.chatbase.co"
}
</script>
<script
src="https://www.chatbase.co/embed.min.js"
chatbotId="7UB3IiyRryYn8R2jFHe4_"
domain="www.chatbase.co"
defer>
</script>
<!--End of Tawk.to Script-->
                    <!-- footer -->
      
            <!-- End footer -->
        <!-- end:Footer -->
  
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>