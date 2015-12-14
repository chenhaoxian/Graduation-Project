<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>大学生选课系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Minimal Bootstrap Theme">
    <meta name="keywords" content="onepage,responsive,minimal,bootstrap,theme">
    <meta name="author" content="">


    <!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<![endif]-->


    <!-- CSS Files
    ================================================== -->
    <link rel="stylesheet" href="res/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="res/css/jpreloader.css" type="text/css">
    <link rel="stylesheet" href="res/css/animate.css" type="text/css">
    <link rel="stylesheet" href="res/css/flexslider.css" type="text/css">
    <link rel="stylesheet" href="res/css/plugin.css" type="text/css">
    <link rel="stylesheet" href="res/css/prettyPhoto.css" type="text/css">
    <link rel="stylesheet" href="res/css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="res/css/owl.theme.css" type="text/css">
    <link rel="stylesheet" href="res/css/style.css" type="text/css">

    <!-- custom style css -->
    <link rel="stylesheet" href="res/css/custom-style.css" type="text/css">

    <!-- color scheme -->
    <link rel="stylesheet" href="res/css/color.css" type="text/css">

    <!-- revolution slider -->
    <link rel="stylesheet" href="res/rs-plugin/css/settings.css" type="text/css">
    <link rel="stylesheet" href="res/css/rev-settings.css" type="text/css">

    <!-- load fonts -->
    <link rel="stylesheet" href="res/fonts/font-awesome/css/font-awesome.css" type="text/css">
    <link rel="stylesheet" href="res/fonts/elegant_font/HTML_CSS/style.css" type="text/css">
    <link rel="stylesheet" href="res/fonts/et-line-font/style.css" type="text/css">
    <style>
    	.test{background:#000;filter:alpha(opacity=50);opacity:.5;color:#fff;}
    </style>
</head>

<body id="homepage">

   <!-- This section is for Splash Screen -->
    <div id="jSplash">
        <section class="selected">
            welcome !
        </section>
        <section>
            Insert your custom message here.
        </section>
        <section>
            Make your customers smile.
        </section>
    </div>
    
    <div id="wrapper">
        <div class="page-overlay">
        </div>


        <!-- header begin -->
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!-- logo begin -->
                        <!-- 
                        <h1 id="logo">
                            <a href="index.html">
                                <img class="logo-1" src="res/images/logo.png" alt="">
                                <img class="logo-2" src="res/images/logo-2.png" alt="">
                            </a>
                        </h1>
                         -->
                        <!-- logo close -->

                        <!-- small button begin -->
                        <span id="menu-btn"></span>
                        <!-- small button close -->

                        <!-- mainmenu begin -->
                        <nav>
                            <ul id="mainmenu">
                                <li><a class="active" href="http://www.zhbit.com">学校首页</a></li>
                                <li><a href="#section-about">About Us</a></li>
                                <li><a href="#section-team">Team</a></li>
                                <li><a href="#section-services">Services</a></li>
                                <li><a href="#section-portfolio">Portfolio</a></li>
                                <li><a href="#section-testimonial">Testimonial</a></li>
                                <li><a href="#section-blog">Blog</a></li>
                                <li><a href="#section-contact">Contact</a></li>
                            </ul>
                        </nav>

                    </div>
                    <!-- mainmenu close -->

                </div>
            </div>
        </header>
        <!-- header close -->
        
        
        <!-- content begin -->
        <div id="content" class="no-bottom no-top">
			
			<!-- section begin -->
            <section class="full-height dark no-padding dark" data-speed="5" data-type="background">
                <div class="de-video-container">
                    <div class="de-video-content">
                        <div class="text-center">
                            <!-- CREATIVE AGENCY / WEBSITE DEVELOPMENT / COPYWRITER  -->
                          	<div class="text-item"><span class="id-color">北京理工大学珠海学院 </span></div>
                            <div class="spacer-single"></div>
                            <div class="text-slider border-deco">
                                <div class="text-item">欢迎来到 <span class="id-color">大学生选课系统</span></div>
                                <div class="text-item">基于 <span class="id-color">WEB</span></div>
                                <!-- <div class="text-item">勤奋 &amp; <span class="id-color">智慧</span></div> -->
                                <div class="text-item"><span class="id-color"><i class="icon-bike"></i></span> Ready to Go?</div>
                            </div>
                            <div class="spacer-single"></div>

	                          <a href="#loginmodal" class="btn btn-border btn-big" id="modaltrigger">登 录</a> 
	                           
	                           
	                            
	<!-- ======================隐藏的登录表单======================================================================= -->
													  <div id="loginmodal" style="display:none; ">
														    
														    <form  name="loginform" method="post" action="test.jsp" class="modal-body">
														      	<div class="input-group">
																		  <span class="input-group-addon" id="basic-addon1">账号</span>
																		  <input type="text" class="form-control" placeholder="输入学号或教工号"  name="userid" aria-describedby="basic-addon1">
																		</div>
																		
																		<div class="input-group">
																		  <span class="input-group-addon" id="basic-addon1">密码</span>
																		  <input type="text" id="password" class="form-control" placeholder="密码" name="password" aria-describedby="basic-addon1">
																		</div>
																		
																    <input type="submit" class="btn btn-default" value="sign in">
																    
																    <button type="button" class="btn btn-default" id="btn_cancel" onclick="close_form()">Cancel</button>
													    	</form>
													  </div>
 <!-- ======================================================================================================== --> 
                        </div>
                    </div>
                     
                    <div class="de-video-overlay"></div>
                    
                    <!-- load your video here -->
                     <video autoplay="" loop="" muted="" poster="video/video-2.jpg">
                        <source src="res/video/video-2.webm" type="video/webm" />
                        <source src="res/video/video-2.mp4" type="video/mp4" />
                        <source src="res/video/video-2.ogg" type="video/ogg" />
                    </video>


                </div>

            </section>
            <!-- section close -->
            
            <!-- =================================================================================================== -->
            
            
            <section id="section-about">
                <div class="container">
                    <div class="row">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 text-center">
                                <h1 class="animated" data-animation="fadeInUp">What is <span class="id-color">this?</span>
                                    <span class="small-border animated" data-animation="fadeInUp"></span>
                                </h1>
                                <p class="lead animated" data-animation="fadeInUp">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                </p>
                                <div class="spacer-single"></div>
                            </div>
                        </div>
                        <!-- featured box begin -->
                        <div class="feature-box-small-icon box-fx center col-md-3 animated" data-animation="fadeInUp" data-delay="0">
                            <div class="inner">
                                <div class="front">
                                    <i class="icon-genius"></i>
                                    <h3>Our Portfolio</h3>
                                    <span>Our Recent Works</span>
                                </div>
                                <div class="info">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
                                	<br>
                                    <a href="#" class="btn btn-border">Read More</a>
                                </div>
                            </div>
                        </div>
                        <!-- featured box close -->

                        <!-- featured box begin -->
                        <div class="feature-box-small-icon box-fx center col-md-3 animated" data-animation="fadeInUp" data-delay="200">
                            <div class="inner">
                                <div class="front">
                                    <i class="icon-linegraph"></i>
                                    <h3>Experiences</h3>
                                    <span>What We Have Done</span>
                                </div>
                                <div class="info">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
                                	<br>
                                    <a href="#" class="btn btn-border">Read More</a>
                                </div>
                            </div>
                        </div>
                        <!-- featured box close -->

                        <!-- featured box begin -->
                        <div class="feature-box-small-icon box-fx center col-md-3 animated" data-animation="fadeInUp" data-delay="400">
                            <div class="inner">
                                <div class="front">
                                    <i class="icon-layers"></i>
                                    <h3>Our Vision</h3>
                                    <span>View Our Story</span>
                                </div>
                                <div class="info">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
                                	<br>
                                    <a href="#" class="btn btn-border">Read More</a>
                                </div>
                            </div>
                        </div>
                        <!-- featured box close -->

                        <!-- featured box begin -->
                        <div class="feature-box-small-icon box-fx center col-md-3 animated" data-animation="fadeInUp" data-delay="600">
                            <div class="inner">
                                <div class="front">
                                    <i class="icon-heart"></i>
                                    <h3>Happy Clients</h3>
                                    <span>What They Says</span>
                                </div>
                                <div class="info">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
                                	<br>
                                    <a href="#" class="btn btn-border">Read More</a>
                                </div>
                            </div>
                        </div>
                        <!-- featured box close -->

                    </div>
                </div>
            </section>
            <!-- section close -->
            
            
            <!-- ==================================================================================================== -->
            
            
            
            
            <!-- registration section begin -->
            <section id="section-registration">
            	
            </section>
            <!-- registration section end -->




        </div>


        
    </div>
    

    <!-- Javascript Files
    ================================================== -->
    <script src="res/js/jquery.min.js"></script>
    <script src="res/js/jpreLoader.js"></script>
    <script src="res/js/bootstrap.min.js"></script>
    <script src="res/js/jquery.isotope.min.js"></script>
    <script src="res/js/jquery.prettyPhoto.js"></script>
    <script src="res/js/easing.js"></script>
    <script src="res/js/jquery.ui.totop.js"></script>
    <script src="res/js/jquery.flexslider-min.js"></script>
    <script src="res/js/jquery.scrollto.js"></script>
    <script src="res/js/owl.carousel.js"></script>
    <script src="res/js/jquery.countTo.js"></script>
    <script src="res/js/classie.js"></script>
    <script src="res/js/designesia.js"></script>
    <script src="res/js/validation.js"></script>
    <script src="res/chx/js/jquery.leanModal.min.js"></script>

    <!-- SLIDER REVOLUTION SCRIPTS  -->
    <script type="text/javascript" src="res/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
    <script type="text/javascript" src="res/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    
    <!-- 登录验证 -->
    <script type="text/javascript" src="res/chx/js/jquery.formance.min.js"></script>
    
    
    <script type="text/javascript">
    	
    	$(function(){
    		$("#password").bl
    	})
    
			$(function(){
				$('#loginform').submit(function(){
					      alert(1);
			          return false;
			        });
			  $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
			});
			
			
			
			
			
			//$(function(){
				// $('#loginform').submit(function(){
			   //       //return false;
			  //        alert('ss');
			  //        return false;
			  //      });
				
			//});
			
			function close_form(){
				document.getElementById('loginmodal').style.display='none'; 
			}
		
		
	</script>

</body>
</html>
