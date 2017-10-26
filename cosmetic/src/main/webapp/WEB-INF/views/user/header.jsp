<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">


function searchBrand(){
	var url='brandList.do';
	var winName='brandList';
	var winConfig='top=100,left=100,height=250,width=520,resizable=no,scrollbar=no';
	var childWin =window.open(url,winName,winConfig);
	
}

function searchIngredient(){
	var url='ingredientList.do';
	var winName='ingredientList';
	var winConfig='top=100,left=100,height=250,width=520,resizable=no,scrollbar=no';
	var childWin =window.open(url,winName,winConfig);
	
}

</script>
<!-- header -->
<div>
	<div class="menu">
		<a href="loginView.do">로그인</a> 
		<a href="joinView.do">회원가입</a>
	</div>
	<div class="logo">
		<a  class="logo" href="home.do"><span class="logoChar">C</span>osmetic <span class="logoChar">I</span>ngredients <span class="logoChar">D</span>ictionary 화장품 성분 사전</a>
		
		<span onclick="searchBrand()">브랜드</span>
		<span onclick="searchIngredient()">성분</span>
	</div>
	
</div>
<hr>
