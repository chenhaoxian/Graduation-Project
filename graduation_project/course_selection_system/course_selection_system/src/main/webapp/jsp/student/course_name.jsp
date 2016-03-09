<%@page import="util.Tool"%>
<%@page import="monitor.service.SearchHelper"%>
<%@page import="controller.SearchHelperController" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script type="text/javascript">
<!--

//-->

alert(1);
</script>
<%

  String partialName = request.getParameter("q");
  if (partialName == null) {
    partialName = "";
  }
  new SearchHelper().findCourseNameForAutoComplete(out, partialName);

%>
