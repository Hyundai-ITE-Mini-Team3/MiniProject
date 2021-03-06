<!-- 회원가입 완료 페이지 (작성자: 박주영) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- header_ver2 include -->
<jsp:include page="../includes/header_ver2.jsp">
    <jsp:param name="title" value="회원가입-가입완료"/>
</jsp:include>

<script>
	// jQuery 충돌 방지
	var arkQuery = $.noConflict(true);
</script>

<script type="text/javascript">
//<![CDATA[ 
$(document).ready(function(){
	
	// 메인으로 이동 클릭 시
	$("#mainBtn").click(function(){
		location.href="/";
	});
	
	// 로그인 클릭 시
	$("#loginBtn").click(function(){
		location.href="/login/loginform";
	});
	
});

//]]>
</script>
	<div id="bodyWrap">
		<!--title-->
		<h3 class="cnts_title">
			<span>회원가입</span>
		</h3>
		<!--//title-->
		<!--join step-->
		<div class="email_step">
			<ul class="clearfix">
					<li class="step01">step01 이메일 인증</li>
					<li class="step02">step02 회원약관동의</li>
					<li class="step03">step03 회원정보 입력</li>
					<li class="step04 on">step04 가입완료</li>
			</ul>
		</div>
		<!--//join step-->
		<!--sub container-->
		<div class="sub_container">
			<div class="join_title">
				<p class="title">회원가입이 완료 되었습니다.</p>
				<p class="s_title">
					한섬통합몰의 회원이 되신 것을 축하드립니다.<br>입력하신 개인 정보는 <a
						href="/ko/mypage/personInfomationChangePWCheck"><em
						class="ft_point01">'마이페이지 &gt; 나의 정보관리 &gt; 개인정보변경'</em></a>에서 바로 수정
					가능합니다.
				</p>
			</div>
			<div class="btnwrap mt60">
				<input type="button" value="메인으로 이동" class="btn wt" id="mainBtn">
				<input type="button" value="로그인" class="btn gray mr0" id="loginBtn">
			</div>
		</div>
		<!--//sub container-->
	</div>
	
	<!-- footer.jsp include -->
	<%@include file="../includes/footer.jsp"%>
</body>
</html>