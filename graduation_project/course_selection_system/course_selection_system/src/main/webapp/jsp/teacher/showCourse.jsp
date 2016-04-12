<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>学生选课系统</title>
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<script src="${pageContext.request.contextPath}/res/js/secondpage/Flot/excanvas.js"></script>
	<![endif]-->
	<!-- The Fonts -->
	<link href="http://fonts.useso.com/css?family=Oswald|Droid+Sans:400,700" rel="stylesheet" />
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
	<!-- Change Pattern -->
	<div class="changePattern">
		<span id="pattern1"></span>
		<span id="pattern2"></span>
		<span id="pattern3"></span>
		<span id="pattern4"></span>
		<span id="pattern5"></span>
		<span id="pattern6"></span>
	</div>
	<jsp:include page="header.jsp"></jsp:include>
	
	<!--==================================================== 4 yuan =============================================== -->
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
	<!-- ===================================4yuan  end=========================================================== -->

	<!-- =========================侧边栏目          start ========================================================-->
	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">
			<li><a title="个人 信息" class="i_22_dashboard smActive" href="studentIndex.jsp"></a></li>
			<li><a title="Your Messages" class="i_22_inbox" href="${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?flag=1&sno=1"></a></li>
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
				-->
				
				<li class=" i_32_forms">
					<a href="${pageContext.request.contextPath}/jsp/teacher/addCourse.jsp" title="Some Fields">
						<span class="active_tab tab_label">添加课程</span>
						<span class="tab_info">Forms</span>
					</a>
				</li>
				
				<li class="active_tab i_32_tables">
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
							<div class="g_12">
								<table class="tables">
									<thead>
										<tr class="success" >
											<th class="success">操作</th>
											<th class="success">课程号</th>
											<th class="success">课程名</th>
											<th class="success">课程类型</th>
											<th class="success">上课时间</th>
											<th class="success">学分</th>
											<th class="success">总人数</th>
											<th class="success">已选人数</th>
										</tr>
									</thead>
									<tbody id="course_data_table">
										<c:choose>
											<c:when test="${courseList != null}">
												<%int i=0; %>
												<c:forEach items="${courseList }" var="course" varStatus="vs">
													<tr >
														<td>
															
																<input value="删除" type="button" class="button button-glow button-rounded " style="width: 100%" onclick="deleteCourse('${course.cno}','${sessionScope.teacher.tno }','<%= i%>')"/>
																<%i++; %>
														</td>
														<td>${course.cno }</td>
														<td>${course.cname }</td>
														<td>${course.ctype }</td>
														<td>${course.ctime }</td>
														<td>${course.credit }</td>
														<td>${course.total }</td>
														<td>
															<c:choose>
																<c:when test="${course.margin != 0 }"><button onclick="displayStudent('${course.cno }')">${course.margin }</button></c:when>
																<c:otherwise>${course.margin }</c:otherwise>
															</c:choose>
														</td>
													</tr>
												</c:forEach>
											</c:when>
											<c:otherwise><tr><td>not data found!</td></tr></c:otherwise>
										</c:choose>
									</tbody>
								</table>
								
							</div>				
						</div>
					</div>
					
				
				
		

	</div>
	
	
	<div id="showStudent" style="left: 50%; top: 50%; position: absolute ; background-color:#CCCCCC; display: none" class="modal fade" tabindex="-1" role="dialog" >
		<table class="tables">
			<thead>
				<tr>
					<th class="error">编号</th>
					<th class="error">姓名</th>
					<th class="error">学号</th>
					<th class="error">年级</th>
					<th class="error">专业</th>
					<th class="error">学院</th>
					<th >移除</th>
				</tr>
			</thead>
			<tbody id="student_data_table">

			</tbody>
			<tfoot><tr"><td style="left: 50%; size: auto;" ><button id="student_data_table_close">关闭</button></td></tr></tfoot>
		</table>
			
	</div>



<script src="${pageContext.request.contextPath}/res/chx/js/teacher/showCourse.js"></script>

</body>
</html>