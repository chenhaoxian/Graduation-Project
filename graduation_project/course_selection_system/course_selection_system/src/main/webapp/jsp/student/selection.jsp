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
	
  <!-- Buttons 库的核心文件 -->
  <link rel="stylesheet" href="../../res/chx/css/buttons.css">

  <!-- 当需要使用带下拉菜单的按钮时才需要加载下面的 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>

  <script type="text/javascript" src="js/buttons.js"></script>

  <!-- 只有使用字体图标时才需要加载 Font-Awesome -->
  <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  
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

				<div class="g_6 contents_options">
				<!-- 
					<div class="simple_buttons">
						<div class="bwIcon i_16_help">Help</div>
					</div>
					 -->
					<div class="simple_buttons">
						<div class="bwIcon i_16_help">选课类别</div>
						<div class="buttons_arrow">

							<ul class="drop_menu menu_with_icons right_direction">
								<li>
									<a class="i_16_progress" href="#">
										<span class="label">必修课选课</span>
									</a>									
								</li>
								<li>
									<a class="i_16_progress" href="#">
										<span class="label">限选课选课</span>
									</a>
								</li>
								<li>
									<a class="i_16_progress" href="#">
										<span class="label">通选课选课</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="g_12 separator"><span></span></div>

				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_tooltip">选课表</h4>
					</div>
					<div class="widget_contents noPadding twCheckbox">
						<table class="tables datatable noObOLine">
							<thead>
								<tr>
									<th>
										<!-- <input type="checkbox" class="simple_form tMainC"> -->
									</th>
									<th>上课时间</th>
									<th>课程名</th>
									<th>人数</th>
									<th>已选</th>
								</tr>
							</thead>
							<tbody>
								<tr class="status_open">
									<!-- <td><input type="checkbox" class="simple_form"></td> -->
									<td><a class="button button-primary button-circle button-small"><i class="fa fa-plus"></i></a></td>
									<td>#23874933333333333333333</td>
									<td>I Can't R实上assword</td>
									<td>High</td>
									<td>Open</td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
				<div class="g_12 separator"><span></span></div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='UTF-8'></script></div>
</body>
</html>