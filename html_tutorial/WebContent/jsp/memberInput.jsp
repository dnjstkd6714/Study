<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>memberInput</title>
	</head>
	<body>
		<h1>멤버 정보</h1>
		<form action="./memberInputAction.jsp" method="post">
			<table border="1">
				<tr>
					<td> ID : </td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td> PW : </td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td> 성별 </td>
					<td>
						<input type="radio" name="gender" value="male">남
						<input type="radio" name="gender" value="famale">여
					</td>
				</tr>
				<tr>
					<td> age </td>
					<td>
						<select name="ages">
							<option value="">선택</option>
							<option value="10">10대</option>
							<option value="20">20대</option>
							<option value="30">30대</option>
							<option value="40">40대</option>
							<option value="50">50대이상</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="submit" value="전송">
					</td>
				</tr>						
			</table>
		</form>	
	</body>
</html>