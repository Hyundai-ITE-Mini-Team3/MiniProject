<!-- 상품 리스트 페이지 (작성자: 신동근) -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 리스트 페이지</title>
<link rel="stylesheet" type="text/css"
	href="/resources/css/product.css?after">
</head>

<script>
	function test(link, ccolorcode) {
		//console.log("ccolorcode: " + ccolorcode);
		//console.log("link: " + link);
		location.href = link + ccolorcode;
	}
	
</script>

<body>
	<%@include file="../../views/includes/header.jsp"%>
	<div id="bodyWrap" class="products">
		<!-- 클롭 모나코 팝업 -->
		<div id="mainPopwrap1"></div>
		<!-- 클롭 모나코 팝업 -->
		<!--title-->
		<!-- #1141 - 카테고리 개편(카테고리/브랜드 Navigation) -->
		<!-- ${requestScope['javax.servlet.forward.servlet_path']} -->
		<!-- ${result[0].cmdedium }  -->
		<!-- ${colorList[0].ccolorimage } -->
		
		<!-- url 받아오기 -->
		<c:set var="url" value="${requestScope['javax.servlet.forward.servlet_path']}"/>
		<c:set var="cmedium" value="${result[0].cmdedium }"/>
		<c:set var="csmall" value="${result[0].csmall }"/>
		
		
		<h3 class="cnts_title ou1804">
			
			<span> <!-- 정상 브랜드 카테고리 목록 -->
			 	<a href="/product/${result[0].clarge }"
				onclick="GA_Event('카테고리_리스트','카테고리','라이프스타일')">
					<c:if test="${result[0].clarge eq 'lifestyle'}">라이프스타일</c:if>  
				</a> 
				<c:if test="${fn:contains(url, '/product/lifestyle/' += cmedium)}">
					<img
						src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
						alt="location arr">
					<a href="/product/${result[0].clarge }/${result[0].cmdedium}"
						onclick="GA_Event('카테고리_리스트','카테고리','홈')"> 
						<c:if test="${result[0].cmdedium eq 'home'}">홈</c:if>  
						<c:if test="${result[0].cmdedium eq 'bath'}">배스</c:if> 
						<c:if test="${result[0].cmdedium eq 'kitchen'}">키친</c:if> 
						<c:if test="${result[0].cmdedium eq 'desk'}">데스크</c:if>
						<c:if test="${result[0].cmdedium eq 'kids'}">키즈</c:if> 
						<c:if test="${result[0].cmdedium eq 'pet'}">펫</c:if>  
					</a>
				</c:if>
				
				
				
				
				<c:if test="${fn:contains(url, '/product/lifestyle/' += cmedium += '/'+= csmall)}">
					<img
						src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
						alt="location arr">
					<a href="/product/${result[0].clarge }/${result[0].cmdedium}/${result[0].csmall}"
						onclick="GA_Event('카테고리_리스트','카테고리','패브릭')"> 
						<c:if test="${result[0].csmall eq 'fabric'}">패브릭</c:if>  
						<c:if test="${result[0].csmall eq 'bathroom_ware'}">욕실용품</c:if> 
						<c:if test="${result[0].csmall eq 'bowl'}">그릇</c:if> 
						<c:if test="${result[0].csmall eq 'stationery'}">문구</c:if>
						<c:if test="${result[0].csmall eq 'clothes'}">의류</c:if> 
						<c:if test="${result[0].csmall eq 'fashion'}">패션</c:if>  
					</a>
				</c:if>
				
				
			</span>
		
		</h3>
		<div class="adaptive_wrap">
			<form id="categoryListForm" action="/ko/c/categoryList">
				<input type="hidden" id="brandCode" name="brandCode" value="">
				<input type="hidden" id="brandName" name="brandName" value="">
				<input type="hidden" id="subBrand" name="subBrand" value="">
				<input type="hidden" name="categoryCode" value="ls011"> <input
					type="hidden" id="genderCategoryCode" name="genderCategoryCode"
					value=""> <input type="hidden" id="mainCateFlag"
					name="mainCateFlag" value=""> <input type="hidden"
					id="repProdColorCode" name="repProdColorCode" value=""> <input
					type="hidden" id="repSizeEnumCode" name="repSizeEnumCode" value="">
				<input type="hidden" id="priceOrderCode" name="priceOrderCode"
					value=""> <input type="hidden" id="productOrderCode"
					name="productOrderCode" value="NEW"> <input type="hidden"
					id="check4pmCode" name="check4pmCode" value=""> <input
					type="hidden" id="checkAtHomeCode" name="checkAtHomeCode" value="">
				<input type="hidden" id="checkSaleCode" name="checkSaleCode"
					value=""> <input type="hidden" id="checkQuickCode"
					name="checkQuickCode" value=""> <input type="hidden"
					id="checkDeliveryCode" name="checkDeliveryCode" value="">
				<!-- 뒤로가기 버튼 클릭시 페이징 기억용 -->
				<input type="hidden" id="rememberPage" name="rememberPage" value="">
				<input type="hidden" id="FKD-001_015" value="컬러 더보기">
				<!-- 컬러 더보기 -->

				<!-- sort wrap -->
				<div class="filterWrap hsDelivery1902">
					<ul class="clearfix float_left">
						<!-- 정상용 브랜드 검색 -->
						<li class="brand"><a href="javascript:void(0);"
							class="select" onclick="GA_Event('카테고리_리스트','정렬','브랜드');">브랜드<span
								class="ico_arr">arrow</span></a>
							<div class="list" style="display: none;">
								<ul id="category_brand_chip">
									<li><input type="checkbox" id="brand_ck1"
										onclick="GA_Event('카테고리_리스트','정렬','TIME');setOnlineShopBrand(this, 'BR01');"><label
										for="brand_ck1" id="BR01">TIME</label></li>
									<li><input type="checkbox" id="brand_ck2"
										onclick="GA_Event('카테고리_리스트','정렬','MINE');setOnlineShopBrand(this, 'BR02');"><label
										for="brand_ck2" id="BR02">MINE</label></li>
									<li><input type="checkbox" id="brand_ck3"
										onclick="GA_Event('카테고리_리스트','정렬','LANVIN COLLECTION');setOnlineShopBrand(this, 'BR19');"><label
										for="brand_ck3" id="BR19">LANVIN COLLECTION</label></li>
									<li><input type="checkbox" id="brand_ck4"
										onclick="GA_Event('카테고리_리스트','정렬','SYSTEM');setOnlineShopBrand(this, 'BR03');"><label
										for="brand_ck4" id="BR03">SYSTEM</label></li>
									<li><input type="checkbox" id="brand_ck5"
										onclick="GA_Event('카테고리_리스트','정렬','SJSJ');setOnlineShopBrand(this, 'BR04');"><label
										for="brand_ck5" id="BR04">SJSJ</label></li>
									<li><input type="checkbox" id="brand_ck6"
										onclick="GA_Event('카테고리_리스트','정렬','TIME HOMME');setOnlineShopBrand(this, 'BR06');"><label
										for="brand_ck6" id="BR06">TIME HOMME</label></li>
									<li><input type="checkbox" id="brand_ck7"
										onclick="GA_Event('카테고리_리스트','정렬','SYSTEM HOMME');setOnlineShopBrand(this, 'BR07');"><label
										for="brand_ck7" id="BR07">SYSTEM HOMME</label></li>
									<li><input type="checkbox" id="brand_ck8"
										onclick="GA_Event('카테고리_리스트','정렬','the CASHMERE');setOnlineShopBrand(this, 'BR08');"><label
										for="brand_ck8" id="BR08">the CASHMERE</label></li>
									<li><input type="checkbox" id="brand_ck9"
										onclick="GA_Event('카테고리_리스트','정렬','LÄTT');setOnlineShopBrand(this, 'BR31');"><label
										for="brand_ck9" id="BR31">LÄTT</label></li>
									<li><input type="checkbox" id="brand_ck10"
										onclick="GA_Event('카테고리_리스트','정렬','OBZEE');setOnlineShopBrand(this, 'BR43');"><label
										for="brand_ck10" id="BR43">OBZEE</label></li>
									<li><input type="checkbox" id="brand_ck11"
										onclick="GA_Event('카테고리_리스트','정렬','O&amp;#039;2nd');setOnlineShopBrand(this, 'BR45');"><label
										for="brand_ck11" id="BR45">O'2nd</label></li>
									<li><input type="checkbox" id="brand_ck12"
										onclick="GA_Event('카테고리_리스트','정렬','CLUB MONACO');setOnlineShopBrand(this, 'BR44');"><label
										for="brand_ck12" id="BR44">CLUB MONACO</label></li>
									<li><input type="checkbox" id="brand_ck13"
										onclick="GA_Event('카테고리_리스트','정렬','oera');setOnlineShopBrand(this, 'BR61');"><label
										for="brand_ck13" id="BR61">oera</label></li>
									<li><input type="checkbox" id="brand_ck14"
										onclick="GA_Event('카테고리_리스트','정렬','BALLY');setOnlineShopBrand(this, 'BR21');"><label
										for="brand_ck14" id="BR21">BALLY</label></li>
									<li><input type="checkbox" id="brand_ck15"
										onclick="GA_Event('카테고리_리스트','정렬','LANVIN PARIS');setOnlineShopBrand(this, 'BR20');"><label
										for="brand_ck15" id="BR20">LANVIN PARIS</label></li>
									<li><input type="checkbox" id="brand_ck16"
										onclick="GA_Event('카테고리_리스트','정렬','3.1 Phillip Lim');setOnlineShopBrand(this, 'BR41');"><label
										for="brand_ck16" id="BR41">3.1 Phillip Lim</label></li>
									<li><input type="checkbox" id="brand_ck17"
										onclick="GA_Event('카테고리_리스트','정렬','ROCHAS');setOnlineShopBrand(this, 'BR37');"><label
										for="brand_ck17" id="BR37">ROCHAS</label></li>
									<li><input type="checkbox" id="brand_ck18"
										onclick="GA_Event('카테고리_리스트','정렬','TOM GREYHOUND');setOnlineShopBrand(this, 'BR15');"><label
										for="brand_ck18" id="BR15">TOM GREYHOUND</label></li>
									<li><input type="checkbox" id="brand_ck19"
										onclick="GA_Event('카테고리_리스트','정렬','FOURM THE STORE');setOnlineShopBrand(this, 'BR35');"><label
										for="brand_ck19" id="BR35">FOURM THE STORE</label></li>
									<li><input type="checkbox" id="brand_ck20"
										onclick="GA_Event('카테고리_리스트','정렬','FOURM STUDIO');setOnlineShopBrand(this, 'BR30');"><label
										for="brand_ck20" id="BR30">FOURM STUDIO</label></li>
									<li><input type="checkbox" id="brand_ck21"
										onclick="GA_Event('카테고리_리스트','정렬','FOURM MEN&amp;#039;S LOUNGE');setOnlineShopBrand(this, 'BR32');"><label
										for="brand_ck21" id="BR32">FOURM MEN'S LOUNGE</label></li>
									<li><input type="checkbox" id="brand_ck22"
										onclick="GA_Event('카테고리_리스트','정렬','MUE');setOnlineShopBrand(this, 'BR16');"><label
										for="brand_ck22" id="BR16">MUE</label></li>
									<li><input type="checkbox" id="brand_ck23"
										onclick="GA_Event('카테고리_리스트','정렬','H : SCENE');setOnlineShopBrand(this, 'BR47');"><label
										for="brand_ck23" id="BR47">H : SCENE</label></li>
									<li><input type="checkbox" id="brand_ck24"
										onclick="GA_Event('카테고리_리스트','정렬','Liquides Perfume Bar');setOnlineShopBrand(this, 'BR62');"><label
										for="brand_ck24" id="BR62">Liquides Perfume Bar</label></li>
								</ul>
							</div></li>
						<li class="color"><a href="#" class="select"
							onclick="GA_Event('카테고리_리스트','정렬','색상');">색상<span
								class="ico_arr">arrow</span></a>
							<div class="list list_item4" style="display: none;">
								<ul class="color_chip clearfix" id="category_color_chip">
									<li><a href="javascript:setRepProdColorCode('BEIGE')"
										style="background: #fae7c4;"
										onclick="GA_Event('카테고리_리스트','정렬','BEIGE');">BEIGE</a></li>
									<li><a href="javascript:setRepProdColorCode('BLACK')"
										style="background: #000000;"
										onclick="GA_Event('카테고리_리스트','정렬','BLACK');">BLACK</a></li>
									<li><a href="javascript:setRepProdColorCode('BLUE')"
										style="background: #0f45bc;"
										onclick="GA_Event('카테고리_리스트','정렬','BLUE');">BLUE</a></li>
									<li class="mr0"><a
										href="javascript:setRepProdColorCode('BROWN')"
										style="background: #673915;"
										onclick="GA_Event('카테고리_리스트','정렬','BROWN');">BROWN</a></li>
									<li><a href="javascript:setRepProdColorCode('BURGUNDY')"
										style="background: #741313;"
										onclick="GA_Event('카테고리_리스트','정렬','BURGUNDY');">BURGUNDY</a></li>
									<li><a href="javascript:setRepProdColorCode('CAMEL')"
										style="background: #876c41;"
										onclick="GA_Event('카테고리_리스트','정렬','CAMEL');">CAMEL</a></li>
									<li><a href="javascript:setRepProdColorCode('GOLD')"
										style="background: #ffc733;"
										onclick="GA_Event('카테고리_리스트','정렬','GOLD');">GOLD</a></li>
									<li class="mr0"><a
										href="javascript:setRepProdColorCode('GREEN')"
										style="background: #0f6f0e;"
										onclick="GA_Event('카테고리_리스트','정렬','GREEN');">GREEN</a></li>
									<li><a href="javascript:setRepProdColorCode('GREY')"
										style="background: #444445;"
										onclick="GA_Event('카테고리_리스트','정렬','GREY');">GREY</a></li>
									<li><a href="javascript:setRepProdColorCode('IVORY')"
										style="background: #fff8d9;"
										onclick="GA_Event('카테고리_리스트','정렬','IVORY');">IVORY</a></li>
									<li><a href="javascript:setRepProdColorCode('KHAKI')"
										style="background: #465626;"
										onclick="GA_Event('카테고리_리스트','정렬','KHAKI');">KHAKI</a></li>
									<li class="mr0"><a
										href="javascript:setRepProdColorCode('LAVENDER')"
										style="background: #9c81bb;"
										onclick="GA_Event('카테고리_리스트','정렬','LAVENDER');">LAVENDER</a></li>
									<li><a href="javascript:setRepProdColorCode('METAL')"
										style="background: #9d9fa2;"
										onclick="GA_Event('카테고리_리스트','정렬','METAL');">METAL</a></li>
									<li><a href="javascript:setRepProdColorCode('MINT')"
										style="background: #95d0ab;"
										onclick="GA_Event('카테고리_리스트','정렬','MINT');">MINT</a></li>
									<li><a href="javascript:setRepProdColorCode('MULTI')"
										style="background: #534741;"
										onclick="GA_Event('카테고리_리스트','정렬','MULTI');">MULTI</a></li>
									<li class="mr0"><a
										href="javascript:setRepProdColorCode('NAVY')"
										style="background: #061836;"
										onclick="GA_Event('카테고리_리스트','정렬','NAVY');">NAVY</a></li>
									<li><a href="javascript:setRepProdColorCode('OLIVE')"
										style="background: #5d682d;"
										onclick="GA_Event('카테고리_리스트','정렬','OLIVE');">OLIVE</a></li>
									<li><a href="javascript:setRepProdColorCode('ORANGE')"
										style="background: #ee6423;"
										onclick="GA_Event('카테고리_리스트','정렬','ORANGE');">ORANGE</a></li>
									<li><a href="javascript:setRepProdColorCode('PINK')"
										style="background: #ea589b;"
										onclick="GA_Event('카테고리_리스트','정렬','PINK');">PINK</a></li>
									<li class="mr0"><a
										href="javascript:setRepProdColorCode('PURPLE')"
										style="background: #833b95;"
										onclick="GA_Event('카테고리_리스트','정렬','PURPLE');">PURPLE</a></li>
									<li><a href="javascript:setRepProdColorCode('RED')"
										style="background: #ec1e24;"
										onclick="GA_Event('카테고리_리스트','정렬','RED');">RED</a></li>
									<li><a href="javascript:setRepProdColorCode('SILVER')"
										style="background: #c0c0c0;"
										onclick="GA_Event('카테고리_리스트','정렬','SILVER');">SILVER</a></li>
									<li><a href="javascript:setRepProdColorCode('SKY')"
										style="background: #a2d6f3;"
										onclick="GA_Event('카테고리_리스트','정렬','SKY');">SKY</a></li>
									<li class="mr0"><a
										href="javascript:setRepProdColorCode('VIOLET')"
										style="background: #4c2b7b;"
										onclick="GA_Event('카테고리_리스트','정렬','VIOLET');">VIOLET</a></li>
									<li><a href="javascript:setRepProdColorCode('WHITE')"
										class="wt" style="background: #ffffff;"
										onclick="GA_Event('카테고리_리스트','정렬','WHITE');">WHITE</a></li>
									<li><a href="javascript:setRepProdColorCode('YELLOW')"
										style="background: #ffea0a;"
										onclick="GA_Event('카테고리_리스트','정렬','YELLOW');">YELLOW</a></li>
								</ul>
							</div></li>
						<li class="size"><a href="#" class="select"
							onclick="GA_Event('카테고리_리스트','정렬','사이즈')">사이즈<span
								class="ico_arr">arrow</span></a>
							<div class="list list_item3" style="display: none;">
								<ul class="size_chip clearfix" id="category_size_chip">
									<li><a href="javascript:setRepSizeEnumCode('XXXS')"
										onclick="GA_Event('카테고리_리스트','정렬','XXXS');">XXXS</a></li>
									<li><a href="javascript:setRepSizeEnumCode('XXS')"
										onclick="GA_Event('카테고리_리스트','정렬','XXS');">XXS</a></li>
									<li class="mr0"><a
										href="javascript:setRepSizeEnumCode('XS')"
										onclick="GA_Event('카테고리_리스트','정렬','XS');">XS</a></li>
									<li><a href="javascript:setRepSizeEnumCode('S')"
										onclick="GA_Event('카테고리_리스트','정렬','S');">S</a></li>
									<li><a href="javascript:setRepSizeEnumCode('M')"
										onclick="GA_Event('카테고리_리스트','정렬','M');">M</a></li>
									<li class="mr0"><a
										href="javascript:setRepSizeEnumCode('L')"
										onclick="GA_Event('카테고리_리스트','정렬','L');">L</a></li>
									<li><a href="javascript:setRepSizeEnumCode('XL')"
										onclick="GA_Event('카테고리_리스트','정렬','XL');">XL</a></li>
									<li><a href="javascript:setRepSizeEnumCode('XXL')"
										onclick="GA_Event('카테고리_리스트','정렬','XXL');">XXL</a></li>
									<li class="mr0"><a
										href="javascript:setRepSizeEnumCode('XXXL')"
										onclick="GA_Event('카테고리_리스트','정렬','XXXL');">XXXL</a></li>
									<li><a href="javascript:setRepSizeEnumCode('XXXXL')"
										onclick="GA_Event('카테고리_리스트','정렬','XXXXL');">XXXXL</a></li>
									<li><a href="javascript:setRepSizeEnumCode('FREE')"
										onclick="GA_Event('카테고리_리스트','정렬','FREE');">FREE</a></li>
									<li class="mr0"><a
										href="javascript:setRepSizeEnumCode('ETC')"
										onclick="GA_Event('카테고리_리스트','정렬','ETC');">ETC</a></li>
								</ul>
							</div></li>
						<li class="price"><a href="#" class="select"
							onclick="GA_Event('카테고리_리스트','정렬','가격');">가격<span
								class="ico_arr">arrow</span></a>
							<div class="list" style="display: none;">
								<ul>
									<li><input type="checkbox" id="price_ck1"
										onclick="GA_Event('카테고리_리스트','정렬','￦100,000 이하');setPriceOrderCode(this, '1')">
										<label for="price_ck1" id="lable_ck1"> ￦100,000 이하</label></li>
									<li><input type="checkbox" id="price_ck2"
										onclick="GA_Event('카테고리_리스트','정렬','￦100,000 ~ ￦300,000');setPriceOrderCode(this, '2')">
										<label for="price_ck2" id="lable_ck2">￦100,000 ~
											￦300,000</label></li>
									<li><input type="checkbox" id="price_ck3"
										onclick="GA_Event('카테고리_리스트','정렬','￦300,000 ~ ￦500,000');setPriceOrderCode(this, '3')">
										<label for="price_ck3" id="lable_ck3">￦300,000 ~
											￦500,000</label></li>
									<li><input type="checkbox" id="price_ck4"
										onclick="GA_Event('카테고리_리스트','정렬','￦500,000 ~ ￦1,000,000');setPriceOrderCode(this, '4')">
										<label for="price_ck4" id="lable_ck4">￦500,000 ~
											￦1,000,000</label></li>
									<li><input type="checkbox" id="price_ck5"
										onclick="GA_Event('카테고리_리스트','정렬','￦1,000,000 이상');setPriceOrderCode(this, '5')">
										<label for="price_ck5" id="lable_ck5">￦1,000,000 이상</label></li>
								</ul>
							</div></li>

						<li class="sortby"><a href="#" class="select"
							onclick="GA_Event('카테고리_리스트','정렬','정렬순');">정렬순<span
								class="current">신상품</span><span class="ico_arr">arrow</span></a>
							<div class="list" style="display: none;">
								<ul>
									<li><a
										href="javascript:setProductOrderCode('NEW', '신상품');"
										onclick="GA_Event('카테고리_리스트','정렬','신상품');">신상품</a></li>
									<li><a
										href="javascript:setProductOrderCode('SALES', '판매순');"
										onclick="GA_Event('카테고리_리스트','정렬','판매순');">판매순</a></li>
									<li><a
										href="javascript:setProductOrderCode('HIGH', '고가순');"
										onclick="GA_Event('카테고리_리스트','정렬','고가순');">고가순</a></li>
									<li><a
										href="javascript:setProductOrderCode('LOW', '저가순');"
										onclick="GA_Event('카테고리_리스트','정렬','저가순');">저가순</a></li>
									<li><a
										href="javascript:setProductOrderCode('REVIEW', '평점순');"
										onclick="GA_Event('카테고리_리스트','정렬','상품평순');">평점순</a></li>
								</ul>
							</div></li>
						<li class="prd_list_filter1810 sale_filter">
							<div class="input_wrap">
								<input type="checkbox" id="checkSale" name="checkSale"
									onclick="setCheckSaleCode();GA_Event('카테고리_리스트','정렬','SALE');"
									style="margin: 3px 10px 0 0;"><label for="checkSale"
									id="checkSale" style="color: #ff0000;">SALE</label>
							</div>
						</li>
						<li class="prd_list_filter1810 delivery" style="display: none">
							<!-- 딜리버리 190219 -->
							<div class="input_wrap">
								<input type="checkbox" id="checkDelivery" name="checkDelivery"
									onclick="sethsDeliveryCode();GA_Event('카테고리_리스트','정렬','한섬딜리버리');"><label
									for="checkDelivery" id="hsDelivery">한섬딜리버리</label>
							</div> <img
							src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/ico_quest.png"
							alt="한섬딜리버리란?" class="tlt" onmouseover="onMouseOverRecommend();"
							onmouseout="onMouseOutRecommend();">
							<div class="rmd_pb_popup" style="display: none;">
								<p>4PM, 퀵배송이 가능합니다.</p>
								<span class="box_arr"></span>
							</div>
						</li>
						<li class="btn"><a href="javascript:reset();"
							onclick="GA_Event('카테고리_리스트','정렬','초기화');">초기화</a><a
							href="javascript:gubunSearch(1);"
							onclick="GA_Event('카테고리_리스트','정렬','적용');">적용</a></li>
					</ul>
					<div class="items_count float_right">
						<span class="num">${result.size() }</span> <span>전체</span>
					</div>
				</div>
			</form>
			<div class="items_list cate_item4" id="listContent" style="display:block;">
				<ul class="clearfix" id="listBody">
					<c:forEach items="${result }" var="product" varStatus="loop">
						<!-- c:forEach를 break사용하듯이 씀 -->
						<c:set var="doneLoop" value="false"/>
						<c:forEach items="${colorGroupByPID }" var="colorGroup">
							<c:if test="${not doneLoop }">
								<!-- 조건문을 통해 colorGroup의 pid가 product의 pid와 같으면 반복문 빠져나옴-->
								<c:if test="${product.pid eq colorGroup.pid}">
									<c:set var="colorCode" value="${colorGroup.ccolorcode }"/>
									<c:set var="doneLoop" value="true"/>
								</c:if>
							</c:if>
						</c:forEach>
					
						<c:choose>
							<c:when test="${loop.count % 4 !=0}">
								<li>
									<div class="item_box">
										<a href="/product/${product.csmall }/detail?pid=${product.pid}&ccolorcode=${colorCode}" class="item_info1"
											onclick="setEcommerceData('0', 'CATEGORY');"> <span
											class="item_img"> <img src="/resources/img/product/${product.csmall }/${product.pid }.jpg?ccolorcode=ff" id="T01_IMG_0"
												alt="<c:out value="${product.pname }"/>" targetcode=""
												class="respon_image"
												onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'">
												<img src="/resources/img/product/${product.csmall }/${product.pid }-sub.jpg" id="T02_IMG_0"
												alt="<c:out value="${product.pname }"/>" targetcode=""
												class="respon_image on"
												onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'"
												style="display: none; opacity: 1;"> <input
												type="hidden" id="newImage1_0" value=""> <input
												type="hidden" id="newImage2_0" value="">
										</span> <span class="item_size" id="itemsize_0"
											style="display: none; height: 9.64602px; padding-top: 6.67699px; margin-top: 0px; padding-bottom: 6.67699px; margin-bottom: 0px;">
												<div id="" style="display: none">
													<span>FR</span>
												</div>
												<div id="" style="display: none">
													<span>FR</span>
												</div>
												<div id="">
													<span>FR</span>
												</div>
										</span>
										</a> <a href="/product/${product.csmall }/detail?pid=${product.pid}&ccolorcode=${colorCode}"
											class="item_info2"
											onclick="setEcommerceData('0', 'CATEGORY');"> <span
											class="brand"></span> <span class="title"><c:out
													value="${product.pname }" /></span> <span class="price"><span
												id="price_FL2C1HLV034LRN_BG"><span>₩<fmt:formatNumber value="${product.pprice}" pattern="#,###" /></span></span></span> <span class="flag">
												<span class="product">new</span> 
												<!-- <span class="review1902 ch1904">183</span> -->
										</span>
										</a>
										
										 <div class="color_more_wrap">
											<c:forEach items="${colorList }" var="color" varStatus="colorLoop">

												<c:if test="${color.pid eq product.pid}">
													<a href="javascript:chgColorChip(0, 'FL2C1HLV034LRN_BG')"
														class="cl wt"
														style="background: url('${color.ccolorimage}');"
														onclick="test('/product/${product.csmall }/detail?pid=${product.pid}&ccolorcode=', '${color.ccolorcode}');"></a>
												</c:if>

											</c:forEach>
										</div>
										<a href="javascript:addWishListClick('FL2C1HLV034LRN');"
											class="add_wishlist " id="wish_FL2C1HLV034LRN"
											onclick="GA_Category('wish', $(this));brazeLogCustomEvent('0');"
											data-value="FL2C1HLV034LRN_BG">위시리스트 담기</a>
									</div>
								</li>
							</c:when>

							<c:when test="${loop.count % 4 ==0}">
								<li class="mr1m">
									<div class="item_box">
										<a href="/product/${product.csmall }/detail?pid=${product.pid}&ccolorcode=${colorCode}" class="item_info1"
											onclick="setEcommerceData('0', 'CATEGORY');"> <span
											class="item_img"> <img src="/resources/img/product/${product.csmall }/${product.pid }.jpg" id="T01_IMG_0"
												alt="<c:out value="${product.pname }"/>" targetcode=""
												class="respon_image"
												onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'">
												<img src="/resources/img/product/${product.csmall }/${product.pid }-sub.jpg" id="T02_IMG_0"
												alt="<c:out value="${product.pname }"/>" targetcode=""
												class="respon_image on"
												onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'"
												style="display: none; opacity: 1;"> <input
												type="hidden" id="newImage1_0" value=""> <input
												type="hidden" id="newImage2_0" value="">
										</span> <span class="item_size" id="itemsize_0"
											style="display: none; height: 9.64602px; padding-top: 6.67699px; margin-top: 0px; padding-bottom: 6.67699px; margin-bottom: 0px;">
												<div id="" style="display: none">
													<span>FR</span>
												</div>
												<div id="" style="display: none">
													<span>FR</span>
												</div>
												<div id="">
													<span>FR</span>
												</div>
										</span>
										</a> <a href="/product/${product.csmall }/detail?pid=${product.pid}&ccolorcode=${colorCode}"
											class="item_info2"
											onclick="setEcommerceData('0', 'CATEGORY');"> <span
											class="brand"></span> <span class="title"><c:out
													value="${product.pname }" /></span> <span class="price"><span
												id="price_FL2C1HLV034LRN_BG"><span>₩<fmt:formatNumber value="${product.pprice}" pattern="#,###" /></span></span></span> <span class="flag">
												<span class="product">new</span> 
												<!-- <span class="review1902 ch1904">183</span> -->
										</span>
										</a>
										<div class="color_more_wrap">
											<c:forEach items="${colorList }" var="color" varStatus="colorLoop">
												<c:if test="${color.pid eq product.pid}">
													<a href="javascript:chgColorChip(0, 'FL2C1HLV034LRN_BG')"
														class="cl wt"
														style="background: url('${color.ccolorimage}');"
														onclick="test('/product/${product.csmall }/detail?pid=${product.pid}&ccolorcode=', '${color.ccolorcode}');"></a>
												</c:if>
											</c:forEach>
										</div>
										
										
										<a href="javascript:addWishListClick('FL2C1HLV034LRN');"
											class="add_wishlist " id="wish_FL2C1HLV034LRN"
											onclick="GA_Category('wish', $(this));brazeLogCustomEvent('0');"
											data-value="FL2C1HLV034LRN_BG">위시리스트 담기</a>
									</div>
								</li>
							</c:when>
						</c:choose>
					</c:forEach>
				</ul>
			</div>
			<!-- //items list -->
			<!-- paging -->
			<div class="paging" style="display: block;">
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
						<!-- 이전 버튼 -->
						<li class="paginate_button previous"><a
							href="${url }?pageNum=${pageMaker.startPage - 1}&amount=${pageMaker.cri.amount}">Previous</a></li>
					</c:if>
					 <c:forEach var="num"
							begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
							<c:if test="${pageMaker.cri.pageNum eq num}">
								<li class="paginate_button"><a href="${url }?pageNum=${num}&amount=${pageMaker.cri.amount}"
									class="pageBtn  on  " pagenum="${num }" style="color:#be9e7c;">${num }</a></li>
							</c:if>
							<c:if test="${pageMaker.cri.pageNum ne num}">
								<li class="paginate_button"><a href="${url }?pageNum=${num}&amount=${pageMaker.cri.amount}"
									class="pageBtn  on  " pagenum="${num }">${num }</a></li>
							</c:if>
						</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<!-- 다음 버튼 -->
						<li class="paginate_button next"><a
							href="${url }?pageNum=${pageMaker.endPage +1}&amount=${pageMaker.cri.amount}">Next</a></li>
					</c:if>
				</ul>
			</div>
			<!-- //paging -->

			<div class="sh_result none" id="searchResult_None"
				style="display: none;">조건에 맞는 상품 정보가 없습니다.</div>
		</div>
		-->
		<!-- 상품 정렬 태그쪽 end -->
		
		</div>
	</div>



	<div id="criteoVariable">
			<script type="text/javascript">window.criteo_q = window.criteo_q || [];window.criteo_q.push({ event: "setAccount", account: 24596 },{ event: "setHashedEmail", email: getCookie("criteoEmail")},{ event: "setSiteType", type: "d" },{ event: "viewList", item: ["CS2C3HLV012LHY","FL2C1HLV034LRN","FL2C7HLV008LRN"]});</script>
		</div>
	</div>
	<%@include file="../../views/includes/footer.jsp"%>
</body>
<style>
.paginate_button{
	display: inline;

}
.paginate_button a{
	padding: 10px;
}
</style>
</html>