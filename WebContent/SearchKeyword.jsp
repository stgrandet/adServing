<%@page import="edu.buffalo.ktmb.bean.Query"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NOVA Search</title>
</head>
<body background="/WEB-INF/img/background.jpg">
<img src="logo.jpg" style="width: 30%; height: 3%; margin-left: 35%;">
		<br> <br>
	<div id="formDiv" align="center" style="font-family: sans-serif;font-size: 20px">
		<form action="KeywordResultServlet" method="post" name="keywordForm"
			id="keywordForm">
			Keyword:  <input type="text" name="keyword" style="width: 30%; border: 1px solid black;height: 20px"/>
				
			<input type="submit" value="Get Information" Style="border: 1px solid black;font-family: sans-serif;font-size: 18px"/>
		</form>
	</div>
	<div id="resultsDiv" align="justify">
		<%
			String success = (String) request.getAttribute("result");
			Query query = (Query) request.getAttribute("query");
			if ("success".equals(success) && query != null) {
				
		%>
		<br /><br />
		Query Details: <br />
		Query: <%=query.getQuery() %> <br />
		Query Hits: <%=query.getQueryHits() %> <br />
		Ad Hits: <%=query.getAdHits() %> <br />
		<%
			}
		%>
	</div>
</body>
</html>