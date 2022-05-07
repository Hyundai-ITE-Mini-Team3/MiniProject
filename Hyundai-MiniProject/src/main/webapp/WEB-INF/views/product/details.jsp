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


/* function loadingOff(){
    //로딩바제거
    if($("#loadingBarDiv").length > 0){
        $(".layerLoading_bar").remove();
    }
    
	if($(".layerArea:last").length > 0){
	    $(".layerArea:last").remove();
    }
} */


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

						<!-- 20200904 추가 (더보기) -->
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
							<ul class="point_delivery">
								<li><span class="title">한섬마일리지</span> <span class="txt">2,250&nbsp;M&nbsp;(5%)</span>
								</li>
								
								<li><span class="title">H.Point</span> <span class="txt">45&nbsp;P&nbsp;(0.1%)</span>
									<a href="javascript:fn_cardBenefit();" id="cardbenef"
									class="etc_info" onclick="GA_Event('상품_상세','카드사_혜택안내','클릭');">카드사
										혜택안내</a>
									<div class="popwrap w_type_2" id="cardBenefit"
										style="display: none;">
										<div class="pop_tltwrap2">
											<h3>카드혜택안내</h3>
										</div>
										<div class="pop_cnt">
											<div class="card_benefits scroll-y">
												<div class="box">
													<div class="title clearfix">
														<p class="float_left">무이자 할부 행사</p>
														<!-- 
						<p class="float_left">무이자 할부 행사</p>
						<p class="float_right">행사기간 : 2015.08.01 ~ 2015.12.31</p>
						-->
													</div>
													<table class="cnt_type1" id="noInterestTable">
														<caption>무이자 할부 행사</caption>
														<colgroup>
															<col style="width: 155px">
															<col>
														</colgroup>
														<tbody>
															<tr>
																<th scope="row" name="신한카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																		orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																		alt="신한카드"></span></th>
																<td><b>신한카드 5만원이상 결제시 2~7개월 무이자 할부</b><br> 대상:
																	신한카드 전 회원<br> (신한BC 제외/ 법인,기프트,체크,선불카드 제외) <br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="삼성카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h3d/h4d/8814181613598.jpg"
																		orgurl="/medias/SAMSUNG.jpg?context=bWFzdGVyfHJvb3R8MzIxOXxpbWFnZS9qcGVnfGgzZC9oNGQvODgxNDE4MTYxMzU5OC5qcGd8ZGY1NDJiM2U1YWNmNGE5MTJkOTA0MTAxMDliMDc4ZjRlNTJmZjJlOTkxOTQzZTEwMDcxZWU2NGU2MjJmMWE2Mw"
																		alt="삼성카드"></span></th>
																<td><b>삼성카드 5만원이상 결제시 2~6개월 무이자 할부</b><br> 대상:
																	삼성카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="비씨카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hf2/h0d/8814181220382.jpg"
																		orgurl="/medias/BC.jpg?context=bWFzdGVyfHJvb3R8MjQ1OHxpbWFnZS9qcGVnfGhmMi9oMGQvODgxNDE4MTIyMDM4Mi5qcGd8MjZlZGU2ZGQyNDBkYzU5YmY2NWY0MDU3NDc1OTA0YWI5NmM4NDJjMDFiYjBiYjBjY2FhZjhmMzg3ZmE5NGU5Yw"
																		alt="비씨카드"></span></th>
																<td><b>비씨카드 5만원이상 결제시 2~7개월 무이자 할부</b><br> 대상:
																	비씨카드 전 회원<br>(법인,기프트,체크,선불카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="현대카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h5d/h7c/8814181711902.jpg"
																		orgurl="/medias/HYUNDAI.jpg?context=bWFzdGVyfHJvb3R8MjYxMHxpbWFnZS9qcGVnfGg1ZC9oN2MvODgxNDE4MTcxMTkwMi5qcGd8YmM5ZWY0ZjlhODlkMzdmMjYyNmY4NjQ4OWU5NWVjOWFlMGY4ODIwYzZlNjA0MjBlNDkwNWI0ZDllYThjMWE5Mw"
																		alt="현대카드"></span></th>
																<td><b>현대카드 5만원이상 결제시 2~7개월 무이자 할부</b><br> 대상:
																	현대카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="국민카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h2e/h34/8814181023774.jpg"
																		orgurl="/medias/kucmin.jpg?context=bWFzdGVyfHJvb3R8MzMwM3xpbWFnZS9qcGVnfGgyZS9oMzQvODgxNDE4MTAyMzc3NC5qcGd8MjM1YjEyN2I4OTljMGIxYzY3MjhjNDhkZWMyOTE5ODZjYmRiYWExNDdhOWZmNDQ3ZWNhNGIxZjYwYzk2MDA4Zg"
																		alt="국민카드"></span></th>
																<td><b>KB국민카드 5만원이상 결제시 2~7개월 무이자 할부</b><br>
																	대상: KB국민카드 전 회원<br> (NH농협, 국민BC 제외/ 법인,기프트,체크,선불카드
																	제외)<br> 2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="하나카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h60/hfb/8814054965278.gif"
																		orgurl="/medias/hanacard.gif?context=bWFzdGVyfHJvb3R8MTkzNXxpbWFnZS9naWZ8aDYwL2hmYi84ODE0MDU0OTY1Mjc4LmdpZnxhMGM5OWY0MDdhNDhjYzkwOTdiMzhkM2VmMDQ2YTI0NTAyNDBjZTljNTdiYzk4YWRhZmI0NjBhOWRhNzRiMGYw"
																		alt="하나카드"></span></th>
																<td><b>하나카드 5만원이상 결제시 2~8개월 무이자 할부</b><br> 대상:
																	하나카드 전 회원 (구 하나SK, 구 외환)<br> (하나BC카드
																	포함/법인,기프트,체크,선불카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="NH카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h8e/h36/8814181908510.jpg"
																		orgurl="/medias/NH.jpg?context=bWFzdGVyfHJvb3R8Mzk3OXxpbWFnZS9qcGVnfGg4ZS9oMzYvODgxNDE4MTkwODUxMC5qcGd8ZWVlNmY1OWM0NDdmMjg2M2Y4NGZkNDZjYThmOTVkMWNmY2QwYWNkOWI1ODc5YTdiMTc5MjY4MThiZTkzYzNmMw"
																		alt="NH카드"></span></th>
																<td><b>NH농협카드 5만원이상 결제시 2~8개월 무이자 할부</b><br>
																	대상: NH농협카드 전 회원<br> (NH농협BC카드 포함/ 법인,기프트,체크,선불카드
																	제외) <br> 2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="롯데카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hb3/h47/8814181810206.jpg"
																		orgurl="/medias/LOTTE.jpg?context=bWFzdGVyfHJvb3R8MzI3MXxpbWFnZS9qcGVnfGhiMy9oNDcvODgxNDE4MTgxMDIwNi5qcGd8MDliOThkNzA1ZDc2ZDE4MzZhYmUzYjI2MDMxZDk0NGU3OTVjYzBhYTA1MmMzMjAyZmE0Y2U4OTZlNTU3NDU2Zg"
																		alt="롯데카드"></span></th>
																<td><b>롯데카드 5만원이상 결제시 2~4개월 무이자 할부</b><br>
																	대상:롯데카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="box">
													<div class="title clearfix">
														<p class="float_left">부분 무이자 할부 행사</p>

													</div>
													<table class="cnt_type1" id="partNoInterestTable">
														<caption>부분 무이자 할부 행사</caption>
														<colgroup>
															<col style="width: 155px">
															<col>
														</colgroup>
														<tbody>
															<tr>
																<th scope="row" name="신한카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																		orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																		alt="신한카드"></span></th>
																<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																	고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="삼성카드" rowspan="2"><span
																	class="card"><img
																		src="http://image.thehandsome.com/sys_master/h3d/h4d/8814181613598.jpg"
																		orgurl="/medias/SAMSUNG.jpg?context=bWFzdGVyfHJvb3R8MzIxOXxpbWFnZS9qcGVnfGgzZC9oNGQvODgxNDE4MTYxMzU5OC5qcGd8ZGY1NDJiM2U1YWNmNGE5MTJkOTA0MTAxMDliMDc4ZjRlNTJmZjJlOTkxOTQzZTEwMDcxZWU2NGU2MjJmMWE2Mw"
																		alt="삼성카드"></span></th>
																<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																	고객 부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>

																<td><b>12개월 부분무이자</b><br> (5만원이상
																	결제시/1,2,3,4,5회차 고객 부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="비씨카드" rowspan="2"><span
																	class="card"><img
																		src="http://image.thehandsome.com/sys_master/hf2/h0d/8814181220382.jpg"
																		orgurl="/medias/BC.jpg?context=bWFzdGVyfHJvb3R8MjQ1OHxpbWFnZS9qcGVnfGhmMi9oMGQvODgxNDE4MTIyMDM4Mi5qcGd8MjZlZGU2ZGQyNDBkYzU5YmY2NWY0MDU3NDc1OTA0YWI5NmM4NDJjMDFiYjBiYjBjY2FhZjhmMzg3ZmE5NGU5Yw"
																		alt="비씨카드"></span></th>
																<td><b> 우리BC 10개월 부분무이자</b><br> (5만원이상
																	결제시/1,2,3회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>

																<td><b>우리BC 12개월 부분무이자</b><br> (5만원이상
																	결제시/1,2,3,4회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="국민카드" rowspan="2"><span
																	class="card"><img
																		src="http://image.thehandsome.com/sys_master/h2e/h34/8814181023774.jpg"
																		orgurl="/medias/kucmin.jpg?context=bWFzdGVyfHJvb3R8MzMwM3xpbWFnZS9qcGVnfGgyZS9oMzQvODgxNDE4MTAyMzc3NC5qcGd8MjM1YjEyN2I4OTljMGIxYzY3MjhjNDhkZWMyOTE5ODZjYmRiYWExNDdhOWZmNDQ3ZWNhNGIxZjYwYzk2MDA4Zg"
																		alt="국민카드"></span></th>
																<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3회차
																	고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>

																<td><b>12개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																	고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="하나카드" rowspan="2"><span
																	class="card"><img
																		src="http://image.thehandsome.com/sys_master/h60/hfb/8814054965278.gif"
																		orgurl="/medias/hanacard.gif?context=bWFzdGVyfHJvb3R8MTkzNXxpbWFnZS9naWZ8aDYwL2hmYi84ODE0MDU0OTY1Mjc4LmdpZnxhMGM5OWY0MDdhNDhjYzkwOTdiMzhkM2VmMDQ2YTI0NTAyNDBjZTljNTdiYzk4YWRhZmI0NjBhOWRhNzRiMGYw"
																		alt="하나카드"></span></th>
																<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3회차
																	고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>

																<td><b>12개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																	고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
															<tr>
																<th scope="row" name="신한카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																		orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																		alt="신한카드"></span></th>
																<td><b>12개월 부분무이자</b><br> (5만원이상
																	결제시/1,2,3,4,5회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.05.01&nbsp;~&nbsp;2022.05.31</td>
															</tr>
														</tbody>
													</table>
													<ul class="bul_sty01_li mt10">
														<li>무이자 할부 결제 시 카드사 포인트는 적립되지 않습니다.</li>
														<li>ARS 무이자 할부는 해당 카드사 ARS 번호로 사전 신청을 하신 경우에 한하여<br>무이자
															혜택이 적용됩니다.(ARS 부문 무이자 할부 포함)
														</li>
														<li>상기 부분 무이자 할부는 5만원 이상 결제 시 자동 적용되며, 결제창에는 무이자 표시가
															되지 않을 수 있습니다.</li>
														<li>법인 / 체크 / 선불 / 기프트 / 은행 계열 카드는 제외됩니다.</li>
														<li>고객 부담 수수료는 해당 카드사로 문의 바랍니다.</li>
														<li>본 행사는 카드사 사정에 따라 일부 내용이 변경 또는 중단될 수 있습니다.</li>
													</ul>
												</div>
											</div>
										</div>
										<a href="javascript:void(0);" class="btn_close"><img
											src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
											alt="닫기"></a>
									</div></li>

								<li><span class="title">배송비</span> <span class="txt">30,000원
										이상 무료배송 (실결제 기준)</span> <a href="javascript:fn_popupDelivery();"
									class="etc_info" onclick="GA_Event('상품_상세','배송안내','클릭');">배송안내</a>
									<div class="popwrap w_type_2" id="popupDelivery"
										style="display: none;">
										<div class="pop_tltwrap2">
											<h3>배송비안내</h3>
										</div>
										<div class="pop_cnt">
											<table class="cnt_type1">
												<caption>배송비안내</caption>
												<colgroup>
													<col style="width: 155px">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">배송기간</th>
														<td>평균 입금완료일 기준 2-4일 소요됩니다.<br>(토/일/공휴일 제외)
														</td>
													</tr>
													<tr>
														<th scope="row">배송비</th>
														<td>
															<ul class="bul_sty01_li">
																<li>30,000원 이상 결제 시 <em class="ft_point01">무료배송</em></li>
																<li>30,000원 미만 결제 시 <em class="ft_point01">2,500원</em></li>
															</ul>
															<p class="bul_sty02">도서산간 지역은 3,000원의 별도 배송비가 부과됩니다.</p>
															<p class="bul_sty02">쿠폰/바우처 할인금액 및 한섬마일리지/H.Point 사용을
																제외한 실결제금액 기준입니다.</p>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<a href="javascript:void(0);" class="btn_close"><img
											src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
											alt="닫기"></a>
									</div></li>
							</ul>
						</div>

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
									id="customerReviewCnt">184</span>)
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
								class="data" id="productQnACnt">5</span>)
							</a>
						</div>
						<div class="float_right">
							<!-- AddToAny BEGIN -->
							<div class="a2a_kit a2a_kit_size_32 a2a_default_style"
								style="line-height: 32px;">
								<a class="a2a_button_facebook"
									onclick="GA_Event('상품_상세','공유_SNS','FACEBOOK');"
									target="_blank" href="/#facebook" rel="nofollow noopener"><span
									class="a2a_svg a2a_s__default a2a_s_facebook"
									style="background-color: rgb(24, 119, 242);"><svg
											focusable="false" aria-hidden="true"
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
											<path fill="#FFF"
												d="M17.78 27.5V17.008h3.522l.527-4.09h-4.05v-2.61c0-1.182.33-1.99 2.023-1.99h2.166V4.66c-.375-.05-1.66-.16-3.155-.16-3.123 0-5.26 1.905-5.26 5.405v3.016h-3.53v4.09h3.53V27.5h4.223z"></path></svg></span><span
									class="a2a_label">Facebook</span></a> <a class="a2a_button_twitter"
									onclick="GA_Event('상품_상세','공유_SNS','TWITTER');" target="_blank"
									href="/#twitter" rel="nofollow noopener"><span
									class="a2a_svg a2a_s__default a2a_s_twitter"
									style="background-color: rgb(29, 155, 240);"><svg
											focusable="false" aria-hidden="true"
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
											<path fill="#FFF"
												d="M28 8.557a9.913 9.913 0 01-2.828.775 4.93 4.93 0 002.166-2.725 9.738 9.738 0 01-3.13 1.194 4.92 4.92 0 00-3.593-1.55 4.924 4.924 0 00-4.794 6.049c-4.09-.21-7.72-2.17-10.15-5.15a4.942 4.942 0 00-.665 2.477c0 1.71.87 3.214 2.19 4.1a4.968 4.968 0 01-2.23-.616v.06c0 2.39 1.7 4.38 3.952 4.83-.414.115-.85.174-1.297.174-.318 0-.626-.03-.928-.086a4.935 4.935 0 004.6 3.42 9.893 9.893 0 01-6.114 2.107c-.398 0-.79-.023-1.175-.068a13.953 13.953 0 007.55 2.213c9.056 0 14.01-7.507 14.01-14.013 0-.213-.005-.426-.015-.637.96-.695 1.795-1.56 2.455-2.55z"></path></svg></span><span
									class="a2a_label">Twitter</span></a> <a
									href="javascript:fnSharePin(&quot;http://www.thehandsome.com/ko/HANDSOME/LIFESTYLE/HOME/FABRIC/%5BRITTEN%5D-%EB%8F%84%EC%96%B4-%EB%A7%A4%ED%8A%B8/p/FL2C1HLV034LRN_BG&quot;);"
									class="pinterest"
									onclick="GA_Event('상품_상세','공유_SNS','PRINTEREST');"></a> <input
									type="hidden" id="url"
									value="http://www.thehandsome.com/ko/HANDSOME/LIFESTYLE/HOME/FABRIC/%5BRITTEN%5D-%EB%8F%84%EC%96%B4-%EB%A7%A4%ED%8A%B8/p/FL2C1HLV034LRN_BG">
								<div style="clear: both;"></div>
							</div>
							<script type="text/javascript">
var a2a_config = a2a_config || {};
a2a_config.num_services = 10;
var brandName =	"[" + $('#brandName').val() + "]";
var productName = $('.name').contents().first().text();
a2a_config.linkname = brandName + " " + productName;
a2a_config.linkurl = 'http://www.thehandsome.com/ko/HANDSOME/LIFESTYLE/HOME/FABRIC/%5BRITTEN%5D-%EB%8F%84%EC%96%B4-%EB%A7%A4%ED%8A%B8/p/FL2C1HLV034LRN_BG?lang=ko';
a2a_config.track_links = 'googl';
</script>
							<script type="text/javascript"
								src="//static.addtoany.com/menu/page.js"></script>
							<!-- AddToAny END -->

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