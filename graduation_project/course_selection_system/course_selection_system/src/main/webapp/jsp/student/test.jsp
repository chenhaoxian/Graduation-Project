<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<link href="<c:url value="/res/bootstrap/css/bootstrap.min.css" />" rel="stylesheet" />

<title>fff</title> 
</head>
<body>
<h2>Hello World!</h2>
<a href="test/test1.do">go</a>
<p>
  <button type="button" class="btn btn-primary btn-lg">Large button</button>
  <button type="button" class="btn btn-default btn-lg">Large button</button>
</p>


<h3>当前用户:</h3>
<%
	//User user = request.getSession().getAttribute(user);
%>

${sessionScope.student.sname }
${sessionScope.admin.name }
${sessionScope.teacher.tname }


<h1>查询到的课程类型为 自然科学 的所有课程：</h1>
<table>
  <c:if test="${not empty courseTongXuanList }">
   <c:forEach items="${courseTongXuanList }" var="courseTongXuan">
    <tr>
     <td>${courseTongXuan.cno }</td>
     <td>${courseTongXuan.cname }</td>
    </tr>
   </c:forEach>
  </c:if>
 </table> 


</body>
</html>
