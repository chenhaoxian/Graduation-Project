<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<table class="tables">
			<thead>
				<tr>
					<th>编号</th>
					<th>姓名</th>
					<th>学号</th>
					<th>年级</th>
					<th>专业</th>
					<th>学院</th>
				</tr>
			</thead>
			<tbody id="student_data_table">
				<c:choose>
					<c:when test="${studentList != null }">
						<%int j = 1; %>
						<c:forEach items="${studentList }" var="student">
							<tr>
								<td><%= j %></td>
								<%j++; %>
								<td>${student.sname} </td>
								<td>${student.sno }</td>
								<td>${student.grade }</td>
								<td>${student.professionName }</td>
								<td>${student.departmentName }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise><tr><td>no data found!</td><tr></c:otherwise>
				</c:choose>

				 <!-- 
				 <jsp:include page="studentData.jsp"></jsp:include> -->
			</tbody>
			<tfoot><tr><td><button id="student_data_table_close">关闭</button></td></tr></tfoot>
		</table>
<!-- 
 <tr><td>test</td><td>test</td><td>test</td><td>test</td><td>test</td></tr> -->
</body>
</html>