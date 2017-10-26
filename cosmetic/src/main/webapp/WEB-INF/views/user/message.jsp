<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- css -->
<link type="text/css" rel="stylesheet" href="resources/css/core.css">
<!-- js -->
<script type="text/javascript" src="resources/js/common.js"></script>
<title></title>
</head>

<body>
<!-- header -->
<div class="header"><%@ include file="header.jsp"%></div>

	<table width="1340" height="650">
		<tr>
			<td rowspan="3" width="10%"></td>
			<td colspan="4" width="80%" height="15%">
			</td>
			<td rowspan="3" width="10%"></td>
		</tr>
		
		<tr>
			<td width="80%" height="70%">
				<!-- message area -->
				<div class="error_message">
					<h3>Message</h3>
					${message}
				</div>
			</td>
		</tr>
		
		<tr>
			<td colspan="4" width="100%" height="15%">
			</td>
		</tr>
	</table>
	
	 <!-- footer area -->
 <div class="footer"><%@ include file="footer.jsp" %></div>
</body>
</html>


