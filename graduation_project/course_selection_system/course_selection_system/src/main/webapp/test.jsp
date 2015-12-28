<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<a href="testmybatis/test1">go to test mybatis</a>

<h3>user now:</h3>
<%
	//User user = request.getSession().getAttribute(user);
%>
${sessionScope.student.sname }
${sessionScope.admin.name }
${sessionScope.teacher.tname }



</body>
</html>
