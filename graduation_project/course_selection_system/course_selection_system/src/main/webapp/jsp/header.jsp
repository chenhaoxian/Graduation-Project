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
    
    <style type="text/css">
    	.test{background:#000;filter:alpha(opacity=50);opacity:.5;color:#fff;}
    	
			body{margin:0px;}
			
			#bg{width:100%;height:100%;top:0px;left:0px;position:absolute;filter: Alpha(opacity=50);opacity:0.5; background:#000000; display:none;}
			
			#popbox{position:absolute;width:400px; height:400px; left:50%; top:50%; margin:-200px 0 0 -200px; display:none; background:#666666;}

    </style>
    
    
</head>

<body id="homepage">

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
                        <nav >
                            <ul id="mainmenu">
                                <li class="active">
                         
																		${sessionScope.student.sname }
																		${sessionScope.admin.name }
																		${sessionScope.teacher.tname }

                                </li>
                                <!-- 
                                <li><a href="#section-about">About Us</a></li> 
                                <li><a href="#section-team">Team</a></li>
                                <li><a href="#section-services">Services</a></li>
                                <li><a href="#section-portfolio">Portfolio</a></li>
                                <li><a href="#section-testimonial">Testimonial</a></li>
                                <li><a href="#section-blog">Blog</a></li>
                                -->
                                <li><a class="active" href="#section-contact">退出</a></li>
                            </ul>
                        </nav>

                    </div>
                    <!-- mainmenu close -->

                </div>
            </div>
        </header>
        <!-- header close -->
        
        
        


        
    </div>
    

    <!-- Javascript Files
    ================================================== -->
    
    

</body>
</html>
