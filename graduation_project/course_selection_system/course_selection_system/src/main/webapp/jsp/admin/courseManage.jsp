<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />

	<title>学生选课系统</title>

	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/secondpage/CSS/style.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/flat-ui.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/buttons.css">

  
  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
	
	<!-- 头文�-->
	<jsp:include page="header.jsp"></jsp:include>

	
	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">
			<li><a title="个人 信息" class="i_22_dashboard " href="${pageContext.request.contextPath}/jsp/admin/adminIndex.jsp"></a></li>
			<li><a title="学生管理" class="i_32_ui " href="${pageContext.request.contextPath}/jsp/admin/studentManage.jsp"></a></li>
			<li><a title="教师管理" class="i_32_ui " href="${pageContext.request.contextPath}/jsp/admin/teacherManage.jsp"></a></li>
			
			<li><a title="课程管理" class="i_32_ui smActive" href="${pageContext.request.contextPath}/jsp/admin/courseManage.jsp"></a></li>			
			<!-- 
			<li><a title="Some Rows" class="i_22_tables" href="tables.html"></a></li>
			<li><a title="Some Fields" class="i_22_forms" href="forms.html"></a></li>
			-->
		</ul>
		
	</div>

	<!-- =========================侧边栏目          start ========================================================-->

	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class=" i_32_dashboard">
					<a href="${pageContext.request.contextPath}/jsp/admin/adminIndex.jsp" title="General Info">
						<span class="tab_label">个人信息</span>
						<span class="tab_info">Person Info</span>
					</a>
				</li>
				 <li class=" i_32_ui">
					<a href="${pageContext.request.contextPath}/jsp/admin/studentManage.jsp" title="student manage">
						<span class="tab_label">学生管理</span>
						<span class="tab_info">student manage</span>
					</a>
				</li>
				
				<li class=" i_32_ui">
					<a href="${pageContext.request.contextPath}/jsp/admin/teacherManage.jsp" title="teacher manage">
						<span class="tab_label">教师管理</span>
						<span class="tab_info">teacher manage</span>
					</a>
				</li>
				<!--  
				<li class="i_32_ui">
					<a href="${pageContext.request.contextPath}/jsp/admin/departmentManage.jsp" title="department manage">
						<span class="tab_label">院系管理</span>
						<span class="tab_info">department manage</span>
					</a>
				</li>
				 -->
				<li class="active_tab i_32_ui">
					<a href="${pageContext.request.contextPath}/jsp/admin/courseManage.jsp" title="course manage">
						<span class="tab_label">课程管理</span>
						<span class="tab_info">course manage</span>
					</a>
				</li>
				<!-- 
				<li class="i_32_ui">
					<a href="${pageContext.request.contextPath}/jsp/admin/professionManage.jsp" title="profession manage">
						<span class="tab_label">专业管理</span>
						<span class="tab_info">profession manage</span>
					</a>
				</li>
				 -->
			</ul>
		</aside>
		<!-- ==================侧边栏目    end ===================================================================== -->

		<div class="contents">
			<div class="grid_wrapper">

				<div class="g_6 contents_header">
					<h3 class="i_16_ui tab_label">课程管理</h3>
					<div><span class="label">Course Manage</span></div>
				</div>

				<div class="g_12 contents_header">
					<div>
						<table>
							<tr id="search_course_table_tr">
								<td class="labelText"><h3 class="tab_label">课程号：</h3></td>
								<td width="2%">&nbsp;</td>
								<td ><input type="text" class="form-control" id="courseNo" size="50"></td>
								<td width="2%">&nbsp;</td>
								<td ><button type="button" class="btn btn-warning btn-lg" id="btn_search_course">Search</button></td>
								<td width="2%">&nbsp;</td>
								<td ><button type="button" class="btn btn-warning btn-lg" id="btn_search_allCourse">Show All</button></td>
							</tr>
						</table>
					</div>
				</div>
				
				
				<div class="g_12 separator"><span></span></div>
				
				<div class="g_12">
				
						<table class="tables">
							<thead>
								<tr class="success" >
									<th class="success">编号</th>
									<th class="success">课程名</th>
									<th class="success">课程号</th>
									<th class="success">上课时间</th>
									<th class="success">授课老师</th>
									<th class="success">教师工号</th>
									<th class="success">操作</th>
								</tr>
							</thead>
							<tbody id="course_data_table">

							</tbody>
						</table>

					</div>
				
			</div>
		</div>

	</div>
	
	












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

<script src="${pageContext.request.contextPath}/res/chx/js/admin/courseManage.js"></script>
 
</body>
</html>



