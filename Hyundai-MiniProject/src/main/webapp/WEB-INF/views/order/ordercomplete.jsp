<!-- 주문 완료 페이지 (작성자: 박주영) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- header_ver2 include -->
<jsp:include page="../includes/header_ver2.jsp">
	<jsp:param name="title" value="주문 완료" />
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
	
	// 주문조회 클릭 시
	$("#mypageBtn").click(function(){
		location.href="/mypage/mypage";
	});
	
});

//]]>
</script>
<!-- bodyWrap -->
<div id="bodyWrap">
	<!--title-->
	<h3 class="cnts_title cnts_tlt1807">
		<span>주문완료</span>
	</h3>
	<!-- sub_container -->
	<div class="sub_container">
		<div class="join_title">
			<p class="title">주문이 완료 되었습니다.</p>
			<p class="s_title">
				요청하신 주문이 완료되었습니다.<br>주문내역은 <a href="/mypage/mypage"><em
					class="ft_point01">'마이페이지 &gt; 주문조회 '</em></a>에서 확인 가능합니다.
			</p>
		</div>
		<div class="btnwrap mt60">
			<input type="button" value="메인으로 이동" class="btn wt" id="mainBtn">
			<input type="button" value="주문조회" class="btn gray mr0" id="mypageBtn">
		</div>
	</div>
</div>
<!-- //sub_container -->
<!-- //bodyWrap -->


<!-- footer.jsp include -->
<%@include file="../includes/footer.jsp"%>

</body>
</html>