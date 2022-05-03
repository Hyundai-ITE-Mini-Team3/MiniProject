<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fabric 테스트 페이지</title>
<link rel="stylesheet" type="text/css"
	href="/resources/css/product.css?after">
</head>
<body>
	<%@include file="../../views/includes/header.jsp"%>
	<div id="bodyWrap" class="products">
		<!-- 클롭 모나코 팝업 -->
		<div id="mainPopwrap1"></div>
		<!-- 클롭 모나코 팝업 -->
		<!--title-->
		<!-- #1141 - 카테고리 개편(카테고리/브랜드 Navigation) -->
		<h3 class="cnts_title ou1804">
			<span>
				<!-- 정상 브랜드 카테고리 목록 --> <a href="/ko/c/LS/"
				onclick="GA_Event('카테고리_리스트','카테고리','라이프스타일')"> 라이프스타일</a> <img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
				alt="location arr"> <a href="/ko/c/LS01/"
				onclick="GA_Event('카테고리_리스트','카테고리','홈')"> 홈</a> <img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
				alt="location arr"> <a href="javascript:void(0);"
				onclick="GA_Event('카테고리_리스트','카테고리','패브릭')"> 패브릭</a>
			</span>
		</h3>
		<!--  카테고리 개편 아울렛 -->
		<!--//title--> <!-- adaptive_wrap 시작부분 -->
		
		
		

		<div id="criteoVariable">
			<script type="text/javascript">window.criteo_q = window.criteo_q || [];window.criteo_q.push({ event: "setAccount", account: 24596 },{ event: "setHashedEmail", email: getCookie("criteoEmail")},{ event: "setSiteType", type: "d" },{ event: "viewList", item: ["CS2C3HLV012LHY","FL2C1HLV034LRN","FL2C7HLV008LRN"]});</script>
		</div>
	</div>
	<%@include file="../../views/includes/footer.jsp"%>
</body>
</html>