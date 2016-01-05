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

    <!-- ==============Top Panel================start=========================== -->
	<div class="top_panel">
		<div class="wrapper">
			<div class="user">
				<img src="../../res/images/secondpage/Images/user_avatar.png" alt="user_avatar" class="user_avatar" />
				<span class="label">${sessionScope.student.sname }</span>
				<!-- Top Tooltip -->
				<!-- 
				<div class="top_tooltip">
					<div>
						<ul class="user_options">
							<li class="i_16_profile"><a href="#" title="Profile"></a></li>
							<li class="i_16_tasks"><a href="#" title="Tasks"></a></li>
							<li class="i_16_notes"><a href="#" title="Notes"></a></li>
							<li class="i_16_options"><a href="#" title="Options"></a></li>
							<li class="i_16_logout"><a href="#" title="Log-Out"></a></li>
						</ul>
					</div>
				</div>
				 -->
			</div>
			<div class="top_links">
				<ul>
				<!-- 
					<li class="i_22_search search_icon">
						<div class="top_tooltip right_direction">
							<div>
								<form class="top_search_form" />
									<input type="text" class="top_search_input" />
									<input type="submit" class="top_search_submit" value="" />
								</form>
							</div>
						</div>
					</li>
					 -->
					<li class="i_22_settings">
						<a href="../../index.jsp" title="Log out">
							<span class="label">退出</span>
						</a>
					</li>
					<!-- 
					<li class="i_22_upload">
						<a href="#" title="Upload">
							<span class="label">Upload</span>
						</a>

						<ul class="drop_menu menu_with_icons right_direction">
							<li>
								<a class="i_16_add" href="#" title="New Flie">
									<span class="label">New File</span>
								</a>									
							</li>
							<li>
								<a class="i_16_progress" href="#" title="2 Files Left">
									<span class="label">Files Left</span>
									<span class="small_count">2</span>
								</a>
							</li>
							<li>
								<a class="i_16_files" href="#" title="Browse Files">
									<span class="label">Browse Files</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="i_22_inbox top_inbox">
						<a href="#" title="Inbox">
							<span class="label lasCount">Inbox</span>
							<span class="small_count">3</span>
						</a>
					</li>
					<li class="i_22_pages">
						<a href="#" title="Pages">
							<span class="label">Pages</span>
						</a>
						
						<ul class="drop_menu menu_without_icons">
							<li>
								<a title="403 Page" href="403.html">
									<span class="label">403 Forbidden</span>
								</a>									
							</li>
							<li>
								<a href="404.html" title="404 Page">
									<span class="label">404 Not Found</span>
								</a>
							</li>
						</ul>
					</li>
					 -->
				</ul>
			</div>
		</div>
	</div>
	
	<!--  ========================================header end================================ -->
    

    <!-- Javascript Files
    ================================================== -->
    
    

</body>
</html>
