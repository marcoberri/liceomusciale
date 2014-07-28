<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page	import="it.marcoberri.liceomusicale.*,java.util.*,java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<%@include file="includes/head.jsp"%>
</head>
<body>


<%
	if (application.getAttribute("event") == null) {
		application.setAttribute("event", EventList.getAllEvents());
	}

	final ArrayList<Event> eventsList = (ArrayList<Event>) application.getAttribute("event");
%>

	<div class="main">

		<%@include file="includes/header.jsp"%>
		<%@include file="includes/left.jsp"%>

	<div class="contents">
		<h1 class="title"> Lista News</h1>
		
		
<%
for(Event e : eventsList) {
%>
		<div class="box">
			<a href="${pageContext.request.contextPath}/news.jsp?id=<%=e.getId()%>"><%=e.getDate()%> ::: <%=e.getTitle()%></a>		
		</div>
		
<%} %>
	</div>


		<%@include file="includes/footer.jsp"%>
		<%@include file="includes/ga.jsp"%>


	</div>
</body>
</html>

