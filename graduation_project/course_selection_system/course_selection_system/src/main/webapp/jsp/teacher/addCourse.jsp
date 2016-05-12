<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>学生选课系统</title>



	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/secondpage/CSS/style.css" />
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/res/js/secondpage/jQuery/jquery-1.7.2.min.js"></script>
	<!-- Flot -->
	<script src="${pageContext.request.contextPath}/res/js/secondpage/secondpage/Flot/jquery.flot.js"></script>
	<script src="${pageContext.request.contextPath}/res/js/secondpage/Flot/jquery.flot.resize.js"></script>
	<script src="${pageContext.request.contextPath}/res/js/secondpage/Flot/jquery.flot.pie.js"></script>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	

	<!-- =========================侧边栏目          start ========================================================-->
	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">
			<li><a title="个人 信息" class="i_22_dashboard " href="${pageContext.request.contextPath}/jsp/teacher/teacherIndex.jsp"></a></li>
			<li><a title="添加课程" class="i_32_forms smActive" href="${pageContext.request.contextPath}/jsp/teacher/addCourse.jsp"></a></li>
			<li><a title="查看课程" class="i_32_tables" href="${pageContext.request.contextPath}/teacher/findCourse.do?tno=${sessionScope.teacher.tno}"></a></li>
			<!-- 
			<li><a title="Kit elements" class="i_22_ui" href="ui.html"></a></li>			
			<li><a title="Some Rows" class="i_22_tables" href="tables.html"></a></li>
			<li><a title="Some Fields" class="i_22_forms" href="forms.html"></a></li>
			-->
		</ul>
		
	</div>

	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class="i_32_dashboard">
					<a href="${pageContext.request.contextPath}/jsp/teacher/teacherIndex.jsp" title="General Info">
						<span class="tab_label">个人信息</span>
						<span class="tab_info">Person Info</span>
					</a>
				</li>
				<!-- 
				<li class="i_32_ui">
					<a href="${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?flag=1&sno=${sessionScope.student.sno }" title="Your Messages">
						<span class="tab_label">选课</span>
						<span class="tab_info">Select course</span>
					</a>
				</li>
				<li class="i_32_tables">
					<a href="${pageContext.request.contextPath}/student/findSelectCourse?sno=${sessionScope.student.sno }" title="Some Rows">
						<span class="tab_label">查看课程</span>
						<span class="tab_info">Show Courses</span>
					</a>
				</li>
				 -->
				<!-- 
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
				-->
				<li class="active_tab i_32_forms">
					<a href="${pageContext.request.contextPath}/jsp/teacher/addCourse.jsp" title="Some Fields">
						<span class="active_tab tab_label">添加课程</span>
						<span class="tab_info">Forms</span>
					</a>
				</li>
				
				<li class=" i_32_tables">
					<a href="${pageContext.request.contextPath}/teacher/findCourse.do?tno=${sessionScope.teacher.tno}" title="Some Rows">
						<span class="tab_label">查看课程</span>
						<span class="tab_info">show course</span>
					</a>
				</li>
				 
			</ul>
		</aside>
		<!-- ==================侧边栏目    end ===================================================================== -->

		<div class="contents">
			<div class="grid_wrapper">

				<div class="g_6 contents_header">
					<h3 class="i_16_forms tab_label">添加课程</h3>
					<div><span class="label">add course</span></div>
				</div>
			

				<div class="g_12 separator"><span></span></div>

					
				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_valid">课程信息</h4>
					</div>
					<div class="widget_contents noPadding">
						<form id="course_form" action="${pageContext.request.contextPath}/teacher/addCourse.do">
							<div class="line_grid">
								<div class="g_3"><span class="label">课程名 <span class="must">*</span></span></div>
								<div class="g_9">
									<input id="cname" type="text" placeholder="课程名" class="simple_field" name="cname" required />
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">课程类型 <span class="must">*</span></span></div>
								<div class="g_9">
									<input id="ctype" type="text" placeholder="课程类型" class="simple_field" name="ctype" required />
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">上课时间 <span class="must">*</span></span></div>
								<div class="g_9">
									<input id="ctime" type="text" placeholder="上课时间" class="simple_field" name="ctime" required />
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">学分 <span class="must">*</span></span></div>
								<div class="g_3">
									<input type="text" class="simple_field spinner2" id="credit" name="credit" required/>
									<div class="field_notice">Min 0 |</div>
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">总人数<span class="must">*</span></span></div>
								<div class="g_3">
									<input type="text" class="simple_field spinner1" id="total" name="total"/>
									<div class="field_notice">Min 30 | Max 150</div>
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">Submit</span></div>
								<div class="g_9">
									<input type="submit" value="提交" class="submitIt simple_buttons" id="course_form_sumbit"/>
								</div>
							</div>
						</form>
					</div>
				</div>
				
				
				<div class="g_12 separator"><span></span></div>
				<!--
				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_add">专业</h4>
					</div>
					<div class="widget_contents">
						${sessionScope.student.profession.professionName }
					</div>
				</div>
				
				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_add">学院</h4>
					</div>
					<div class="widget_contents">
						${sessionScope.student.profession.department.departmentName }
					</div>
				</div>
				
				 -->
				
				<!-- Separator -->
				<div class="g_12 separator"><span></span></div>
				

			</div>
		</div>

	</div>
	
	<script src="${pageContext.request.contextPath}/res/chx/js/teacher/addCourse.js"></script>


</body>
</html>