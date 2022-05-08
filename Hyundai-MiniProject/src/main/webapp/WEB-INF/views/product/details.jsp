<!-- 상품 상세정보 페이지 (작성자: 신동근) -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세정보</title>
<link rel="stylesheet" type="text/css"
	href="/resources/css/product.css?after">
</head>

<script>
	function test(link, ccolorcode) {
		//console.log("ccolorcode: " + ccolorcode);
		//console.log("link: " + link)
		location.href = link + ccolorcode;
	}
</script>

<body>
	<%@include file="../../views/includes/header.jsp"%>
	<div id="bodyWrap" class="item_detail">

		<div id="oneEventLayer"></div>

		<div class="adaptive_wrap">
			<div class="clearfix prd_detail1905" id="clearfix">
				<div class="clearfix image_view3">
					<a href="javascript:imageZoom()" id="btn_zoom" class="btn_zoom"
						onclick="GA_Event('상품_상세','크게보기','클릭')">크게보기</a>
					<!-- 버튼 클릭시 item_visual 에 zoom 클래스 추가 -->
					<!-- 2021.08.18 동영상 재생 수정, 상품 imageDivisionCode에 VOD가 있는 경우 동영상 url 세팅 -->
					<div class="image_view1" id="image_view1">
						<div class="item_visual" id="imageDiv" style="margin-top: 20px;">
							<ul>
								<li><img src="${colorCode[0].cimage1 }"
									class="respon_image" alt=""
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<li><img src="${colorCode[0].cimage2 }"
									class="respon_image" alt=""
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<li><img src="${colorCode[0].cimage3 }"
									class="respon_image" alt=""
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>



							</ul>
						</div>
					</div>
				</div>
				<script type="text/javascript" src="/_ui/desktop/common/js/wpay.js"></script>
				<script>
	var arkQuery = $.noConflict(true);
</script>

<script type="text/javascript">
//<![CDATA[
var stockOnlineStockpile = {};
var warehouseStockpile = {};

$(document).ready(function() {
	
	// 수량 증가 클릭했을 때 (박주영)
	$(document).on("click", '.right', function() {
		var qty = $(this).parents('.qty_sel').find('.mr0');

		qty.val(Number(qty.val()) + 1);
		$('.pamount').val(Number(qty.val()));
		$('.oamount').val(Number(qty.val()));
		
		var sumPrice = Number(${product.pprice}) * Number(qty.val());
		var totalPrice = sumPrice.toLocaleString();
		$('#sumPrice em').text(totalPrice);
	});

	// 수량 감소 클릭했을 때 (박주영)
	$(document).on("click", '.left', function() {
		var qty = $(this).parents('.qty_sel').find('.mr0');

		if (qty.val() == 1) {
			return;
		}
		qty.val(Number(qty.val()) - 1);
		$('.pamount').val(Number(qty.val()));
		$('.oamount').val(Number(qty.val()));
		
		var sumPrice = Number(${product.pprice}) * Number(qty.val());
		var totalPrice = sumPrice.toLocaleString();
		$('#sumPrice em').text(totalPrice);
	});
	
    swiperslideForLookbook();
    
   
});

function swiperslideForLookbook(){
	
	var slideBox_Idx = $('.sub-slide-zone .slide-box');
	var smallSwiperLeng = $('.sub-slide-zone .slide-box').length;
	var smallSlideArr = new Array();

	for(var i = 0; i < smallSwiperLeng; i++){
		var smallSlideLeng = $(slideBox_Idx[i]).find('.swiper-slide').length
		smallSlideArr.push(smallSlideLeng);
	}

	// 룩북보기 sub 배너 슬라이드 옵션
	var subSlideOption = {
		slidesPerView: 3,
		slidesPerGroup: 3,
		spaceBetween: 10,
		loop: true,
		loopFillGroupWithBlank: true,
		observer: true,
		observeParents: true,
		simulateTouch:false,
		navigation: {
			nextEl: '.swiper-button-next.sub-nav-right',
			prevEl: '.swiper-button-prev.sub-nav-left',
		},
	};
	
	// 룩북보기 sub 배너 슬라이드
	var cdNlb_sub_swiper = new Swiper('.sub-slide-zone .swiper-container', subSlideOption);
	
	for(var i = 0; i < smallSwiperLeng; i++){
		if( smallSlideArr[i] <= 2 ){	
			if(cdNlb_sub_swiper.length !== undefined && cdNlb_sub_swiper.length > 0){				
				$(cdNlb_sub_swiper[i].$el).parent().addClass('destroy');
				cdNlb_sub_swiper[i].destroy();
			}else{
				$(cdNlb_sub_swiper.$el).parent().addClass('destroy');
				cdNlb_sub_swiper.destroy();
			}
		}
	}
	
	
	// 룩북보기 title 배너 슬라이드 옵션
	var titleSlideOption = {
		slidesPerView: 1,
		slidesPerGroup: 1,
		spaceBetween: 0,
		loop: true,
		simulateTouch:false,
		navigation: {
			nextEl: '.swiper-button-next.tt-nav-right',
			prevEl: '.swiper-button-prev.tt-nav-left',
		},
		pagination: {
			el: '.swiper-pagination.tt-nav-page',
			clickable: true,
		},
		on: {
			slideChange: function() {
				var $subSlide = $('.detail-pg-lookbook-aside-box .sub-slide-zone .slide-box');
				var slideIndex = this.realIndex;
				
				//console.log(slideIndex);
			
				$subSlide.hide();
				$($subSlide[slideIndex]).show();
		
			}
			/* ,slideChangeTransitionStart: function(){
				// 202010623 auto height 기능 추가
				var slide_Wrap = $(".title-slide-zone .swiper-wrapper");
				var target_Height = $(this.$wrapperEl).find('.swiper-slide-active img').height();

				slide_Wrap.height(target_Height);
			}, */
		}
	};
	
	
	if($(".cd-n-lb-tab a").attr("href") == "#cd-n-lb-tab-02"){
		
		var ttSlideBox_Idx = $('.title-slide-zone .swiper-wrapper'); // [0, 1]
		var ttSwiperLeng = $('.title-slide-zone .swiper-slide').length;
		
		var small_new_slide = document.querySelector('.sub-slide-zone .swiper-container').swiper;
		if (small_new_slide != null) small_new_slide.destroy();
		
		var cdNlb_sub_swiper_new = new Swiper('.sub-slide-zone .swiper-container', subSlideOption);
		var cdNlb_tt_swiper = new Swiper('.title-slide-zone .swiper-container', titleSlideOption);
		
		var $subSlide = $('.detail-pg-lookbook-aside-box .sub-slide-zone .slide-box');
		
		if( ttSwiperLeng <= 1 ){
			if(cdNlb_tt_swiper.length !== undefined && cdNlb_tt_swiper.length > 0){				
				$(cdNlb_tt_swiper[i].$el).parent().addClass('destroy');
				cdNlb_tt_swiper[i].destroy();
			}else{
				$(cdNlb_tt_swiper.$el).parent().addClass('destroy');
				cdNlb_tt_swiper.destroy();
			}
			
			// title slide가 하나일 경우 sub-slide show
			$($subSlide[0]).show();
			
		}
		
		
		
	} 
	
	
	
	
	// 함께코디한 상품 & 룩북보기 tab
	$(".related_evt .cd-n-lb-tab").find("a").off().on("click", function(e){
		var $this = $(this);
		var $all_tab_nav = $this.parents(".cd-n-lb-tab").find("li");
		var $tab_contents = $this.parents(".related_evt").find(".cd-n-lb-content-box");
		var id = $this.attr("href");
		var tabIndex = $this.parent().index();

		e.preventDefault();
		$all_tab_nav.removeClass("on");
		$this.parent().addClass("on");
		$tab_contents.hide();
		$(id).show();

		var thisTab = $(this).parent('li').index();

		if ( thisTab === 0 ) {
			var title_new_slide = document.querySelector('.title-slide-zone .swiper-container').swiper;
			var small_new_slide = document.querySelector('.sub-slide-zone .swiper-container').swiper;
			if (title_new_slide != null) title_new_slide.destroy();
			if (small_new_slide != null) small_new_slide.destroy();
		}else {
			var ttSlideBox_Idx = $('.title-slide-zone .swiper-wrapper'); // [0, 1]
			var ttSwiperLeng = $('.title-slide-zone .swiper-slide').length;
			
			var small_new_slide = document.querySelector('.sub-slide-zone .swiper-container').swiper;
			if (small_new_slide != null) small_new_slide.destroy();
			
			var cdNlb_sub_swiper_new = new Swiper('.sub-slide-zone .swiper-container', subSlideOption);
			var cdNlb_tt_swiper = new Swiper('.title-slide-zone .swiper-container', titleSlideOption);

			if( ttSwiperLeng <= 1 ){
				if(cdNlb_tt_swiper.length !== undefined && cdNlb_tt_swiper.length > 0){				
					$(cdNlb_tt_swiper[i].$el).parent().addClass('destroy');
					cdNlb_tt_swiper[i].destroy();
				}else{
					$(cdNlb_tt_swiper.$el).parent().addClass('destroy');
					cdNlb_tt_swiper.destroy();
				}
			}
			
			
			
		}
	});
}


function fnSharePin(sUrl){
	var sImg = "http://newmedia.thehandsome.com/FL/2C/SS/FL2C1HLV034LRN_BG_C01.jpg";
	var sTxt = "[the CASHMERE] [RITTEN] 도어 매트";
	
	if(sImg.indexOf("_C01") > 0) {
		sImg = sImg.replace("_C01", "_W01");
	}
	
	var href = "http://www.pinterest.com/pin/create/button/?url="+sUrl+"&media="+sImg+"&description="+encodeURIComponent(sTxt);
	var a = window.open(href, 'pinterest', 'width=800, height=500');
	if ( a ) {
		a.focus();
	}
}

function matchItemSlider(){
	var widthLi = $("#referencesListContent").width() / 3;
	var productTotal = $("#referencesListContent .slides li").size();
	if(productTotal <= 3) {
		$("#referencesControls .prev").hide();
		$("#referencesControls .next").hide();
		$("#referencesListContent ul").removeClass("slides");
		$("#referencesListContent > ul li").css("margin-right","10px");
	}
	var mySlider = $("#referencesListContent .slides").bxSlider({
		mode:"horizontal",
		speed:500,
		pager:false,
		moveSlides:1,
		slideWidth:widthLi,
		minSlides:3,
		maxSlides:3,
		slideMargin:10,
		auto:false,
		autoHover:false,
		controls:false,
		adaptiveHeight:true,
		adaptiveHeightSpeed:10
	});
	$("#referencesControls .prev").on("click",function(){
		mySlider.goToPrevSlide();
		return false;
	});
	$("#referencesControls .next").on("click",function(){
		mySlider.goToNextSlide();
		return false;
	});
	$(".rmd_pb .tlt").mouseenter(function(){
		$("#productEctTab .rmd_pb_popup").show();
	});
	$(".rmd_pb .tlt").mouseleave(function(){
		$("#productEctTab .rmd_pb_popup").hide();
	});

};

function addHidden(ptag, hname, hvl) {
    
    if($("#"+hname).length >0){
        $("#"+hname).remove();
    }
    return $('<input/>').attr('type'    , 'hidden')
                        .attr('id'      , hname)
                        .attr('name'    , hname)
                        .attr('value'   , hvl)
                        .appendTo(ptag);
}
//]]>
</script>
<script type="text/javascript">
//장바구니 추가 (박주영)
function addToCart() {
	$("#addToCartForm").submit();
}

// 바로 주문 (박주영)
function order() {
	$("#orderForm1").submit();
}
</script>
				<div class="item_detail_info float_right" id="contentDiv"
					style="margin-top: 20px; top: 0px; left: 699px;">
					<div class="info">
						<div class="info_sect">
							<h4 class="item_name">
								<div class="brand-name">
									<a href="javascript:fn_goCategori('br08')"
										onclick="GA_Detail('brand',$(this))">the CASHMERE</a>
								</div>
								<span class="name ko_fir_spel"> ${product.pname }<input
									type="hidden" id="brandName" value="the CASHMERE"> <input
									type="hidden" id="productName" value="[RITTEN] 도어 매트">
									<input type="hidden" id="productCode" value="FL2C1HLV034LRN_BG">
								</span>
							</h4>

							<div class="flag"></div>

							<p class="price">
								<span>₩<fmt:formatNumber value="${product.pprice}"
										pattern="#,###" /></span> <input type="hidden" id="productPrice"
									value="45000">
							</p>
							<!-- 상품추가설명 -->
							<!-- 20200914이후 추가 상품설명 (신) -->
							<div class="prod-detail-con-box">
								<strong class="number-code">상품품번 : <span>${product.pid }</span></strong>
								<div class="round-style">
									<p>${product.pdetail }</p>
								</div>
								<div class="fit-info">
									<p class="size-text"></p>
								</div>
							</div>
						</div>

						<!-- 더보기 -->
						<div class="info_sect">
							<div class="prod-detail-con-more">
								<button type="button" class="more-btn">
									더보기<i></i>
								</button>
								<div class="more-con-box">
									<ul>
										<li>- 제직, 코팅, 마감, 패킹의 모든 공정을 40년이 넘는 숙련된 노하우와 장신정신을 가진 국내
											제조사와 협업</li>
									</ul>
								</div>
							</div>
						</div>
						<script>
			            $(document).ready(function() {
			                $('.prod-detail-con-more').on('click', '.more-btn', function(){
			                    $('.more-con-box').slideToggle(function(){
			                        $(this).parent('.prod-detail-con-more').find('.more-btn').toggleClass('on');
			                    });
			                })
			            });
			        </script>
						<!-- //20200904 더보기 -->
						

						<div class="info_sect">
							<ul class="color_size_qty">
								<li><span class="title">색상</span>
									<div class="txt">
										<ul class="color_chip clearfix">
											<c:forEach items="${colorList }" var="color">
												<!-- <h3>${color.ccolorcode }</h3> -->
												<li id="FL2C1HLV034LRN_BC"><input type="hidden"
													class="colorNameVal" value=""> <a
													href="javascript:chgColorChip(0, 'FL2C1HLV034LRN_BG')"
													class="beige"
													style="background: url('${color.ccolorimage}')"
													onmouseover="setColorName('BRICK');"
													onmouseout="setColorName('');"
													onclick="test('/product/${product.csmall }/detail?pid=${product.pid}&ccolorcode=', '${color.ccolorcode}');"></a></li>
												<input type="hidden" id="colorName" value="">
											</c:forEach>
										</ul>
									</div> <span class="cl_name" id="colorNameContent"></span></li>
								<li><span class="title">사이즈<!-- 사이즈 --></span> <span
									class="txt">


										<div class="popwrap w_type_2" id="sizeQuickReferenceLayer"
											style="display: none;">
											<div class="pop_tltwrap2">
												<h3>사이즈조견표</h3>
											</div>
										</div>
										<ul class="size_chip clearfix sizeChipKo1901">
											<li id="FL2C1HLV034LRN_BG_FR"><a
												href="javascript:fn_detailProductAjax('FL2C1HLV034LRN_BG_FR')"
												onclick="GA_Event('상품_상세','사이즈','FR')">FR</a></li>
										</ul>
								</span> <!-- 2021.08.10 화장품 상품인 경우 사이즈조견표 영역 미노출 --> <a
									href="javascript:fn_popupSizeQuickReference();"
									class="etc_info" onclick="GA_Event('상품_상세','사이즈_조건표','클릭')">사이즈
										조견표</a> <!-- 재입고알림 툴팁 --> <!-- //재입고알림 툴팁 --></li>
								<li><span class="title">수량</span> <span class="txt">
										<span class="qty_sel num"> <a
											href="#;" class="left">이전 버튼</a>
											<input type="text" id="txtqty" title="수량" value="1"
											class="mr0" readonly="readonly"> <a
											href="#;" class="right">다음 버튼</a>
									</span>
								</span> <input type="hidden" id="erpWorkOrderNumber"> <input
									type="hidden" id="reserveSalesStockpile"> <input
									type="hidden" id="erpWorkOrderProdCode"></li>
							</ul>
						</div>
						<div class="total_price clearfix">
							<div class="title float_left" style="width: auto;">총 합계</div>
							<div class="pirce float_right">
								<!-- 				<div class="tlt_ship"> -->
								<!-- 				<div class="delch_box" style="display: none;"> -->
								<!-- 	       			<span class="arr">위치아이콘</span> -->
								<!-- 	                <div> -->
								<!-- 	                    <div id="exchangeDiv"></div> -->
								<!-- 	                </div> -->
								<!-- 	        	</div> -->
								<!-- 				</div> -->
								<span id="sumPrice">₩
								<em>
										<fmt:formatNumber value="${product.pprice}" pattern="#,###" />
								</em>
							</div>
						</div>
						<!-- st_receipt_wrap -->
						<!-- //st_receipt_wrap -->

						<!-- st_store_wrap -->
						<div class="st_store_wrap1807" id="storePickupChoice"
							style="display: none;">
							<div class="st_store">
								<dl>
									<dt>선택 매장</dt>
									<dd>
										<p id="storePickupChoiceName"></p>
										<p id="storePickupChoiceAddress"></p>
										<p id="storePickupChoiceTelephone"></p>
									</dd>
									<dt>수령 신청일</dt>
									<dd>
										<p id="storePickupChoiceDate"></p>
									</dd>
								</dl>
								<a href="javascript:fn_popupStorePickUp();" class="btn">매장변경</a>
							</div>
							<ul class="bul_sty01_li">
								<li>매장 수령 시 상품 사이즈 및 컬러 변경은 불가합니다.</li>
								<li>수령 가능 확정 일은 주문 완료 후, 수령 교환권을 SMS로 안내 드립니다.</li>
								<li>수령 확정일로부터 <span style="color: #fe4242;">1일 경과 후
										상품을 수령하지 않으시면 자동 취소</span> 됩니다.
								</li>
							</ul>
						</div>
						<!-- //st_store_wrap -->
						<div class="btnwrap clearfix"
							style="position: absolute; width: 473px; margin-top: 0px; margin-bottom: 0px;">
							<input type="button" value=""
								class="btn wishlist1803 float_left ml0  "
								onclick="addWishListClick();GA_Event('상품_상세','하단 고정 버튼','좋아요');">

							<div class="toast_popup">
								<p style="display: none; top: -4.12381px; opacity: 0.031172;">위시리스트에서
									삭제했습니다.</p>
							</div>
							<!-- 쇼핑백 전송 폼 (박주영) -->
							<form id="addToCartForm" name="addToCartForm"
								action="/cart/insert" method="post">
								<input type="hidden" name="pid" value="${product.pid}">
								<input type="hidden" name="pamount" class="pamount" value="1">
								<input type="hidden" name="psize" value="FR"> <input
									type="hidden" name="pcolor" value=" "> <input
									type="button" value="쇼핑백 담기"
									class="btn cart1803 float_left ml0" id="addToCartButton"
									onclick="addToCart()">
							</form>
							<!-- 주문 전송 폼 (박주영) -->
							<form id="orderForm1" name="orderForm1" action="/order/order" method="post">
								<input type="hidden" name="pid1" value="${product.pid}">
								<input type="hidden" name="oamount1" class="oamount" value="1">
								<input type="hidden" name="ssize1" value="FR">
								<input type="hidden" name="ccolorcode1" value=" ">
								<input type="hidden" name="pcount" value="1">
							</form>
							<input type="button" value="바로주문"
								class="btn order float_right mr0" id="addToCartBuyNowButton"
								onclick="order(true);">
						</div>

						<dl class="toggle_type1" style="margin-top: 80px;">
							<dt>
								<a href="javascript:void(0);" id="DETAIL_INFO_EVT"> 상품정보제공고시</a>
							</dt>
							
							<!-- 2021.08.10 화장품 상품인 경우 실측사이즈 영역 미노출 -->
							<dt>
								<a href="javascript:void(0);" id="REAL_SIZE_EVT">실측사이즈</a>
							</dt>
							<dt>
								<a href="#" id="DELI_RETURN_EVT">배송 및 교환/반품</a>
							</dt>
							<!--상품평 btn-->
							<div class="popup_customer_review1807" id="customerReview">
								<a href="#;" onclick="GA_Event('상품_상세','정보','상품평');">상품평(<span
									id="customerReviewCnt">0</span>)
									<div class="star_score1807" id="prodTotalStarScoreWrapper">
										<span class="cmt_star"> <!-- 별점에 따라 class명 변경 (star1, star2 ,star3, star4, star5) -->
											<span class="cmt_per" id="prodTotalStarScore"
											style="width: 100%;">별점</span>
										</span>
									</div>
								</a>
							</div>
							<!--//상품평 btn-->

						</dl>
					</div>

					<div class="clearfix mt30">
						<div class="btnwrap float_left">
							<a href="javascript:fn_popupProductQnA();" class="btn arrow mr0"
								onclick="GA_Event('상품_상세','Q&amp;A','클릭');">Q&amp;A(<span
								class="data" id="productQnACnt">0</span>)
							</a>
						</div>
						
					</div>

					<input type="hidden" id="viewExhibitionPageCode" value="">
					<input type="hidden" id="viewExhibitionPageName" value="">



					<!-- 코디상품 start -->
					<div class="related_evt">
						<div class="cd-n-lb-tab" id="codi_lookbook_tab"
							style="border-bottom: none">
							<ul>
							</ul>
						</div>
						<!-- box1 -->
						<div class="cd-n-lb-content-box" id="cd-n-lb-tab-01">
							<div class="matches_list together-codi-list"
								id="referencesListContent">
								<ul class="clearfix slides">
								</ul>
							</div>
						</div>
						<!-- //box1 -->

						<!-- box2 -->
						<div class="cd-n-lb-content-box" id="cd-n-lb-tab-02"
							style="display: block;">
							<div class="detail-pg-lookbook-aside-box">
								<!-- title-slide -->
								<div class="title-slide-zone">
									<div class="swiper-container">
										<div class="swiper-wrapper"></div>
									</div>
								</div>
								<!-- //title-slide -->

								<!-- sub-slide -->
								<div class="sub-slide-zone"></div>
								<!-- //sub-slide -->
							</div>
						</div>

						<!-- //box2 -->
					</div>
					<!--코디상품 end -->
				</div>

				<form id="PAY_FORM" method="post" accept-charset="euc-kr"></form>
			</div>
			<div class="product-detail-img"></div>
			<div class="matches_items" id="productDetailEtc">
				

	</div>
	<%@include file="../../views/includes/footer.jsp"%>
</body>
</html>