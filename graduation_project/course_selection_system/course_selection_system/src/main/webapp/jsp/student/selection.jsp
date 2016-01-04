<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>学生选课系统</title>
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<script src="../../res/js/secondpage/Flot/excanvas.js"></script>
	<![endif]-->
	<!-- The Fonts -->
	<link href="http://fonts.useso.com/css?family=Oswald|Droid+Sans:400,700" rel="stylesheet" />
	<!-- The Main CSS File -->
	<link rel="stylesheet" href="../../res/css/secondpage/CSS/style.css" />
	<!-- jQuery -->
	<script src="../../res/js/secondpage/jQuery/jquery-1.7.2.min.js"></script>
	<!-- Flot -->
	<script src="../../res/js/secondpage/secondpage/Flot/jquery.flot.js"></script>
	<script src="../../res/js/secondpage/Flot/jquery.flot.resize.js"></script>
	<script src="../../res/js/secondpage/Flot/jquery.flot.pie.js"></script>
	<!-- DataTables -->
	<script src="../../res/js/secondpage/DataTables/jquery.dataTables.min.js"></script>
	<!-- ColResizable -->
	<script src="../../res/js/secondpage/ColResizable/colResizable-1.3.js"></script>
	<!-- jQuryUI -->
	<script src="../../res/js/secondpage/jQueryUI/jquery-ui-1.8.21.min.js"></script>
	<!-- Uniform -->
	<script src="../../res/js/secondpage/Uniform/jquery.uniform.js"></script>
	<!-- Tipsy -->
	<script src="../../res/js/secondpage/Tipsy/jquery.tipsy.js"></script>
	<!-- Elastic -->
	<script src="../../res/js/secondpage/Elastic/jquery.elastic.js"></script>
	<!-- ColorPicker -->
	<script src="../../res/js/secondpage/ColorPicker/colorpicker.js"></script>
	<!-- SuperTextarea -->
	<script src="../../res/js/secondpage/SuperTextarea/jquery.supertextarea.min.js"></script>
	<!-- UISpinner -->
	<script src="../../res/js/secondpage/UISpinner/ui.spinner.js"></script>
	<!-- MaskedInput -->
	<script src="../../res/js/secondpage/MaskedInput/jquery.maskedinput-1.3.js"></script>
	<!-- ClEditor -->
	<script src="../../res/js/secondpage/ClEditor/jquery.cleditor.js"></script>
	<!-- Full Calendar -->
	<script src="../../res/js/secondpage/FullCalendar/fullcalendar.js"></script>
	<!-- Color Box -->
	<script src="../../res/js/secondpage/ColorBox/jquery.colorbox.js"></script>
	<!-- Kanrisha Script -->
	<script src="../../res/js/secondpage/kanrisha.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
	<!-- Change Pattern -->
	<div class="changePattern">
		<span id="pattern1"></span>
		<span id="pattern2"></span>
		<span id="pattern3"></span>
		<span id="pattern4"></span>
		<span id="pattern5"></span>
		<span id="pattern6"></span>
	</div>
	
	<!-- 头文件 -->
	<jsp:include page="header.jsp"></jsp:include>

	<header class="main_header">
		<div class="wrapper">
			
			<nav class="top_buttons">
				<ul>
					<li class="big_button">
						<div class="out_border">
							<div class="button_wrapper">
								<div class="in_border">
									<a href="#" title="Analytics" class="the_button">
										<span class="i_32_statistic"></span>
									</a>
								</div>
							</div>
						</div>
					</li>
					<li class="big_button">
						<div class="big_count">
							<span>7</span>
						</div>
						<div class="out_border">
							<div class="button_wrapper">
								<div class="in_border">
									<a href="#" title="Support" class="the_button">
										<span class="i_32_support"></span>
									</a>
								</div>
							</div>
						</div>
					</li>
					<li class="big_button">
						<div class="out_border">
							<div class="button_wrapper">
								<div class="in_border">
									<a href="#" title="Delivery" class="the_button">
										<span class="i_32_delivery"></span>
									</a>
								</div>
							</div>
						</div>
					</li>
					<li class="big_button">
						<div class="out_border">
							<div class="button_wrapper">
								<div class="in_border">
									<a href="#" title="Earning" class="the_button">
										<span class="i_32_dollar"></span>
									</a>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</nav>
		</div>
	</header>

	<!-- =========================侧边栏目          start ========================================================-->
	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">
			<li><a title="个人 信息" class="i_22_dashboard smActive" href="studentIndex.jsp"></a></li>
			<li><a title="Your Messages" class="i_22_ui" href="selection.jsp"></a></li>
			<li><a title="Visual Data" class="i_22_charts" href="charts.html"></a></li>
			<li><a title="Kit elements" class="i_22_ui" href="ui.html"></a></li>
			<li><a title="Some Rows" class="i_22_tables" href="tables.html"></a></li>
			<li><a title="Some Fields" class="i_22_forms" href="forms.html"></a></li>
		</ul>
	</div>

	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class="i_32_dashboard">
					<a href="studentIndex.jsp" title="General Info">
						<span class="tab_label">个人信息</span>
						<span class="tab_info">Person Info</span>
					</a>
				</li>
				<li class="active_tab i_32_ui">
					<a href="selection.jsp" title="Your Messages">
						<span class="tab_label">选课</span>
						<span class="tab_info">Select Course</span>
					</a>
				</li>
				<li class="i_32_charts">
					<a href="charts.html" title="Visual Data">
						<span class="tab_label">Charts</span>
						<span class="tab_info">Visual Data</span>
					</a>
				</li>
				<li class="i_32_ui">
					<a href="ui.html" title="Kit elements">
						<span class="tab_label">UI</span>
						<span class="tab_info">Kit elements</span>
					</a>
				</li>
				<li class="i_32_tables">
					<a href="tables.html" title="Some Rows">
						<span class="tab_label">Tables</span>
						<span class="tab_info">Some Rows</span>
					</a>
				</li>
				<li class="i_32_forms">
					<a href="forms.html" title="Some Fields">
						<span class="tab_label">Forms</span>
						<span class="tab_info">Some Fields</span>
					</a>
				</li>
			</ul>
		</aside>
		<!-- ==================侧边栏目    end ===================================================================== -->

		<div class="contents">
			<div class="grid_wrapper">

				<div class="g_6 contents_header">
					<h3 class="i_16_ui tab_label">选课</h3>
					<div><span class="label">Select Course</span></div>
				</div>
				<!-- 
				<div class="g_6 contents_options">
					<div class="simple_buttons">
						<div class="bwIcon i_16_help">Help</div>
					</div>
					<div class="simple_buttons">
						<div class="bwIcon i_16_settings">Settings</div>
						<div class="buttons_arrow">

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
						</div>
					</div>
				</div>
				 -->

				<div class="g_12 separator"><span></span></div>

				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_tooltip">Ticket Table</h4>
					</div>
					<div class="widget_contents noPadding twCheckbox">
						<table class="tables datatable noObOLine">
							<thead>
								<tr>
									<th>
										<input type="checkbox" class="simple_form tMainC">
									</th>
									<th>ID</th>
									<th>Title</th>
									<th>Priority</th>
									<th>Status</th>
								</tr>
							</thead>
							<tbody>
								<tr class="status_open">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238749</td>
									<td>I Can't Remember My Password</td>
									<td>High</td>
									<td>Open</td>
								</tr>
								<tr class="status_open">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238750</td>
									<td>My Account Was Hacked</td>
									<td>Low</td>
									<td>Open</td>
								<tr class="status_open">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238751</td>
									<td>Can I Change My UserName</td>
									<td>Medium</td>
									<td>Open</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238752</td>
									<td>I Want To Delete My Account Permanently</td>
									<td>Low</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238753</td>
									<td>Is It Possible To Create Two Account</td>
									<td>Medium</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238754</td>
									<td>There Is A Bug On Your Website</td>
									<td>High</td>
									<td>Closed</td>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238755</td>
									<td>I Can't Found The RSS</td>
									<td>Low</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238756</td>
									<td>What's The Price Of The Pro Account</td>
									<td>High</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238757</td>
									<td>Can I Upload More Than 30Mb</td>
									<td>Medium</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238758</td>
									<td>The Server Is Slow</td>
									<td>High</td>
									<td>Closed</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="g_12 separator"><span></span></div>
				<!-- Chats -->
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_chats">Chats</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar1.png" alt="avatar" class="avatar">
							</div>
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis urna dui. Vestibulum adipiscing venenatis elementum. 
									</span>
								</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis urna dui. Vestibulum adipiscing venenatis elementum. 
									</span>
								</div>
							</div>
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar3.png" alt="avatar" class="avatar aR">
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar1.png" alt="avatar" class="avatar">
							</div>
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis urna dui. Vestibulum adipiscing venenatis elementum. 
									</span>
								</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar2.png" alt="avatar" class="avatar">
							</div>
							<div class="g_10 g_10M">
								<textarea placeholder="Type your Message and press Enter .." class="mpReply elastic simple_field"></textarea>
								<div class="field_notice">This Textarea is Elastic :)</div>
							</div>
						</div>
					</div>
				</div>
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_message">Send Mail</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_2">
								<span class="label">Email</span>
							</div>
							<div class="g_10">
								<input type="text" class="simple_field">
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2">
								<span class="label">Title</span>
							</div>
							<div class="g_10">
								<input type="text" class="simple_field">
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2">
								<span class="label">Message</span>
							</div>
							<div class="g_10">
								<textarea class="simple_field elastic"></textarea>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2">
								<span class="label">Files</span>
							</div>
							<div class="g_10">
								<input type="file" class="simple_form">
							</div>
						</div>
						<div class="line_grid">
							<div class="g_12">
								<input type="submit" value="Send" class="simple_buttons submitIt">
							</div>
						</div>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<footer>
		<div class="wrapper">
			<span class="copyright">
				COPYRIGHT © 2012 Mahieddine Abd-kader
			</span>
		</div>
	</footer>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>