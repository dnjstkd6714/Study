<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ���ڵ� �κ� -->  
<%request.setCharacterEncoding("euc-kr");%>
<h1>ȸ������ �Է�ȭ��</h1>
	<form>
	<!-- �α��� ���� -->
	<fieldset id="loginInfo">
		<legend>
			01 �α��� ����
			<!-- <img src="../image/idsearch_maintext01.gif"> -->
		</legend>
		<table class="login">
			<tr><!-- ���̵�  -->
				<%
				String ID = request.getParameter("identity");
				%>
				<td class="td0">
					<img src="../image/check_icon.gif">
				</td>
				<td class="td1">
					<img src="../image/idsearch_text01.gif">
					<!-- <label for="identity">�����ID</label> -->
				</td>
				<td class="td2">
					<input type="text" placeholder="�����̸������" name="identity" id="identity" value="<%=ID%>" class="important" autofocus>
				</td>
				<td>
					<input type="button" value="�ߺ�Ȯ��" class="orange">
				</td>
				<td>
					<font>���� ���� �����ҹ���,��������</font>
				</td>
			</tr>
			<tr><!-- ��й�ȣ  -->
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
					<font>���� ���� �����ҹ���,��������</font>
				</td>
			</tr>
			<tr><!-- ��й�ȣ Ȯ��  -->
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
					<font>��й�ȣ�� �ѹ��� �Է����ּ���</font>
				</td>
			</tr>
		</table>
	</fieldset>
	<!-- ��������  -->
	<fieldset id="persnolInfo" class="box drop-shadow lifted">
		<legend>
			02 ���� ����
			<!-- <img src="./image/idsearch_maintext02.gif"> -->
		</legend>
		<table class="login">
			<tr><!-- �̸� -->
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
			<tr><!-- �ֹι�ȣ -->
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
					<input type="text" id="brithday1" name="brithday1" size="6" maxlength="4" value=<%=birthday1%>> ��
					<input type="text" id="brithday2" name="brithday2" size="6" maxlength="2" value=<%=birthday2%>> ��
					<input type="text" id="brithday3" name="brithday3" size="6" maxlength="2" value=<%=birthday3%>> �� 
				</td>
				<td>
				<%
				String mtype = request.getParameter("mtype")==null?"":request.getParameter("mtype");
				%>
					<input type="radio" name="mtype" id="mtype" value="solar" <% if (mtype.equals("solar")){ %> checked <%}%>>���
					<input type="radio" name="mtype" id="mtype" value="lunar" <% if (mtype.equals("lunar")){ %> checked <%}%>>����
<%-- 				<%
				if(mtype.equals("")) {
				%>
					<input type="radio" name="mtype" id="mtype" value="solar">���
					<input type="radio" name="mtype" id="mtype" value="lunar">����
				<%
				} if(mtype.equals("solar")) {
				%>
					<input type="radio" name="mtype" id="mtype" value="solar" checked="checked">���
					<input type="radio" name="mtype" id="mtype" value="lunar">����
				<%
				} if(mtype.equals("lunar"))  {
				%>
					<input type="radio" name="mtype" id="mtype" value="solar">���
					<input type="radio" name="mtype" id="mtype" value="lunar" checked="checked">����
				<%
				}
				%> --%>
				                      <!-- ���� �ּ� ���ó�� �� ó���� �� ������........... ������ ���... --> 
				</td>
			</tr>
			<tr><!-- ��ȭ��ȣ -->
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
		                    	<option value="">==����==</option>
		                    	<option value="02" <% if ("02".equals(phone1)){ %> selected <%}%>>����(02)</option>
		                    	<option value="051" <% if ("051".equals(phone1)){ %> selected <%}%>>�λ�(051)</option>
		                    	<option value="053" <% if ("053".equals(phone1)){ %> selected <%}%>>�뱸(053)</option>
		                    	<option value="032" <% if ("032".equals(phone1)){ %> selected <%}%>>��õ(032)</option>
		                    	<option value="062" <% if ("062".equals(phone1)){ %> selected <%}%>>����(062)</option>
		                    	<option value="042" <% if ("042".equals(phone1)){ %> selected <%}%>>����(042)</option>
		                    	<option value="052" <% if ("052".equals(phone1)){ %> selected <%}%>>���(052)</option>
		                    	<option value="031" <% if ("031".equals(phone1)){ %> selected <%}%>>���(031)</option>
		                    	<option value="033" <% if ("033".equals(phone1)){ %> selected <%}%>>����(033)</option>
		                    	<option value="043" <% if ("043".equals(phone1)){ %> selected <%}%>>���(043)</option>
		                    	<option value="041" <% if ("041".equals(phone1)){ %> selected <%}%>>�泲(041)</option>
		                    	<option value="063" <% if ("063".equals(phone1)){ %> selected <%}%>>����(063)</option>
		                    	<option value="061" <% if ("061".equals(phone1)){ %> selected <%}%>>����(061)</option>
		                    	<option value="054" <% if ("054".equals(phone1)){ %> selected <%}%>>���(054)</option>
		                    	<option value="055" <% if ("055".equals(phone1)){ %> selected <%}%>>�泲(055)</option>
		                    	<option value="064" <% if ("064".equals(phone1)){ %> selected <%}%>>����(064)</option>
					</select> -
					<input type="tel" id="phone2" name="phone2" size="6" maxlength="4" value="<%=phone2%>"> -
					<input type="tel" id="phone3" name="phone3" size="6" maxlength="4" value="<%=phone3%>">
				</td>
				<td>
					<%
						String telplace = request.getParameter("telplace")==null?"":request.getParameter("telplace");
					%>
						<input type="radio" name="telplace" id="telplace" value="office" <%if (telplace.equals("office")){ %> checked <%}%>>����
						<input type="radio" name="telplace" id="telplace" value="home" <%if (telplace.equals("home")){ %> checked <%}%>>����
<%-- 					<% 
					if(telplace.equals("")) {
					%>
						<input type="radio" name="telplace" id="telplace" value="office">����
						<input type="radio" name="telplace" id="telplace" value="home">����		
					<%
						} if(telplace.equals("office")) {
					%>
						<input type="radio" name="telplace" id="telplace" value="office" checked="checked">����
						<input type="radio" name="telplace" id="telplace" value="home">����
					<%
						} if(telplace.equals("home")) {
					%>
						<input type="radio" name="telplace" id="telplace" value="office">����
						<input type="radio" name="telplace" id="telplace" value="home" checked="checked">����
					<%
					}
					%> --%>
				</td>
			</tr>
			<tr><!-- ����ȣ -->
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
			<tr><!-- �ּ�1 -->
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
					<input type="button" value="�����ȣã��" class="white"> 
				</td>
				<td>
						<input type="radio" name="addrplace" id="addrplace" value="office" <%if (addrplace.equals("office")) {%> checked <%}%>>����
						<input type="radio" name="addrplace" id="addrplace" value="home" <%if (addrplace.equals("home")) {%> checked<%} %>>����
					<%-- <%
					if(addrplace.equals("office")) {
					%>
						<input type="radio" name="addrplace" id="addrplace" value="office" checked="checked">����
						<input type="radio" name="addrplace" id="addrplace" value="home">����
					<%
						} else {
					%>
						<input type="radio" name="addrplace" id="addrplace" value="office">����
						<input type="radio" name="addrplace" id="addrplace" value="home" checked="checked">����
					<%
					}
					%>				 --%>
				</td>
			</tr>
			<tr><!-- �ּ�2 -->
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
			<tr><!-- �ּ�3 -->
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
	<!-- ��Ÿ����  -->
	<fieldset id="persnolInfo" class="box drop-shadow lifted">
		<legend>03 ��Ÿ����</legend>
		<table class="login">
			<tr><!-- ���� -->
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
						<option value="" <%if ("".equals(job)){ %> selected<%} %>>===�����ϼ���===</option>
						<option value="job1" <%if ("job1".equals(job)){ %> selected<%} %>>ȸ���</option>
						<option value="job2" <%if ("job2".equals(job)){ %> selected<%} %>>����������</option>
						<option value="job3" <%if ("job3".equals(job)){ %> selected<%} %>>����</option>
						<option value="job4" <%if ("job4".equals(job)){ %> selected<%} %>>�л�</option>
						<option value="job5" <%if ("job5".equals(job)){ %> selected<%} %>>�Ϲ��ڿ���</option>
						<option value="job6" <%if ("job6".equals(job)){ %> selected<%} %>>������</option>
						<option value="job7" <%if ("job7".equals(job)){ %> selected<%} %>>�Ƿ���</option>
						<option value="job8" <%if ("job8".equals(job)){ %> selected<%} %>>������</option>
						<option value="job9" <%if ("job9".equals(job)){ %> selected<%} %>>����.���/������</option>
						<option value="job10" <%if ("job10".equals(job)){ %> selected<%} %>>��.��.����/��������</option>
						<option value="job11" <%if ("job11".equals(job)){ %> selected<%} %>>��ü</option>
						<option value="job12" <%if ("job12".equals(job)){ %> selected<%} %>>�ֺ�</option>
						<option value="job13" <%if ("job13".equals(job)){ %> selected<%} %>>����</option>
						<option value="job14" <%if ("job14".equals(job)){ %> selected<%} %>>��Ÿ</option>
					</select>
				</td>
			</tr>
			<tr><!-- ȸ���(�б�) -->
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
					<input type="text" id="company" name="company" size="20" value="<%=company%>">&nbsp;<input type="button" value="ã��" class="white">
				</td>
				<td>
					<input type="radio" name="companyname" id="companyname" value="office"<%if (companyname.equals("office")) {%> checked<%} %>>����
					<input type="radio" name="companyname" id="companyname" value="home"<%if (companyname.equals("home")) {%> checked<%} %>>����
				</td>
			</tr>
			<tr><!-- ����� ��ȣ -->
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
			<tr><!-- �μ���(�а�) -->
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
			<tr><!-- ���� -->
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
			<tr><!-- ���ɺо� -->
				<td>
				</td>
				<td>
					<img src="../image/idsearch_text16.gif">
				</td>
				<td colspan="2">
					<select name="interest" id="interest">
						<option value="" <%if ("".equals(interest)){ %> selected<%} %>>===�����ϼ���===</option>
        				<option value="inter1" <%if ("inter1".equals(interest)){ %> selected<%} %>>��óâ��</option>
						<option value="inter2" <%if ("inter2".equals(interest)){ %> selected<%} %>>business����</option>
						<option value="inter3" <%if ("inter3".equals(interest)){ %> selected<%} %>>������å����</option>
						<option value="inter4" <%if ("inter4".equals(interest)){ %> selected<%} %>>�ڱ�����</option>
						<option value="inter5" <%if ("inter5".equals(interest)){ %> selected<%} %>>�ű���ҽ�</option>
						<option value="inter6" <%if ("inter6".equals(interest)){ %> selected<%} %>>���/���</option>
						<option value="inter7" <%if ("inter7".equals(interest)){ %> selected<%} %>>��Ÿ</option>
					</select>
				</td>
			</tr>
			<tr><!-- TP���� -->
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
					<input type="radio" name="webzine" id="webzine" value="true" <%if (webzine.equals("true")){%> checked<%} %>>���ŵ���
					<input type="radio" name="webzine" id="webzine" value="false" <%if (webzine.equals("false")){%> checked<%} %>>������������
				</td>
				<td>
					(TP���� �����ϴ� Webzine ���񽺸� �޾ƺ��ðڽ��ϱ�?)
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
		<input type="reset" value="����" class="orange">
		<input type="button" value="���" class="orange">
	</fieldset>
</form>	
</body>
</html>