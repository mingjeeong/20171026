<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- css -->
<link type="text/css" rel="stylesheet" href="resources/css/core.css">
<!-- js -->
<script type="text/javascript" src="resources/js/common.js"></script>
<title>화장품 성분 사전</title>
</head>

<body>
<table width="1340" height="650" >
  <tr>
  <td rowspan="3" width="10%" ></td>
   <td colspan="4" width="80%" height="15%">
		<%@ include file="user/header.jsp" %>
	</td>
   <td rowspan="3" width="10%" ></td>
  </tr>
  <tr>
   <td width="80%" height="70%">
   
 	  <!-- 검색 영역 -->
 	  <div align="center" >
 	 	검색
 		<form>
 		<table border="1">
 			<tr>
 				<td>브래드명 입력하세요</td>
 				<td><input type="text" id="cosmeticBrand" name="cosmeticBrand"></td>
 			</tr>
 		</table>
 		</form>
 	  </div>
   </td>
  </tr>
  <tr>
   <td colspan="4" width="100%" height="15%">
   </td>
  </tr>
 </table>
 
 <!-- footer area -->
 <div class="footer"><%@ include file="user/footer.jsp" %></div>
</body>
</html>