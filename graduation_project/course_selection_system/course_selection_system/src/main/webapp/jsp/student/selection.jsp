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
	<!-- Change Pattern -->
	<div class="changePattern">
		<span id="pattern1"></span>
		<span id="pattern2"></span>
		<span id="pattern3"></span>
		<span id="pattern4"></span>
		<span id="pattern5"></span>
		<span id="pattern6"></span>
	</div>
	
	<!-- 头文�-->
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
			<li><a title="个人 信息" class="i_22_dashboard smActive" href="${pageContext.request.contextPath}/jsp/student/studentIndex.jsp"></a></li>
			<li><a title="Your Messages" class="i_22_ui" href="${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?flag=1"></a></li>
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
				<li class="active_tab i_32_ui">
					<a href="${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?flag=1" title="Your Messages">
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
				<li class="i_32_tables">
					<a href="tables.html" title="Some Rows">
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

				<div class="g_6 contents_header">
					<h3 class="i_16_ui tab_label">通选选课</h3>
					<div><span class="label">Select Course</span></div>
				</div>

				<div class="g_12 contents_header">
					<div>
						<table>
							<tr id="course_name_table_tr">
								<td class="labelText"><h3 class="tab_label">课程名：</h3></td>
								<td width="2%">&nbsp;</td>
								<td ><input type="text" class="form-control" id="courseName" size="50"></td>
								<td width="2%">&nbsp;</td>
								<td ><button type="button" class="btn btn-warning btn-lg" id="btn_search_course">search</button></td>
							</tr>
						</table>
					</div>
				</div>

				


				<div class="g_12 separator"><span></span></div>

   <!-- =======================================所有课程信息表=====start======================= -->
				<div class="g_12">
					<table class="tables">
						<thead>
							<tr class="success" >
								<th class="success">操作</th>
								<th class="success">上课时间</th>
								<th class="success">课程名</th>
								<th class="success">课程类型</th>
								<th class="success">学分</th>
								<th class="success">人数</th>
								<th class="success">已选人数</th>
							</tr>
						</thead>
						<tbody id="course_data_table">
						
							<c:forEach items="${courseTongXuanList }" var="courseTongXuan" varStatus="vs">
								<tr>
									<td><input value="选择" type="button" class="button button-glow button-rounded "/></td>
									<td>${courseTongXuan.ctime }</td>
									<td>
										<button class="button button-glow button-rounded " onclick="show_teacher('${courseTongXuan.teacher.tname}','${courseTongXuan.teacher.department.departmentName }')">${courseTongXuan.cname }</button>
									</td>
									<td>${courseTongXuan.ctype }</td>
									<td>${courseTongXuan.credit }</td>
									<td>${courseTongXuan.total }</td>
									<td>${courseTongXuan.margin }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					

					
					<!-- =========================分页区域  start========================================================================== -->
					
					
					<div class="g_12" align="center">
					
						<!-- <button class="button button-glow button-rounded button-raised button-primary " disabled="true"><span aria-hidden="true">&laquo;</span></button> -->
						<button id="btn_previous" class="button button-glow button-rounded button-raised button-primary">Previous</button>
            <button  id="btn_next" class="button button-glow button-rounded button-raised button-primary">Next</button>
            <!-- <button  class="button button-glow button-rounded button-raised button-primary"><span aria-hidden="true">&raquo;</span></button> -->
			    </div>
					
					
					<!-- =========================分页区域  end========================================================================== -->
					
					</div>
					
<!-- =======================================所有课程信息表=====end======================================= -->

				
				
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

<script type="text/javascript">
	
	$(function(){ 
		
		$('#btn_previous').click(function(){
			var page = <%=request.getAttribute("page")%> ;
			var pages = <%=request.getAttribute("pages") %>;
			
			if(page<=pages && page>1){
				var str = '${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?page=${page-1}&pages=${pages}'; 
				window.location.href = str;
			}else{
				var $me = $(this), interval;
				$me.grumble(
					{
						angle: 130,
						text: '已经是第一页了!',
						type: 'alt-', 
						distance: -10,
						hideAfter: 2000,
						hideOnClick: true,
						onShow: function(){
							var angle = 130, dir = 1;
							interval = setInterval(function(){
								(angle > 220 ? (dir=-1, angle--) : ( angle < 130 ? (dir=1, angle++) : angle+=dir));
								$me.grumble('adjust',{angle: angle});
							},25);
						},
						onHide: function(){
							clearInterval(interval);
						}
					}
				);
			}	
		});
		
		
		
		$('#btn_next').click(function(){

			var page = <%=request.getAttribute("page")%> ;
			var pages = <%=request.getAttribute("pages") %>;
			
			if(page<pages){
				var str = '${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?page=${page+1}&pages=${pages}'; 
				window.location.href = str;
			}else{
				var $me = $(this), interval;
				$me.grumble(
					{
						angle: 130,
						text: '已经最后一页了!',
						type: 'alt-', 
						distance: -10,
						hideAfter: 2000,
						hideOnClick: true,
						onShow: function(){
							var angle = 130, dir = 1;
							interval = setInterval(function(){
								(angle > 220 ? (dir=-1, angle--) : ( angle < 130 ? (dir=1, angle++) : angle+=dir));
								$me.grumble('adjust',{angle: angle});
							},25);
						},
						onHide: function(){
							clearInterval(interval);
						}
					}
				);
			}
		});
		
		
	});
	
	
	

</script>

<script src="${pageContext.request.contextPath}/res/chx/js/student/selection.js"></script>
 
</body>
</html>