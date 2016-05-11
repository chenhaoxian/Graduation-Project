<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title>学生选课系统</title>

	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/secondpage/CSS/style.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/flat-ui.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/buttons.css">
  <!-- grumble -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/grumble.min.css">
	
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/chx/css/student/autocomplete.css" >

  
  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
	<!-- Change Pattern -->

	<!-- 头文�-->
	<jsp:include page="header.jsp"></jsp:include>


	<!-- =========================侧边栏目          start ========================================================-->
	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">
			<li><a title="个人 信息" class="i_22_dashboard smActive" href="${pageContext.request.contextPath}/jsp/student/studentIndex.jsp"></a></li>
			<li><a title="Your Messages" class="i_22_ui" href="${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?flag=1&sno=${sessionScope.student.sno }"></a></li>
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
					<a href="${pageContext.request.contextPath}/jsp/student/studentIndex.jsp" title="General Info">
						<span class="tab_label">个人信息</span>
						<span class="tab_info">Person Info</span>
					</a>
				</li>
				<li class="i_32_ui">
					<a href="${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?flag=1&sno=${sessionScope.student.sno }" title="Your Messages">
						<span class="tab_label">选课</span>
						<span class="tab_info">Select Course</span>
					</a>
				</li>
				<!-- 
				<li class="i_32_charts">
					<a href="charts.html" title="Visual Data">
						<span class="tab_label">Charts</span>
						<span class="tab_info">Visual Data</span>
					</a>
				</li>
				-->
				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/student/findSelectCourse?sno=${sessionScope.student.sno }" title="Some Rows">
						<span class="tab_label">查看课程</span>
						<span class="tab_info">Show Courses</span>
					</a>
				</li>
				<!--
				<li class="i_32_forms">
					<a href="forms.html" title="Some Fields">
						<span class="tab_label">Forms</span>
						<span class="tab_info">Some Fields</span>
					</a>
				</li>
				 -->
			</ul>
		</aside>
		<!-- ==================侧边栏目    end ===================================================================== -->
		
		
		<div class="contents">
			<div class="grid_wrapper">
				<div class="g_12">
					<table class="tables">
						<thead>
							<tr class="success" >
								<th class="success">操作</th>
								<th class="success">课程名</th>
								<th class="success">教师名</th>
								<th class="success">上课时间</th>
								<th class="success">状态</th>
							</tr>
						</thead>
						<tbody id="selectCourse_data_table">
						<%int i = 0; %>
							<c:forEach items="${selectCourseList }" var="selectCourse" varStatus="vs">
								<tr >
									<td>
										<c:if test="${selectCourse.status =='在修' }">
											<input value="退选" type="button" class="button button-glow button-rounded " style="width: 100%" onclick="cancelSelect('${selectCourse.cno}','${selectCourse.sno }','<%=i%>')"/>
											<%i++; %>
										</c:if>
									</td>
									<td>${selectCourse.courseName }</td>
									<td>${selectCourse.teacherName }</td>
									<td>${selectCourse.ctime }</td>
									<td>${selectCourse.status }</td>
								</tr>
							</c:forEach>
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

<!-- showSelectCourse.js -->
<script src="${pageContext.request.contextPath}/res/chx/js/student/showSelectCourse.js"></script>


 
</body>
</html>