<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="it.marcoberri.liceomusicale.*,java.util.*,java.util.Random"%>
<%
if(application.getAttribute("event") == null){
	application.setAttribute("event", EventList.getAllEvents());
}

ArrayList<Event> events = (ArrayList<Event>)application.getAttribute("event"); 

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
		<title>Associazione Liceo Musicale Santhi&agrave;</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/screen.css" type="text/css">
	<meta name="verify-v1" content="r8XFjBnMT+SWjuq1LQhVl+loD7HB3g88NTe943gsAyg=" /> </head>
