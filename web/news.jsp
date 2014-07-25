<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@include file="includes/head.jsp"%>
</head>
<body>
<%
String news_id = request.getParameter("id");
Event det = EventDetail.getEventById(news_id);
%>
	<div class="main">

		<%@include file="includes/header.jsp"%>
		<%@include file="includes/left.jsp"%>
		
	<div class="contents">
		<h1 class="title"><%=det.getDate()%> - <%=det.getTitle()%></h1>
		<div class="box"><%=det.getBody()%></div>
	</div>

		<%@include file="includes/footer.jsp"%>
		<%@include file="includes/ga.jsp"%>
	</div>
</body>
</html>

