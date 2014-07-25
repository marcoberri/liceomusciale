<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="it.marcoberri.liceomusicale.*,java.util.*,java.util.Random"%>

<%
	if (application.getAttribute("event") == null) {
		application.setAttribute("event", EventList.getAllEvents());
	}

	final ArrayList<Event> eventsLeft = (ArrayList<Event>) application.getAttribute("event");
%>

<div class="navigation">
	<h2>corsi</h2>
	<ul>

		<li><a
			href="${pageContext.request.contextPath}/corsi_amatoriali.jsp">Professionali
				e Amatoriali</a></li>
		<li><a
			href="${pageContext.request.contextPath}/corsi_complementari.jsp">Materie
				Complementari</a></li>

	</ul>
	<h2>
		<a href="${pageContext.request.contextPath}/newslist.jsp">news</a>
	</h2>
	<ul>


		<%
			int i = 6;
			for (Event e : eventsLeft) {
				i--;
				if (i == 0) {
					break;
				}
		%>
		<li><a
			href="${pageContext.request.contextPath}/news.jsp?id=<%=e.getId()%>">
				<strong><%=e.getDate()%></strong>- <%=e.getTitle()%></a></li>
		<%
			}
		%>

	</ul>
	<h2>sedi</h2>
	<ul>
		<li><a
			href="${pageContext.request.contextPath}/sede_strambino.jsp">Strambino
				(TO)</a></li>
		<li><a href="${pageContext.request.contextPath}/sede_santhia.jsp">Santhi&agrave;
				(VC)</a></li>

	</ul>

	<h2 class="contattaci">
		<a href="${pageContext.request.contextPath}/contatti.jsp">contatti</a>
	</h2>
</div>