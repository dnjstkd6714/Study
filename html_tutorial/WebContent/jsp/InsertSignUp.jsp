<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 인코딩 부분 -->  
<%request.setCharacterEncoding("euc-kr");%>
<h1>회원가입 입력화면</h1>
	<form>
	<!-- 로그인 정보 -->
	<fieldset id="loginInfo">
		<legend>
			01 로그인 정보
			<!-- <img src="../image/idsearch_maintext01.gif"> -->
		</legend>
		<table class="login">
			<tr><!-- 아이디  -->
				<%
				String ID = request.getParameter("identity");
				%>
				<td class="td0">
					<img src="../image/check_icon.gif">
				</td>
				<td class="td1">
					<img src="../image/idsearch_text01.gif">
					<!-- <label for="identity">사용자ID</label> -->
				</td>
				<td class="td2">
					<input type="text" placeholder="영문이름만사용" name="identity" id="identity" value="<%=ID%>" class="important" autofocus>
				</td>
				<td>
					<input type="button" value="중복확인" class="orange">
				</td>
				<td>
					<font>띄어쓰기 없는 영문소문자,숫자조합</font>
				</td>
			</tr>
			<tr><!-- 비밀번호  -->
				<%
				String PW = request.getParameter("password");
				%>
				<td>
					<img src="../image/check_icon.gif">
				</td>
				<td>
					<img src="../image/idsearch_text02.gif">
				</td>
				<td>
					<input type="password" id="password" name="password" class="important" value="<%=PW%>">
				</td>
				<td colspan="2">
					<font>띄어쓰기 없는 영문소문자,숫자조합</font>
				</td>
			</tr>
			<tr><!-- 비밀번호 확인  -->
				<%
				String REPW = request.getParameter("repassword");
				%>
				<td>
					<img src="../image/check_icon.gif">
				</td>
				<td>
					<img src="../image/idsearch_text03.gif">
				</td>
				<td>
					<input type="password" id="repassword" name="repassword" class="important" value="<%=REPW%>" >
				</td>
				<td colspan="2">
					<font>비밀번호를 한번더 입력해주세요</font>
				</td>
			</tr>
		</table>
	</fieldset>
	<!-- 개인정보  -->
	<fieldset id="persnolInfo" class="box drop-shadow lifted">
		<legend>
			02 개인 정보
			<!-- <img src="./image/idsearch_maintext02.gif"> -->
		</legend>
		<table class="login">
			<tr><!-- 이름 -->
				<%
				String NAME = request.getParameter("name");
				%>
				<td class="td0">
					<img src="../image/check_icon.gif">
				</td>
				<td class="td1">
					<img src="../image/idsearch_text06.gif">
				</td>
				<td class="td2">
					<input type="text" id="name" name="name" value="<%=NAME%>">
				</td>
				<td>
				</td>
				<td>
				</td>
			</tr>
			<tr><!-- 주민번호 -->
				<%
				String JUMIN1 = request.getParameter("jumin1");
				String JUMIN2 = request.getParameter("jumin2");
				%>
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text07.gif">
				</td>
				<td colspan="3">
					<input type="text" id="jumin1" name="jumin1" size="15" maxlength="6" value=<%=JUMIN1%>>
					 - <input type="text" id="jumin2" name="jumin2" size="15" maxlength="7" value=<%=JUMIN2%>> 
				</td>
			</tr>
			<tr><!-- birthday -->
				<%
				String birthday1 = request.getParameter("brithday1");
				String birthday2 = request.getParameter("brithday2");
				String birthday3 = request.getParameter("brithday3");
				%>
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text20.gif">
				</td>
				<td colspan="2">
					<input type="text" id="brithday1" name="brithday1" size="6" maxlength="4" value=<%=birthday1%>> 년
					<input type="text" id="brithday2" name="brithday2" size="6" maxlength="2" value=<%=birthday2%>> 월
					<input type="text" id="brithday3" name="brithday3" size="6" maxlength="2" value=<%=birthday3%>> 일 
				</td>
				<td>
				<%
				String mtype = request.getParameter("mtype")==null?"":request.getParameter("mtype");
				%>
					<input type="radio" name="mtype" id="mtype" value="solar" <% if (mtype.equals("solar")){ %> checked <%}%>>양력
					<input type="radio" name="mtype" id="mtype" value="lunar" <% if (mtype.equals("lunar")){ %> checked <%}%>>음력
<%-- 				<%
				if(mtype.equals("")) {
				%>
					<input type="radio" name="mtype" id="mtype" value="solar">양력
					<input type="radio" name="mtype" id="mtype" value="lunar">음력
				<%
				} if(mtype.equals("solar")) {
				%>
					<input type="radio" name="mtype" id="mtype" value="solar" checked="checked">양력
					<input type="radio" name="mtype" id="mtype" value="lunar">음력
				<%
				} if(mtype.equals("lunar"))  {
				%>
					<input type="radio" name="mtype" id="mtype" value="solar">양력
					<input type="radio" name="mtype" id="mtype" value="lunar" checked="checked">음력
				<%
				}
				%> --%>
				                      <!-- 위에 주석 방식처럼 도 처리할 수 있으나........... 불편한 방법... --> 
				</td>
			</tr>
			<tr><!-- 전화번호 -->
				<td>
					<%
						String phone1 = request.getParameter("phone1");
						String phone2 = request.getParameter("phone2");
						String phone3 = request.getParameter("phone3");
					%>
					<img src="../image/check_icon.gif">
				</td>
				<td class="td1">
					<img src="../image/idsearch_text08.gif">
				</td>
				<td	colspan="2">
					<select id="phone1" name="phone1">
		                    	<option value="">==선택==</option>
		                    	<option value="02" <% if ("02".equals(phone1)){ %> selected <%}%>>서울(02)</option>
		                    	<option value="051" <% if ("051".equals(phone1)){ %> selected <%}%>>부산(051)</option>
		                    	<option value="053" <% if ("053".equals(phone1)){ %> selected <%}%>>대구(053)</option>
		                    	<option value="032" <% if ("032".equals(phone1)){ %> selected <%}%>>인천(032)</option>
		                    	<option value="062" <% if ("062".equals(phone1)){ %> selected <%}%>>광주(062)</option>
		                    	<option value="042" <% if ("042".equals(phone1)){ %> selected <%}%>>대전(042)</option>
		                    	<option value="052" <% if ("052".equals(phone1)){ %> selected <%}%>>울산(052)</option>
		                    	<option value="031" <% if ("031".equals(phone1)){ %> selected <%}%>>경기(031)</option>
		                    	<option value="033" <% if ("033".equals(phone1)){ %> selected <%}%>>강원(033)</option>
		                    	<option value="043" <% if ("043".equals(phone1)){ %> selected <%}%>>충북(043)</option>
		                    	<option value="041" <% if ("041".equals(phone1)){ %> selected <%}%>>충남(041)</option>
		                    	<option value="063" <% if ("063".equals(phone1)){ %> selected <%}%>>전북(063)</option>
		                    	<option value="061" <% if ("061".equals(phone1)){ %> selected <%}%>>전남(061)</option>
		                    	<option value="054" <% if ("054".equals(phone1)){ %> selected <%}%>>경북(054)</option>
		                    	<option value="055" <% if ("055".equals(phone1)){ %> selected <%}%>>경남(055)</option>
		                    	<option value="064" <% if ("064".equals(phone1)){ %> selected <%}%>>제주(064)</option>
					</select> -
					<input type="tel" id="phone2" name="phone2" size="6" maxlength="4" value="<%=phone2%>"> -
					<input type="tel" id="phone3" name="phone3" size="6" maxlength="4" value="<%=phone3%>">
				</td>
				<td>
					<%
						String telplace = request.getParameter("telplace")==null?"":request.getParameter("telplace");
					%>
						<input type="radio" name="telplace" id="telplace" value="office" <%if (telplace.equals("office")){ %> checked <%}%>>직장
						<input type="radio" name="telplace" id="telplace" value="home" <%if (telplace.equals("home")){ %> checked <%}%>>자택
<%-- 					<% 
					if(telplace.equals("")) {
					%>
						<input type="radio" name="telplace" id="telplace" value="office">자택
						<input type="radio" name="telplace" id="telplace" value="home">직장		
					<%
						} if(telplace.equals("office")) {
					%>
						<input type="radio" name="telplace" id="telplace" value="office" checked="checked">자택
						<input type="radio" name="telplace" id="telplace" value="home">직장
					<%
						} if(telplace.equals("home")) {
					%>
						<input type="radio" name="telplace" id="telplace" value="office">자택
						<input type="radio" name="telplace" id="telplace" value="home" checked="checked">직장
					<%
					}
					%> --%>
				</td>
			</tr>
			<tr><!-- 폰번호 -->
				<%
				String hphone1 = request.getParameter("hphone1");
				String hphone2 = request.getParameter("hphone2");
				String hphone3 = request.getParameter("hphone3");
				%>
				<td>
					<img src="../image/check_icon.gif">
				</td>
				<td class="td1">
					<img src="../image/idsearch_text09.gif">
				</td>
				<td colspan="3">
					<input type="text" id="hphone1" name="hphone1" size="6" maxlength="3" value="<%=hphone1%>"> -
					<input type="text" id="hphone2" name="hphone2" size="6" maxlength="3" value="<%=hphone2%>"> -
					<input type="text" id="hphone3" name="hphone3" size="6" maxlength="3" value="<%=hphone3%>">
				</td>
			</tr>
			<tr><!-- email -->
				<%
				String email = request.getParameter("email");
				%>
				<td>
					<img src="../image/check_icon.gif">
				</td>
				<td>
					<img src="../image/idsearch_text10.gif">
				</td>
				<td colspan="3">
					<input type="email" id="eamil" name="email" placeholder="example@example.com" size="40" value="<%=email%>">
				</td>
			</tr>
			<tr><!-- 주소1 -->
				<%
				String zipcode2 = request.getParameter("zipcode2");
				String zipcode3 = request.getParameter("zipcode3");
				String addrplace = request.getParameter("addrplace")==null?"":request.getParameter("addrplace");
				%>
				<td>
					<img src="../image/check_icon.gif">
				</td>
				<td class="td1">
					<img src="../image/idsearch_text11.gif">
				</td>
				<td colspan="2">
					<input type="text" id="zipcode1" name="zipcode2" size="6" maxlength="3" value="<%=zipcode2 %>"> -
					<input type="text" id="zipcode2" name="zipcode3" size="6" maxlength="3" value="<%=zipcode3 %>">&nbsp;
					<input type="button" value="우편번호찾기" class="white"> 
				</td>
				<td>
						<input type="radio" name="addrplace" id="addrplace" value="office" <%if (addrplace.equals("office")) {%> checked <%}%>>직장
						<input type="radio" name="addrplace" id="addrplace" value="home" <%if (addrplace.equals("home")) {%> checked<%} %>>자택
					<%-- <%
					if(addrplace.equals("office")) {
					%>
						<input type="radio" name="addrplace" id="addrplace" value="office" checked="checked">자택
						<input type="radio" name="addrplace" id="addrplace" value="home">직장
					<%
						} else {
					%>
						<input type="radio" name="addrplace" id="addrplace" value="office">자택
						<input type="radio" name="addrplace" id="addrplace" value="home" checked="checked">직장
					<%
					}
					%>				 --%>
				</td>
			</tr>
			<tr><!-- 주소2 -->
				<%
				String addr1 = request.getParameter("addr1");
				%>
				<td>
				</td>
				<td>
				</td>
				<td colspan="3">
					<input type="text" name="addr1" id="addr1" size="40" value="<%=addr1%>">
				</td>
			</tr>
			<tr><!-- 주소3 -->
				<%
				String addr2 = request.getParameter("addr2");
				%>
				<td>
				</td>
				<td>
				</td>
				<td colspan="3">
					<input type="text" name="addr2" id="addr2" size="40" value="<%=addr1%>">
				</td>
			</tr>
		</table>
	</fieldset>
	<!-- 기타정보  -->
	<fieldset id="persnolInfo" class="box drop-shadow lifted">
		<legend>03 기타정보</legend>
		<table class="login">
			<tr><!-- 직업 -->
				<%
				String job = request.getParameter("job");
				%>
				<td class="td0">
				</td>
				<td class="td1">
					<img src="../image/idsearch_text12.gif">
				</td>
				<td  colspan="2">
					<select name="job" id="job">
						<option value="" <%if ("".equals(job)){ %> selected<%} %>>===선택하세요===</option>
						<option value="job1" <%if ("job1".equals(job)){ %> selected<%} %>>회사원</option>
						<option value="job2" <%if ("job2".equals(job)){ %> selected<%} %>>연구전문직</option>
						<option value="job3" <%if ("job3".equals(job)){ %> selected<%} %>>교수</option>
						<option value="job4" <%if ("job4".equals(job)){ %> selected<%} %>>학생</option>
						<option value="job5" <%if ("job5".equals(job)){ %> selected<%} %>>일반자영업</option>
						<option value="job6" <%if ("job6".equals(job)){ %> selected<%} %>>공무원</option>
						<option value="job7" <%if ("job7".equals(job)){ %> selected<%} %>>의료인</option>
						<option value="job8" <%if ("job8".equals(job)){ %> selected<%} %>>법조인</option>
						<option value="job9" <%if ("job9".equals(job)){ %> selected<%} %>>종교.언론/예술인</option>
						<option value="job10" <%if ("job10".equals(job)){ %> selected<%} %>>농.축.수산/광공업인</option>
						<option value="job11" <%if ("job11".equals(job)){ %> selected<%} %>>단체</option>
						<option value="job12" <%if ("job12".equals(job)){ %> selected<%} %>>주부</option>
						<option value="job13" <%if ("job13".equals(job)){ %> selected<%} %>>무직</option>
						<option value="job14" <%if ("job14".equals(job)){ %> selected<%} %>>기타</option>
					</select>
				</td>
			</tr>
			<tr><!-- 회사명(학교) -->
				<%
				String company = request.getParameter("company");
				String companyname = request.getParameter("companyname")==null?"":request.getParameter("companyname");
				%>
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text13.gif">
				</td>
				<td class="td2">
					<input type="text" id="company" name="company" size="20" value="<%=company%>">&nbsp;<input type="button" value="찾기" class="white">
				</td>
				<td>
					<input type="radio" name="companyname" id="companyname" value="office"<%if (companyname.equals("office")) {%> checked<%} %>>직장
					<input type="radio" name="companyname" id="companyname" value="home"<%if (companyname.equals("home")) {%> checked<%} %>>자택
				</td>
			</tr>
			<tr><!-- 사업자 번호 -->
				<%
				String compNo = request.getParameter("compNo");
				%>
				<td>
				</td>
				<td>
					<img src="../image/join_companyNum.gif">
				</td>
				<td colspan="2">
					<input type="text" id="compNo" name="compNo" size="20" value="<%=compNo%>"> 
				</td>
			</tr>
			<tr><!-- 부서명(학과) -->
				<%
				String partname = request.getParameter("partname");
				%>
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text14.gif">
				</td>
				<td colspan="2">
					<input type="tel" id="partname" name="partname" size="20" value="<%=partname%>">
				</td>
			</tr>
			<tr><!-- 직위 -->
				<%
				String compostion = request.getParameter("compostion");
				String interest = request.getParameter("interest");
				%>
				<td>
				</td>
				<td class="td1">
					<img src="../image/idsearch_text15.gif">
				</td>
				<td colspan="2">
					<input type="text" id="compostion" name="compostion" size="20" value="<%=compostion%>">
				</td>
			</tr>
			<tr><!-- 관심분야 -->
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text16.gif">
				</td>
				<td colspan="2">
					<select name="interest" id="interest">
						<option value="" <%if ("".equals(interest)){ %> selected<%} %>>===선택하세요===</option>
        				<option value="inter1" <%if ("inter1".equals(interest)){ %> selected<%} %>>벤처창업</option>
						<option value="inter2" <%if ("inter2".equals(interest)){ %> selected<%} %>>business동향</option>
						<option value="inter3" <%if ("inter3".equals(interest)){ %> selected<%} %>>정부정책동향</option>
						<option value="inter4" <%if ("inter4".equals(interest)){ %> selected<%} %>>자금지원</option>
						<option value="inter5" <%if ("inter5".equals(interest)){ %> selected<%} %>>신기술소식</option>
						<option value="inter6" <%if ("inter6".equals(interest)){ %> selected<%} %>>취업/고용</option>
						<option value="inter7" <%if ("inter7".equals(interest)){ %> selected<%} %>>기타</option>
					</select>
				</td>
			</tr>
			<tr><!-- TP웹진 -->
				<%
				String homepage = request.getParameter("homepage");
				String self = request.getParameter("self");
				String webzine = request.getParameter("webzine")==null?"":request.getParameter("webzine");
				%>
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text17.gif">
				</td>
				<td>
					<input type="radio" name="webzine" id="webzine" value="true" <%if (webzine.equals("true")){%> checked<%} %>>수신동의
					<input type="radio" name="webzine" id="webzine" value="false" <%if (webzine.equals("false")){%> checked<%} %>>수신하지않음
				</td>
				<td>
					(TP에서 제공하는 Webzine 서비스를 받아보시겠습니까?)
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text18.gif">
				</td>
				<td colspan="2">
					<input type="text" name="homepage" id="homepage" size="47" value="<%=homepage%>">
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text19.gif">
				</td>
				<td colspan="2">
					<textarea name="self" id="self"><%=self %></textarea>
				</td>
			</tr>
		</table>
	</fieldset>
	<br>
	<fieldset id="lastfield">
		<input type="reset" value="리셋" class="orange">
		<input type="button" value="취소" class="orange">
	</fieldset>
</form>	
</body>
</html>