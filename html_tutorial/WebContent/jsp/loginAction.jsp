<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>loginAction</title>
	</head>
	<body>
		<h1>loginAction</h1>
		<%
		String sysId = "jjdev";
		String sysPw = "1234";
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String result = "";
		
		if(id.equals("")) {
			result = "id를 입력하세요";
		} else if (pw.equals("")) {
			result = "pw를 입력하세요";
		} else if (!sysId.equals(id) || !sysPw.equals(pw)) {
			result = "id나 PW가 다릅니다.";
		} else {
			result = "로그인 성공!";
		}
		    /* sysid.equals -> sysid와 같을때 true, false
		   !sysid.equals -> sysid와 같지 않을때 true, false  
			&& = And,  ||=or */
		%>
		<div><%= result%></div>
		
	</body>
</html>