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
			result = "id�� �Է��ϼ���";
		} else if (pw.equals("")) {
			result = "pw�� �Է��ϼ���";
		} else if (!sysId.equals(id) || !sysPw.equals(pw)) {
			result = "id�� PW�� �ٸ��ϴ�.";
		} else {
			result = "�α��� ����!";
		}
		    /* sysid.equals -> sysid�� ������ true, false
		   !sysid.equals -> sysid�� ���� ������ true, false  
			&& = And,  ||=or */
		%>
		<div><%= result%></div>
		
	</body>
</html>