<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>memberInputAction</title>
	</head>
	<body>
		<h1>memberInputAction</h1>
		<%
			request.setCharacterEncoding("euc-kr");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String gender = request.getParameter("gender");
			String ages = request.getParameter("ages");
		%>
		<div>id : <%=id%></div>
		<div>pw : <%=pw%></div>
		<div>gender : <%=gender%></div>
		<div>ages : <%=ages%></div>
	</body>
</html>