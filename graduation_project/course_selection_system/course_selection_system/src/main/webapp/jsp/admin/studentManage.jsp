<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>学生选课系统</title>
	<!-- The Fonts -->
	<link href="http://fonts.useso.com/css?family=Oswald|Droid+Sans:400,700" rel="stylesheet" />
	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/secondpage/CSS/style.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/flat-ui.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/buttons.css">
  <!-- grumble -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/grumble.min.css">
	
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/student/autocomplete.css" >
  <!-- 只有使用字体图标时才需要加�Font-Awesome -->
  <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  
  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
	
	<!-- 头文�-->
	<jsp:include page="header.jsp"></jsp:include>


	<!-- =========================侧边栏目          start ========================================================-->

	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class=" i_32_dashboard">
					<a href="" title="General Info">
						<span class="tab_label">个人信息</span>
						<span class="tab_info">Person Info</span>
					</a>
				</li>
				 <li class="active_tab i_32_ui">
					<a href="" title="student manage">
						<span class="tab_label">学生管理</span>
						<span class="tab_info">student manage</span>
					</a>
				</li>
				
				<li class="i_32_ui">
					<a href="" title="teacher manage">
						<span class="tab_label">教师管理</span>
						<span class="tab_info">teacher manage</span>
					</a>
				</li>
				
				<li class="i_32_ui">
					<a href="" title="department manage">
						<span class="tab_label">院系管理</span>
						<span class="tab_info">department manage</span>
					</a>
				</li>
				
				<li class="i_32_ui">
					<a href="" title="course manage">
						<span class="tab_label">课程管理</span>
						<span class="tab_info">course manage</span>
					</a>
				</li>
				
				<li class="i_32_ui">
					<a href="" title="profession manage">
						<span class="tab_label">专业管理</span>
						<span class="tab_info">profession manage</span>
					</a>
				</li>
				
			</ul>
		</aside>
		<!-- ==================侧边栏目    end ===================================================================== -->

		<div class="contents">
			<div class="grid_wrapper">

				<div class="g_6 contents_header">
					<h3 class="i_16_ui tab_label">学生管理</h3>
					<div><span class="label">Student Manage</span></div>
				</div>

				<div class="g_12 contents_header">
					<div>
						<table>
							<tr id="course_name_table_tr">
								<td class="labelText"><h3 class="tab_label">学生学号：</h3></td>
								<td width="2%">&nbsp;</td>
								<td ><input type="text" class="form-control" id="courseName" size="50"></td>
								<td width="2%">&nbsp;</td>
								<td ><button type="button" class="btn btn-warning btn-lg" id="btn_search_course">Search</button></td>
								<td width="2%">&nbsp;</td>
								<td ><button type="button" class="btn btn-warning btn-lg" id="btn_search_allCourse">Show All</button></td>
							</tr>
						</table>
					</div>
				</div>
				

			</div>
		</div>

	</div>
	
	
<div class="g_12 separator"><span></span></div>











<!-- js -->
  

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/jQuery/jquery-1.7.2.min.js"></script>
<!-- DataTables -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/DataTables/jquery.dataTables.min.js"></script>
<!-- ColResizable -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/ColResizable/colResizable-1.3.js"></script>
<!-- jQuryUI -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/jQueryUI/jquery-ui-1.8.21.min.js"></script>
<!-- Uniform -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/Uniform/jquery.uniform.js"></script>
<!-- Tipsy -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/Tipsy/jquery.tipsy.js"></script>
<!-- Elastic -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/Elastic/jquery.elastic.js"></script>
<!-- ColorPicker -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/ColorPicker/colorpicker.js"></script>
<!-- SuperTextarea -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/SuperTextarea/jquery.supertextarea.min.js"></script>
<!-- UISpinner -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/UISpinner/ui.spinner.js"></script>
<!-- MaskedInput -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/MaskedInput/jquery.maskedinput-1.3.js"></script>
<!-- ClEditor -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/ClEditor/jquery.cleditor.js"></script>
<!-- Full Calendar -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/FullCalendar/fullcalendar.js"></script>
<!-- Color Box -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/ColorBox/jquery.colorbox.js"></script>
<!-- Kanrisha Script -->
<script src="${pageContext.request.contextPath}/res/js/secondpage/kanrisha.js"></script>


<!-- grumble 插件 -->
<script src="${pageContext.request.contextPath}/res/chx/js/jquery.grumble.min.js?v=7"></script>
<script src="${pageContext.request.contextPath}/res/chx/js/student/jquery.autocomplete.min.js"></script>
 
</body>
</html>


