<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- css -->
<link type="text/css" rel="stylesheet" href="resources/css/core.css">
<!-- js -->
<script type="text/javascript" src="resources/js/common.js"></script>
<title>로그인</title>
</head>

<body>
<!-- header -->
<div class="header"><%@ include file="header.jsp"%></div>

	<table width="1340" height="650" >
		<tr>
			<td rowspan="3" width="10%"></td>
			<td colspan="4" width="80%" height="15%">
			<td rowspan="3" width="10%"></td>
		</tr>
		<tr>
			<td width="80%" height="70%">
				<!-- 로그인-->
				<div align="center">
					로그인
					<form action="login.do" method="post" name="loginForm">
						<table>
							<tr>
								<td>아이디</td>
								<td><input type="text" name="userId" id="userId" autofocus tabindex="1" required="required"></td>
								<td rowspan="2"><input type="submit" value="로그인" tabindex="3"></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="userPw" id="userPw" tabindex="2" required="required"></td>
							</tr>
							<tr>
								<td colspan="4" align="center">계정이 없으신가요? 
								<a href="joinView.do">회원가입</a>
							</td>
							</tr>
						</table>
					</form>
				</div>
			</td>
		</tr>
	</table>

	<!-- message area -->
	<hr>
	<div class="success_message">
		<h3>Message</h3>
		${message}
	</div>
	
	<!-- footer area -->
	<hr>
	<div class="footer"><%@ include file="footer.jsp" %></div>
	
</body>
</html>