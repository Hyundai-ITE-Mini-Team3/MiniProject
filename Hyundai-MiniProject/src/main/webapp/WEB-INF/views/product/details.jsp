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

					<!--동영상 삽입 180710-->
					<!--//동영상 삽입 180710-->
					<!--  2021.08.18 동영상 재생 영역  -->
				</div>
				<script type="text/javascript" src="/_ui/desktop/common/js/wpay.js"></script>
				<!-- 품절상품포함 여부 -->
				<script type="text/javascript">
//<![CDATA[
var stockOnlineStockpile = {};
var warehouseStockpile = {};

$(document).ready(function() {
    cartQuantity = {};
    
    
    $(".btn_star_score li a").on("click", function(){
        $("#rating").val($(this).attr('value'));
    });
    
    $('#customerReview').click(function(){
        fn_popupCustomerReview();
    });
    
    $('#offlineQty').click(function(){
        fn_stockconfirm();
    });

    var productCode = $("#productCode").val();
    $.ajax({
        url: '/ko/p/review',
        type: "GET",
        data: {"productCode":productCode},
        success: function(data){
            var starWidth = 0;
            if(data.reviewList.results.length > 0){
	            starWidth = getStarScore(data.reviewAvg);
            }
            if(starWidth==0){
                $("#prodTotalStarScoreWrapper").css("display","none");
            }else{
                $("#prodTotalStarScore").css("width",starWidth+"%")
            }
        },
        error: function(xhr, Status, error) {
            var la = new layerAlert(error);
               la.confirmAction = function(){
                   return;
               };
        }
   });
    

		stockOnlineStockpile["FL2C1HLV034LRN_BG_FR"] = "5";
		warehouseStockpile["FL2C1HLV034LRN_BG_FR"] = "0";
	
	$(".btn_close").on("click", function(){
		hideProductLayer(); 
		$(".popwrap").hide();
	});	
	
	$('.toggle_type1>dt').click(function() {
		
		$(this).addClass('on');
		$(this).siblings('dt').removeClass('on');
		
		var beforeHeight = $(".toggle_type1").height();
		var afterHeight = 0;
		var scrolltop = $(window).scrollTop();
		
		var checkElement = $(this).next();
		
		if((checkElement.is('dd')) && (checkElement.is(':visible'))) {
			$(this).removeClass('on');
	 		checkElement.slideUp('fast', 
	 				function(){
	 					afterHeight = $(".toggle_type1").height();
// 	 					bodyScroll();
	 				});
	 		
		}
		var fitGuide = false;
		if((checkElement.is('dd')) && (!checkElement.is(':visible'))) {
		    var v_label = "";
		    var v_type = $(this).children().attr("id");
		    //21.11.03 상품상세 정보 영역 변경 관련 GA이벤트태깅 추가 및 변경
		    if(v_type == "NEW_DETAIL_INFO_EVT"){
		        v_label = "상품상세정보";
		    }else if(v_type == "DETAIL_INFO_EVT"){
		        if ('ko' == 'ko') {
		            v_label = "상품정보제공고시";
		        }else{
		            v_label = "상품상세정보";
		        }
		    }else if(v_type == "REAL_SIZE_EVT"){
                v_label = "실측사이즈";
            }else if(v_type == "DELI_RETURN_EVT"){
                v_label = "배송 및 반품";
            }else if(v_type == "FIT_GUIDE_EVT"){
                fitGuide = true;
            }
		    
		    if(!fitGuide) {
		        GA_Event('상품_상세','정보',v_label);
		    }
		    
			$('.toggle_type1>dd:visible').slideUp('fast');
			
			checkElement.slideDown('fast', 
	 				function(){
					afterHeight = $(".toggle_type1").height();
// 					bodyScroll();
				});
		}
		
		if(fitGuide) {
		    fitGuide_Swiper_Slide(1);
		}
		
		var bodyScroll = function(){
			
			$('body,html').animate({scrollTop:parseFloat(scrolltop + (beforeHeight - afterHeight))}, 
					function(){
						bodyReSize();
					}
			);
		}
		
		if($(this).next('dd').length == 0) {
			return true;
		} else {
			return false; 
		}      
	});
	
	if ( 'en' == 'ko' || 'zh' == 'ko' ) {
		showExchangeRate();
	}
	
	$("#restock_tlt").mouseover(function(){
// // 		showExchangeRate();
		$("#restock_delch_box").css("display","block");
	});
	
	$("#restock_tlt").mouseout(function(){
		$("#restock_delch_box").css("display","none");
	});
	
	if($('#referencesListContent ul:eq(0) > li').length > 3) {
		matchItemSlider();
	}else {
	    $(".related_evt .matches_list > ul > li").css("margin-right", "10px");
	}

	//타임옴므 실측사이즈
	if("BR08" == "BR06"){
		var checkShow = false;
		var checkCode = "FL2C1HLV034LRN";
		var checkLanguage = "ko";
		if(checkCode == "TH1H7WPC500M" || checkCode == "TH1I3WPC505M" || checkCode == "TH1H8WPC503M" || checkCode == "TH1HAWPC505M"  || checkCode == "TH1HAWPC505MP1" ){
			$(".timehomme_pants_fit").addClass("slim");
			$(".timehomme_pants_fit").removeClass("straight");
			$(".timehomme_pants_fit").removeClass("comfort");
			checkShow = true;			
		}else if(checkCode == "TH1H8WPC510M" || checkCode == "TH1H8WPC530M" || checkCode == "TH1H8WPC540M" || checkCode == "TH1HBWPC535M" || checkCode == "TH1HAWPC545M" || checkCode == "TH1HAWPC525M"  || checkCode == "TH1HAWPC525MP1" ){
			$(".timehomme_pants_fit").removeClass("slim");
			$(".timehomme_pants_fit").addClass("straight");
			$(".timehomme_pants_fit").removeClass("comfort");
			checkShow = true;			
		}
		
		if(checkShow){
			if(checkLanguage == "ko"){
				$(".timehomme_pants_fit").addClass("ko");
			}else if(checkLanguage == "en"){
				$(".timehomme_pants_fit").addClass("en");
			}else if(checkLanguage == "zh"){
				$(".timehomme_pants_fit").addClass("zh");
			}
			
			$(".timehomme_pants_fit").show();
		}
	}
	
	//at home,quick 배송지 변경
	$(".btn_chg").on("click",function(){
	    if($(this).parent().parent().attr("id") == "athome_svc"){
	        searchAddressLayer("streetname","streetnumber","postalcode");	        
	    }else if($(this).parent().parent().attr("id") == "quick_svc"){
	        searchAddressLayer("quickStreetname","quickStreetnumber","quickPostalcode");
	    }
	});
    
    // 예약주문 토스트팝업 190507
    /* if($("#erpWorkOrderProdCode").val() != "") {
        clearTimeout(toastPopupPreOrderInit);
        clearTimeout(toastPopupPreOrderAfter);
        clearTimeout(toastPopupPreOrderStop);
    }

    if("N" == "Y") {
        toastPopupPreOrder();
    } */
    
    
    
    
    
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


var popupOneclick
$(document).ready(function() {
	
})

function fn_oneClickProcess(){
	var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
	var productType = $('form[name=addToCartForm] input[name=productCodeType]').val();
	var qty = $("#txtqty").val();

	if(parseInt($("#productPrice").val()) == 0) {
		var la = new layerAlert('선택 상품은 일시적인 시스템 장애로 구매하실 수 없습니다.<br/>고객센터(1800-5700)로 문의주세요.');
		oneClickProcess = true;
		return;
	}
	if(productType != 'ApparelSizeVariantProduct'){
		var la = new layerAlert('사이즈를 선택해 주세요.');
		oneClickProcess = true;
		return;
	}

	if(qty < 1){
		var la = new layerAlert('productdetail.basket.errormag.qty');
		oneClickProcess = true;
		return;
	}

	if($("#storePickupCheck").is(":checked") || $("#athomeCheck").is(":checked") || $("#quickCheck").is(":checked")){
		var la = new layerAlert('퀵배송/매장수령은 배송특화 서비스로</br>원클릭 결제가 불가능합니다.');
		la.confirmAction = function(){
			return;
		};
		oneClickProcess = true;
		return;
	}

	var check4pmProcess = false;
	var check4pmOver = false;
	var vipDeliAvail = true;
	if($("#fourpmCheck").is(":checked")){
		vipDeliAvail = false;
		$("#deliveryKind").val("4pm");
		$.ajax({
			url: '/ko/shoppingbag/check4pm',
			type: "GET",
			data: $('form[name=addToCartForm]').serialize(),
			async : false,
			success: function(data){
				//data가 0 또는 4pm의 경우 담기
				if(data == "normal"){
					var scrollTop = $(document).scrollTop();
					var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 일반배송 상품이 담겨 있습니다. 쇼핑백에서 일반배송 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
					var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
					$(document).scrollTop(scrollTop);
					$(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
					la.confirmAction = function(){
						return;
					};
					check4pmProcess = true;
				}else if(data == "pm_over"){
					check4pmOver = true;
					$("#deliveryKind").val("");
				}else if(data == "store"){
					var scrollTop = $(document).scrollTop();
					var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 매장수령 상품이 담겨 있습니다. 쇼핑백에서 매장수령 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
					var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
					$(document).scrollTop(scrollTop);
					$(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
					la.confirmAction = function(){
						return;
					};
					check4pmProcess = true;
				}else if(data == "athome"){
					var scrollTop = $(document).scrollTop();
					var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 앳홈 상품이 담겨 있습니다. 쇼핑백에서 앳홈 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
					var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
					$(document).scrollTop(scrollTop);
					$(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
					la.confirmAction = function(){
						return;
					};
					check4pmProcess = true;
				}
			},
			error: function(xhr, Status, error) {
				var la = new layerAlert(error);
				la.confirmAction = function(){
					return;
				};
			}
		});
	}

	if(check4pmProcess){
		$("#deliveryKind").val("");
		oneClickProcess = true;
		return false;
	}

	if(check4pmOver){
		var la = new layerAlert('오후{0}시 이후 주문시 일반배송으로 변경됩니다.');
		la.confirmAction = function(){
			return;
		};
	}

	$('form[name=addToCartForm] input[name=qty]').val(qty);
	$('form[name=addToCartForm] input[name=buyNowYn]').val(false);
	
    if("false" == "true" && "ko" == "ko"){
        NetFunnel_Action({action_id:"buy_now"},function(ev,ret){
            oneclickLoadingStart(vipDeliAvail);
        });
    }else{
        oneclickLoadingStart(vipDeliAvail);
    }
}

function oneclickLoadingStart(vipDeliAvail){
	 $("body").append('<div class="layerArea" id="oneclickPopupLayer"><div class="layerBg"></div></div>');

    var loadingHtml = "";
    loadingHtml += '<div class="layerLoading_bar" id="oneclickLoadingDiv" style="width: 100%;height: 100%;top:0; z-index: 102">';
    loadingHtml += '    <div class="ly_oneclick">';
    loadingHtml += '        <img src="http://cdn.thehandsome.com/pc/order/loading_spinner_007s_190827.gif" alt="loading">';
    loadingHtml += '                <p class="ly_ld_main" >최대할인 혜택을 계산 중 입니다</p>';
    loadingHtml += '                <p class="ly_ld_sub">최대할인 혜택을 원클릭결제에 자동 적용하여<br>';
    loadingHtml += '                   편리한 결제가 가능합니다</p>';
    loadingHtml += '    </div>';
    loadingHtml += '</div>';

    $("#oneclickPopupLayer").append(loadingHtml);
	
	
	var products ="";
    products +=$("#productCode").val();
    products +=","+ $("input[name=qty]").val();
    $.ajax({
    	url : '/checkout/oneclick?products='+products+'&vipDeliAvail='+vipDeliAvail ,
    	type : 'GET',
    	success : function(data){
    		$('#oneclickPopupLayer').append(data);
    	},
    	error : function(err){
    		console.log(err.responseText);
    	}
    })
    setEcommerceData("Checkout1(원클릭결제)");
    oneClickProcess = true;
}

function loadingOff(){
    //로딩바제거
    if($("#loadingBarDiv").length > 0){
        $(".layerLoading_bar").remove();
    }
    
	if($(".layerArea:last").length > 0){
	    $(".layerArea:last").remove();
    }
}

function oneClickTargetBlankPopup(wpayData){//원클릭결제 새창 팝업 2001
    WPAY.checkoutAuthSubmit(wpayData);
}


var starscore = 0;
function getStarScore(starscore){
    var average = starscore;
    var starWidth=0;
    if(1 <= average && average < 1.25){
        starWidth=20;
    } else if(1.25 <= average && average < 1.75){
        starWidth=30;
    } else if(1.75 <= average && average < 2.25){
        starWidth=40;
    } else if(2.25 <= average && average < 2.75){
        starWidth=50;
    } else if(2.75 <= average && average < 3.25){
        starWidth=60;
    } else if(3.25 <= average && average < 3.75){
        starWidth=70;
    } else if(3.75 <= average && average < 4.25){
        starWidth=80;
    } else if(4.25 <= average && average < 4.75){
        starWidth=90;
    } else if(4.75 <= average && average <= 5){
        starWidth=100;
    }
    return starWidth;
}

function setOneClick(){
    
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

/* 주문서간편결제 : 결제 인증 후 콜백
원클릭구매 : iframe 안에서 실행되기 때문에, target 을 _top으로 지정합니다
 */
var checkoutPaymentAuthCallback = function (resultCode, resultMsg, result) {
    console.log(document.cookie);
    switch(resultCode) {
	case "2406": // 쿠키정보가 없습니다.
		//layerWpayCookieSettingView();
		//WPAY.close();
		//window.parent.postMessage({layerClose:'layerClose'},'*');
		//window.parent.postMessage({inicisPopOpen:'inicisPopOpen'},'*');
		
		console.log("쿠키 정보가 없음");
		break;
	case "0000":	    
	    $("body").append('<div class="layerArea" id="productLayer"><div class="layerBg"></div></div>');
	    
	    $(".layerArea .layerBg").css('background','none');
	    
		// 토스트 팝업 추가
		var toastPopup = '<div class="pop_loading_oneclick200210" style="background:#444;width:290px;height:120px;position:fixed;top:30%;left:50%;margin-left:-145px;margin-top:-60px;z-index:9999;">';
		toastPopup += '<img src="http://cdn.thehandsome.com/_ui/handsomemobile/images/common/Spinner_1s_105px.png" alt="loading" style="display:block;width:32px;height:32px;margin:30px auto 15px auto;">';
		toastPopup += '<p style="color:#fff;text-align:center;">';
	    toastPopup += '<span style="background:url(\'http://cdn.thehandsome.com/pc/products/one_click_pay_w.png\') left 2px no-repeat;color:#fff;font-size:15px;padding-left:93px;">가 진행중입니다.</span>';
	    toastPopup += '</p>';
	    toastPopup += '</div>';
	        
		$("body").append(toastPopup);

	    //상품상세와 결제페이지 구분이 안되기 때문에 
	    //window.parent.postMessage({loadingShow:'loadingShow'},'*');
        
		var $PAY_FORM = $("#PAY_FORM");
		addHidden($PAY_FORM, 'wtid'	, result.wtid);
		
		$PAY_FORM.attr({
			'method': 'POST',
			'action': '/ko/inicis/inipaywpay/sop/response',
			'target': '_top'
		});
		
		$PAY_FORM.submit();
		break;
	default:
		new layerAlert(resultMsg);
		//WPAY.close();
		//window.parent.postMessage({layerClose:'layerClose'},'*');
		break;
	}
}



function addWishListProdClick(productBaseCode) {    
    
        var lc = new layerConfirm("로그인이 필요합니다", "확인", "취소");
        lc.cancleAction = function(){//취소 호출 펑션
            $("."+productBaseCode+"Like").each(function(index, ele){
       			$(ele).removeClass("on");
       		})
        };

        lc.confirmAction = function(){//확인 호출 펑션
            location.href = "/ko/member/login";
        };
    
    
    addWishListProd(productBaseCode);
}

function addWishListProd(productBaseCode){
    $.ajax({
         url: "/ko/wishlist/add-product-action",
         type: "GET",            
         data: {productCode: productBaseCode ,type: 'toggle'},
         success: function(msg){	 
        	 
			if(msg !== 'erroor1'){
				if(productBaseCode === 'FL2C1HLV034LRN_BG'){
        			$('.wishlist1803').toggleClass('on'); 
        		}
            	$('.' + productBaseCode + 'LIKE').each(function(index, ele){
            		$(ele).toggleClass('on'); 
            	})
         	}
 			
        	 
        	 
         }
    });
}


function chngColorChip(ele, sourceProd, targetProd) {
	
	var $this = $('#chipbtn_' + targetProd);
	var $thisChips = $this.closest('.we-codi-colorchip');
	//$thisChips.find('a').removeClass('on');
 
	$.ajax({
		url		: '/ko/product/reloadCoordiSize',
		type	: 'GET',
		datatype: 'json',
		data	: {
			'productcode'	: targetProd
		},
		success	: function(data) {
			var product = data.product;
			var images;
			
			var txtHtml = '';
			var lookbookTxtHtml = '';
			/* 가격변경 */
			var priceHtml = '';
			
			 priceHtml = product.price.formattedValue;
			
            if(priceHtml != ''){
				$('#prod_'+sourceProd+' .info_wrap .price').html(priceHtml);
            }
			
			if ( product.productImages != null ) {
				
				for ( var i=0; i<product.productImages.length; i++ ) {
					images = product.productImages[i];
					
					if ( images.imageDivisionCode.code === 'S01' ) {
						txtHtml = images.image.url;	
						break;
					}
				}
			}
			
			
			$(ele).parent().closest('#prod_'+sourceProd).find('img').attr('src', txtHtml);
			
			
		}
	});
	

}

// 210728 oera 신규 추가 S
function fn_popupOeraMileage(){ 
    //fn_parentLayer();
    $("#popupOeraMileage").show();
}

//211101 체험단 리뷰 추가 S
function fn_popupTesterReview(){ // 체험단 팝업
    if($("#testerReviewDiv").css("display") == "none"){
        testerReviewReset();
        viewPopup("#testerReviewDiv");
        GA_Event('상품_상세','정보','체험단');
    }
}

function testerReviewReset() { //팝업초기화
    if($('.review_more_1807 a').parents('.evaluation_view').hasClass('on')) {
        $('.review_more_1807 a').parents('.evaluation_view').removeClass('on');
    }
    $("#testerReviewDiv .paging .pageBtn:eq(0)").trigger("click");
}
// 211101 체험단 리뷰 추가 E

//]]>
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
										혜택안내</a> <script type="text/javascript">
$(document).ready(function(){
	
	
		fn_tableMerge($("#noInterestTable").attr("id"));
	
		fn_tableMerge($("#partNoInterestTable").attr("id"));
	
	
    $('.card img').each(function (){
        $(this).attr('src',cdnImgUrl($(this).attr('orgurl')));
    })
});

// CDN 이미지 URL로 변경
function cdnImgUrl(mediaUrl) {
    var rtnUrl = mediaUrl;
    try { 
        var searchText = 'context='
        var cdnDomain = 'http://image.thehandsome.com/sys_master/';
        rtnUrl = rtnUrl.substr(rtnUrl.indexOf(searchText)+searchText.length, rtnUrl.length);
        rtnUrl = decodeURIComponent(atob(rtnUrl)).split('|');
        if ( rtnUrl.length > 4 ) {
            rtnUrl = rtnUrl[4];
            rtnUrl = cdnDomain + rtnUrl;
        } else {
            rtnUrl = mediaUrl;
        }
    } catch (e) {
        console.log(e);
    }
    return rtnUrl;
}

function fn_tableMerge(id){
	
	var beforName = "";
	var mergeCnt = 1;
	var beforObj;
	
	$("#"+id+" th").each(function(){
		
		if(beforName == ""){
			beforName = $(this).attr("name");
			beforObj = $(this);
		}else if(beforName == $(this).attr("name")){
			mergeCnt = mergeCnt + 1;
			$(this).remove();
			beforObj.attr("rowspan", mergeCnt);
		}else{
			beforName = $(this).attr("name");
			beforObj = $(this);
			mergeCnt = 1;
		}
		
	});
}

</script>

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
													class="colorNameVal" value=""> <a href="javascript:chgColorChip(0, 'FL2C1HLV034LRN_BG')"
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
											<div class="pop_cnt">
												<div class="size_chart">
													<div class="tab_a m6" id="size_tab">
														<ul>
															<li><a href="#;" class="active">WOMEN<br>TOP
															</a></li>
															<li><a href="#;">WOMEN<br>BOTTOMS
															</a></li>
															<li><a href="#;">WOMEN<br>SHOES
															</a></li>
															<li><a href="#;">MEN<br>TOP
															</a></li>
															<li><a href="#;">MEN<br>BOTTOMS
															</a></li>
															<li><a href="#;">MEN<br>SHOES
															</a></li>
														</ul>
													</div>
													<div class="size_tab_container">
														<div>
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">XS</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																		<th scope="col">FREE</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="al_middle">
																		<th scope="row">TIME</th>
																		<td>76</td>
																		<td>82</td>
																		<td>88</td>
																		<td>94</td>
																		<td>90</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">MINE</th>
																		<td>76</td>
																		<td>82</td>
																		<td>88</td>
																		<td>94</td>
																		<td>90</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SYSTEM</th>
																		<td>76</td>
																		<td>82</td>
																		<td>88</td>
																		<td>-</td>
																		<td>90</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SJSJ</th>
																		<td>76</td>
																		<td>82</td>
																		<td>88</td>
																		<td>-</td>
																		<td>90</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row" rowspan="2">KOREA</th>
																		<td>85</td>
																		<td>90</td>
																		<td>95</td>
																		<td>100</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<td>44</td>
																		<td>55</td>
																		<td>66</td>
																		<td>77</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">US</th>
																		<td>2</td>
																		<td>4</td>
																		<td>6</td>
																		<td>8</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">EUROPE</th>
																		<td>34</td>
																		<td>36</td>
																		<td>38</td>
																		<td>40</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CHINA</th>
																		<td>160/<br>80A
																		</td>
																		<td>165/<br>84A
																		</td>
																		<td>170/<br>88A
																		</td>
																		<td>175/<br>92A
																		</td>
																		<td>-</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 19%">
																	<col style="width: 19%">
																	<col style="width: 19%">
																	<col style="width: 19%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">XS</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<th scope="row">TIME</th>
																		<td>61</td>
																		<td>64</td>
																		<td>67</td>
																		<td>70</td>
																	</tr>
																	<tr>
																		<th scope="row">MINE</th>
																		<td>61</td>
																		<td>64</td>
																		<td>67</td>
																		<td>70</td>
																	</tr>
																	<tr>
																		<th scope="row">SYSTEM</th>
																		<td>61</td>
																		<td>64</td>
																		<td>67</td>
																		<td>-</td>
																	</tr>
																	<tr>
																		<th scope="row">SJSJ</th>
																		<td>61</td>
																		<td>64</td>
																		<td>67</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row" rowspan="2">KOREA</th>
																		<td>24</td>
																		<td>26</td>
																		<td>28</td>
																		<td>30</td>
																	</tr>
																	<tr>
																		<td>44</td>
																		<td>55</td>
																		<td>66</td>
																		<td>77</td>
																	</tr>
																	<tr>
																		<th scope="row">US</th>
																		<td>2</td>
																		<td>4</td>
																		<td>6</td>
																		<td>8</td>
																	</tr>
																	<tr>
																		<th scope="row">EUROPE</th>
																		<td>34</td>
																		<td>36</td>
																		<td>38</td>
																		<td>40</td>
																	</tr>
																	<tr>
																		<th scope="row">CHINA</th>
																		<td>160/<br>66A
																		</td>
																		<td>165/<br>68A
																		</td>
																		<td>170/<br>70A
																		</td>
																		<td>175/<br>72A
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 19%">
																	<col style="width: 19%">
																	<col style="width: 19%">
																	<col style="width: 19%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">XS</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<th scope="row">TIME</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">MINE</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">SYSTEM</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">SJSJ</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">KOREA</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">US</th>
																		<td>6</td>
																		<td>6.5</td>
																		<td>7</td>
																		<td>7.5</td>
																	</tr>
																	<tr>
																		<th scope="row">EUROPE</th>
																		<td>36</td>
																		<td>36.5</td>
																		<td>37</td>
																		<td>37.5</td>
																	</tr>
																	<tr>
																		<th scope="row">CHINA</th>
																		<td>36</td>
																		<td>37</td>
																		<td>38</td>
																		<td>39</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																		<th scope="col">XL</th>
																		<th scope="col">XXL</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="al_middle">
																		<th scope="row">TIME<br>HOMME
																		</th>
																		<td>90</td>
																		<td>95</td>
																		<td>100</td>
																		<td>105</td>
																		<td>110</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SYSTEM<br>HOMME
																		</th>
																		<td>90</td>
																		<td>95</td>
																		<td>100</td>
																		<td>105</td>
																		<td>110</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CLUB<br>MONACO
																		</th>
																		<td>XS</td>
																		<td>S</td>
																		<td>M</td>
																		<td>L</td>
																		<td>XL</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">KOREA</th>
																		<td>90</td>
																		<td>95</td>
																		<td>100</td>
																		<td>105</td>
																		<td>110</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">US</th>
																		<td>36</td>
																		<td>38</td>
																		<td>40</td>
																		<td>42</td>
																		<td>44</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">EUROPE</th>
																		<td>46</td>
																		<td>48</td>
																		<td>50</td>
																		<td>52</td>
																		<td>54</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CHINA</th>
																		<td>165/<br>80-90
																		</td>
																		<td>170/<br>96-98
																		</td>
																		<td>175/<br>108-110
																		</td>
																		<td>180/<br>118-122
																		</td>
																		<td>185/<br>126-130
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">S</th>
																		<th scope="col" colspan="2">M</th>
																		<th scope="col" colspan="2">L</th>
																		<th scope="col" colspan="2">XL</th>
																		<th scope="col" colspan="2">XXL</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="al_middle">
																		<th scope="row">TIME<br>HOMME
																		</th>
																		<td>74</td>
																		<td colspan="2">78</td>
																		<td>82</td>
																		<td>84</td>
																		<td>86</td>
																		<td>88</td>
																		<td>90</td>
																		<td>92</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SYSTEM<br>HOMME
																		</th>
																		<td>74</td>
																		<td colspan="2">78</td>
																		<td>82</td>
																		<td>84</td>
																		<td>86</td>
																		<td>88</td>
																		<td>90</td>
																		<td>92</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CLUB<br>MONACO
																		</th>
																		<td>29</td>
																		<td>30</td>
																		<td>31</td>
																		<td>32</td>
																		<td>33</td>
																		<td colspan="2">34</td>
																		<td colspan="2">36</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">KOREA</th>
																		<td>29</td>
																		<td colspan="2">30</td>
																		<td>32</td>
																		<td>33</td>
																		<td>34</td>
																		<td>35</td>
																		<td>35.5</td>
																		<td>36</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">US</th>
																		<td>44T</td>
																		<td colspan="2">46T</td>
																		<td colspan="2">48T</td>
																		<td colspan="2">50T</td>
																		<td colspan="2">52T</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">EUROPE</th>
																		<td>44</td>
																		<td colspan="2">46</td>
																		<td colspan="2">48</td>
																		<td colspan="2">50</td>
																		<td colspan="2">52</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CHINA</th>
																		<td>44</td>
																		<td colspan="2">46</td>
																		<td colspan="2">48</td>
																		<td colspan="2">50</td>
																		<td colspan="2">52</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 23%">
																	<col style="width: 23%">
																	<col style="width: 23%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND<br>SIZE
																		</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="al_middle">
																		<th scope="row">TIME HOMME</th>
																		<td>260</td>
																		<td>270</td>
																		<td>280</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SYSTEM HOMME</th>
																		<td>260</td>
																		<td>270</td>
																		<td>280</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">KOREA</th>
																		<td>260</td>
																		<td>270</td>
																		<td>280</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">US</th>
																		<td>8</td>
																		<td>9</td>
																		<td>10</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">EUROPE</th>
																		<td>41</td>
																		<td>42</td>
																		<td>43.5</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CHINA</th>
																		<td>43</td>
																		<td>45</td>
																		<td>47</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
											<a href="javascript:void(0);" class="btn_close"><img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
												alt="닫기"></a>
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
											href="javascript:fn_qtySubtraction();" class="left">이전 버튼</a>
											<input type="text" id="txtqty" title="수량" value="1"
											class="mr0" readonly="readonly"> <a
											href="javascript:fn_qtyAdd();" class="right">다음 버튼</a>
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
								<span id="sumPrice">₩<fmt:formatNumber
										value="${product.pprice}" pattern="#,###" /></span>
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

							<!--190508 추가 -->
							<div class="toast_popup_pre_order1905">
								<!-- 토스트팝업 190507 -->
								<p>
									예약 주문이 가능한 옵션(컬러/사이즈)가 있습니다. <br>옵션 선택 후 배송 예정일을 확인해 주세요.
								</p>
								<span class="arr">위치아이콘</span>
							</div>
							<!--//190508 추가 -->

							<form id="addToCartForm" name="addToCartForm"
								action="/ko/HANDSOME/LIFESTYLE/HOME/FABRIC/%5BRITTEN%5D-%EB%8F%84%EC%96%B4-%EB%A7%A4%ED%8A%B8/p/FL2C1HLV034LRN_BG?categoryCode=ls011"
								method="post">
								<input type="hidden" maxlength="3" size="1" name="qty"
									class="qty"> <input type="hidden"
									name="productCodePost" value="FL2C1HLV034LRN_BG"> <input
									type="hidden" id="productCodeType" name="productCodeType"
									value="ApparelStyleVariantProduct"> <input
									type="hidden" id="stockCnt" value="0"> <input
									type="hidden" name="storeId" id="storeId" value=""> <input
									type="hidden" name="storePickupDate" id="storePickupDate"
									value=""> <input type="hidden" name="workOrder"
									id="workOrder" value=""> <input type="hidden"
									name="recommendProduct" id="recommendProduct" value="">
								<input type="hidden" name="deliveryKind" id="deliveryKind"
									value=""> <input type="hidden" name="streetname"
									id="streetname" value=""> <input type="hidden"
									name="streetnumber" id="streetnumber" value=""> <input
									type="hidden" name="postalcode" id="postalcode" value="">
								<input type="hidden" name="quickStreetname" id="quickStreetname"
									value=""> <input type="hidden" name="quickStreetnumber"
									id="quickStreetnumber" value=""> <input type="hidden"
									name="quickPostalcode" id="quickPostalcode" value=""> <input
									type="hidden" name="fourpmList" id="fourpmList"> <input
									type="hidden" name="athomeList" id="athomeList"> <input
									type="hidden" name="pickupList" id="pickupList"> <input
									type="hidden" name="quickList" id="quickList"> <input
									type="hidden" name="buyNowYn" id="buyNowYn" value="false">
								<input type="button" value="쇼핑백 담기"
									class="btn cart1803 float_left ml0" id="addToCartButton"
									onclick="addToCart();GA_Event('상품_상세','하단 고정 버튼','쇼핑백담기');">
								<div>
									<input type="hidden" name="CSRFToken"
										value="a87b802a-d35c-4766-bd1a-0ed22a77d14a">
								</div>
							</form>
							<input type="button" value="바로주문"
								class="btn order float_right mr0" id="addToCartBuyNowButton"
								onclick="GA_Event('상품_상세','하단 고정 버튼','바로주문');addToCart(true);">
						</div>

						<dl class="toggle_type1" style="margin-top: 80px;">
							<dt>
								<a href="javascript:void(0);" id="DETAIL_INFO_EVT"> 상품정보제공고시</a>
							</dt>
							<dd style="display: none;">
								<strong>상품품번 :</strong> FL2C1HLV034LRN<br> <strong>품목
									:</strong> 침구류/커튼<br> <strong>소재 :</strong> 폴리에스터<br> <strong>색상
									:</strong> BC(BRICK), BG(BEIGE), BL(BLUE), BR(BROWN), SR(STRIPE)<br>
								<strong>사이즈 :</strong> FR<br> <strong>제조국 :</strong> 한국<br>
								<strong>제조사 :</strong> RITTEN<br> <strong>제조연월 :</strong>
								202110<br> <br> <strong>품질보증기준</strong><br> 1. 본
								제품은 정부 고시 소비자 분쟁해결 기준에 의거 고객의 정당한 피해를 보상해드립니다. <br> - 원단
								불량, 부자재 불량, 봉제 불량, 사이즈 부정확, 부당 표시(미표시 및 부실표시) 및 소재 구성 부적합으로 인한
								세탁 사고 : 구입일로부터 1년 이내분은 무상수리, 교환, 구입가 환불함. (단, 봉제 불량은 1년 경과 후에도
								무상 수선 가능) <br> - 사이즈가 맞지 않거나 디자인, 색상 불만 제품 : 구입 후 7일 이내로서
								제품에 손상이 없는 경우 동일 가격, 동일 제품으로 교환 가능. <br> - 상하의 한 벌(세트/일착)인
								경우 한 쪽에만 이상이 있어도 한 벌(세트/일착)로 처리함. 단, 소재 및 디자인이 다른 경우에는 해당 의류만 교환
								가능. <br>2. 소비자 부주의에 의한 제품 훼손, 세탁 잘못으로 인한 변형 및 품질 보증기간(1년)이
								경과한 제품에 대해서는 보상의 책임을 지지 않으며, 수선 가능시에는 실비로 수선해드립니다. <br>3.
								제품에 이상이 있는 경우 바로 본사로 연락주시면 수선/교환/환불이 가능하나, 타업체(일반 수선실 등)에서 수선했을
								경우는 불가능합니다.<br>
								<br> <strong>세탁방법 및 취급 시 주의사항</strong><br> 세탁 시 변형 및
								변색의 우려가 있으므로 주의 하시기 바랍니다.<br>
								<br>
								<div style="margin-bottom: 20px;">
									<p style="float: left;">
										<strong>AS 책임자와 연락처</strong><br> ㈜한섬/1800-5700
									</p>
									<!-- 20200218 마크 추가 -->
									<div class="sft_ksdt"></div>
									<!-- // 20200218 마크 추가 -->
								</div>
								<br>
								<br> 위 내용은 상품정보제공 고시에 따라 작성되었습니다.
							</dd>
							<!-- 2021.08.10 화장품 상품인 경우 실측사이즈 영역 미노출 -->
							<dt>
								<a href="javascript:void(0);" id="REAL_SIZE_EVT">실측사이즈</a>
							</dt>
							<dd>
								<div class="ko realsize_img SZ12"></div>
								<p class="tit">기타</p>
								<p class="info1">50cm*70cm</p>
								<!-- info_tbl -->

								<!-- //info_tbl -->
								<!-- numlist -->
								<p class="info2">가로*세로</p>
								<br>
								<!-- //numlist -->
								<font color="red"> <strong> 원단, 측정방법에 따라 약간의 오차
										가능성이 있습니다.</strong>
								</font>

								<div class="timehomme_pants_fit" style="display: none"></div>
							</dd>
							<dt>
								<a href="#" id="DELI_RETURN_EVT">배송 및 교환/반품</a>
							</dt>
							<dd>
								<p class="tit">배송안내</p>
								<dl class="info_tbl">
									<dt>배송방식 :</dt>
									<dd>우체국택배, CJ대한통운, 부릉, 굿투럭</dd>
									<!-- 210728 oera 신규 추가  -->
									<dt>배송지역 :</dt>
									<dd>전국 (일부 지역 제외)</dd>
									<dt>배송정보 :</dt>
									<dd>평균 입금완료일 기준 2-4일 소요됩니다 (토/일/공휴일 제외)</dd>
									<dt>배송비 :</dt>
									<dd>
										실결제금액 기준 30,000원 이상 결제 시 무료배송<br>30,000원 미만 결제 시
										2,500원(기본 배송비)<br>* 실결제금액이란, 쿠폰/바우처 할인액 및 <br>&nbsp;
										한섬마일리지/H.Point 사용 금액을 제외한 금액입니다. <br>
										&nbsp;&nbsp;(e-money 사용은 실결제금액에 포함)<br>* 도서산간 지역은 3,000원의
										별도 배송비가 부과됩니다.<br>* 일부 도서지역은 도선료가 부가될 수 있습니다.
									</dd>
								</dl>
								<p class="tit mt20">교환 및 반품안내</p>
								<!-- info_tbl -->
								<dl class="info_tbl">
									<dt>교환/반품 기간 :</dt>
									<dd>상품 수령 후, 7일 이내</dd>
									<dt>교환절차 :</dt>
									<dd style="letter-spacing: -0.2px;">
										사이즈 및 상품불량 교환만 가능(색상교환 불가)하며 교환을 원하실 경우<br> 고객센터로 문의해주시기
										바랍니다. (교환 재고가 없을 경우, 환불로 안내예정)<br> - 교환은 배송비 입금 및 상품 입고
										확인 이후에 진행됩니다. <br> 화장품은 상품 불량만 교환 가능하며(상품 개봉 후 교환 불가),
										고객센터로<br> 문의해주시기 바랍니다.
										<!-- 210728 oera 신규 추가  -->
									</dd>
									<dt>반품절차 :</dt>
									<dd>
										[배송완료] 7일 이내에 마이페이지 주문/배송/취소/반품 메뉴에서<br> [반품신청] 버튼을 클릭 시
										가능합니다.
									</dd>
									<dt>교환/반품 배송비 :</dt>
									<dd style="letter-spacing: -0.4px;">
										배송비는 5,000원 이며(반품비는 주문시 배송비 결제 유무에 따라 변동)<br>상품 불량 등의 이유로
										교환/반품하실 경우, 배송비는 무료입니다.
									</dd>
									<dt>교환/반품 불가사유</dt>
									<dd>
										다음의 경우에는 교환/반품이 불가합니다.
										<ol class="numlist">
											<li><span class="num sum">-</span> <span class="txt">교환/반품
													기간(상품 수령 후 7일 이내)을 초과하였을 경우</span></li>
											<li><span class="num sum">-</span> <span class="txt">고객님의
													요청에 의해 제품 사양이 변경(이니셜 제품, 사이즈 맞춤 제품 등)된 경우</span></li>
											<li><span class="num sum">-</span><span class="txt">제품을
													이미 사용하였거나, 제품 일부를 소비하였을 경우</span></li>
											<!-- 210728 oera 신규 추가  -->
											<li><span class="num sum">-</span> <span class="txt">화장품
													: 상품 개봉 후 교환/반품 불가. 단 상품 불량(내용물 불량) 혹은 피부 트러블로 인한 반품은 가능(용량
													1/3 미만 사용 및 의사소견서 1:1문의 첨부 필수)</span></li>
											<!-- // 210728 oera 신규 추가  -->
											<li><span class="num sum">-</span> <span class="txt">식기류
													: 제품 수령 후, 비닐포장을 개봉한 경우</span></li>
											<li><span class="num sum">-</span> <span class="txt">고객님의
													귀책사유로 인해 회수가 지연될 경우</span></li>
											<li><span class="num sum">-</span> <span class="txt">국내외
													환율 변동 등에 의해 가격이 변동되는 제품의 경우</span></li>
											<li><span class="num sum">-</span> <span class="txt">문제소지가
													있는 제품을 본사가 아닌, 타 업체(일반 수선실 등)에서 선처리가 된 경우</span></li>
										</ol>
									</dd>
									<!-- 210728 oera 신규 추가  -->
									<dt>교환/반품건 배송</dt>
									<dd>
										교환/반품 시 배송 받으신 박스로 반송하셔야 합니다. <br>(한섬/오에라/리퀴드퍼퓸바 상품 함께 주문
										후 교환/반품 시 각각의 박스에 나눠서 반송해주세요. 한 박스에 함께 동봉하여 반송 시 교환/반품 처리가 불가할
										수 있습니다)
									</dd>
									<!-- // 210728 oera 신규 추가  -->
								</dl>
								<p class="tit mt20">환불안내</p>
								<p>환불은 반송제품 확인 후 진행됩니다.</p>
								<br>
							</dd>
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
									<!-- nav -->
									<!-- //nav -->
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
				<script type="text/javascript">
//<![CDATA[

$(document).ready(function(){
	var recommendtProductYn = false;
	
	
		$('#recommendItemsListContent').css('display', 'block'); 
		recommendtProductYn = true;
	
		if(recommendtProductYn == false) {
			$('#newItemsListContent').css('display', 'block');
			$(".halatest_pb > a").addClass('on');
		}
		recommendtProductYn = true;
	
	
	if(recommendtProductYn == false) {
		$("#productEctTab .halatest_pb").css('display', 'block'); 
		$("#productEctTab .halatest_pb > a").addClass('on');
	}
});

function onMouseOverRecommend() {
	$(".rmd_pb_popup").css('display', 'block');
}
function onMouseOutRecommend() {
	$(".rmd_pb_popup").css('display', 'none');
}


//]]>
</script>

			</div>
		</div>



		<style>
#delQnAFile {
	display: inline;
	position: absolute;
	top: 9px;
	right: 115px;
}

#textQnAFile {
	padding: 0 30px 0 6px;
	width: calc(100% - 24px);
	text-overflow: ellipsis;
}
</style>
		<script type="text/javascript">
$(document).ready(function() {
	$("#inquiryMobileNo2").on("keyup", function() {
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
		if ($("#inquiryMobileNo2").val().length > 0) {
			var inputNumberchk = /^[0-9]+$/; // 숫자 체크
			if (!inputNumberchk.test($("#inquiryMobileNo2").val())){
				$(this).val($(this).val().replace(/[^0-9]/gi,""));
				var la = new layerAlert("숫자만 입력 가능합니다.");
				la.confirmAction = function(){
					$("#inquiryMobileNo2").focus();
				};
			}
		}
	});

	$("#inquiryMobileNo3").on("keyup", function() {
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
		if ($("#inquiryMobileNo3").val().length > 0) {
			var inputNumberchk = /^[0-9]+$/; // 숫자 체크
			if (!inputNumberchk.test($("#inquiryMobileNo3").val())){
				$(this).val($(this).val().replace(/[^0-9]/gi,""));
				var la = new layerAlert("숫자만 입력 가능합니다.");
				la.confirmAction = function(){
					$("#inquiryMobileNo3").focus();
				};
			}
		}
	});

	$("#inquiryEmailSel").change(function(){
		if ($("#inquiryEmailSel").val().trim() == "") {
			$("#inquiryEmailDomain").val("");
		} else {
			$("#inquiryEmailDomain").val($("#inquiryEmailSel").val());
		}
	});
	
	//파일 삭제
	$(document).on('click','#delQnAFile',function(){
		$("#delAttach").val("Y");
		$('#textQnAFile').val("");
		$('#qnaFile').val('');
	});
});
</script>
		<div class="popwrap w_type_4" id="productQnADiv"
			style="display: none;">

			<div class="pop_tltwrap2 pb0">
				<h3>Q&amp;A</h3>
			</div>
			<div class="pop_cnt evaluation_list">
				<a href="#;" class="btn_evaluation" id="productQnAWrite">상품문의하기</a>
				<div class="clearfix">
					<table class="pop_tbl_ltype1">
						<caption>Q&amp;A</caption>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">Q&amp;A</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
				<!-- paging -->
				<div class="paging mt30" id="qnAPagingDiv"></div>
				<!-- //paging -->
			</div>
			<a href="javascript:void(0);" class="btn_close"><img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
				alt="닫기"></a>
		</div>


		<div class="popwrap w_type_3" id="productQnAWriteDiv"
			style="display: none;">
			<div class="pop_tltwrap2">
				<h3>상품문의하기</h3>
			</div>
			<div class="pop_cnt evaluation_write">
				<form id="productQnAForm" name="productQnAForm"
					action="/ko/HANDSOME/LIFESTYLE/HOME/FABRIC/%5BRITTEN%5D-%EB%8F%84%EC%96%B4-%EB%A7%A4%ED%8A%B8/p/FL2C1HLV034LRN_BG?categoryCode=ls011"
					method="post" enctype="multipart/form-data">
					<input type="hidden" id="productCode" name="productCode"> <input
						type="hidden" id="productQnaCode" name="productQnaCode"> <input
						type="hidden" id="delAttach" name="delAttach" value="N">
					<fieldset>
						<legend>상품문의하기</legend>
						<div class="tblwrap">
							<p class="reqd_txt float_right">
								<strong class="reqd">*</strong> 표시는 필수항목입니다.
							</p>
							<table class="tbl_wtype1">
								<caption>상품문의하기 입력항목</caption>
								<colgroup>
									<col width="140px">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="inquiryTitle">문의제목</label></th>
										<td><input type="text" id="inquiryTitle"
											name="inquiryTitle" title="input" style="width: 100%">
										</td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="inquiryContents">문의내용</label><span class="com_txt_p">(300자
												이하)</span></th>
										<td><textarea name="inquiryContents" id="inquiryContents"
												cols="30" rows="5" style="width: 98%; height: 200px"></textarea>
										</td>
									</tr>
									<tr>
										<th scope="row" class="th_space"><label for="file">파일
												첨부하기</label></th>
										<td>
											<!-- File upload -->
											<div class="file_upload">
												<input type="text" id="textQnAFile" class="text"
													title="파일찾기" readonly="readonly" name="fileText"> <a
													href="javascript:void(0);" id="delQnAFile"> <img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
													alt="파일삭제">
												</a>
												<div class="upload_btn">
													<label for="qnaFile"><button type="button"
															id="uploadFile" class="img_upload" title="파일찾기">
															<span>파일찾기</span>
														</button></label> <input type="file" id="qnaFile" name="uploadFile"
														class="btn add_s" title="파일찾기">
												</div>
											</div> <!-- //File upload -->
											<p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수
												있습니다.</p>
										</td>
									</tr>
									<tr>
										<th scope="row" class="th_space"><label
											for="inquiryMobileNo2">SMS 알림받기</label></th>
										<td>
											<div style="position: relative;">
												<input type="hidden" id="smsMobileNo" name="smsMobileNo">
												<select id="inquiryMobileNo1" title="휴대폰 번호 앞자리"
													style="width: 80px; margin-top: 0; vertical-align: middle; padding: 3px 8px 3px 8px;">
													<option value="010" selected="selected">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
												</select>
												<div class="form_hyphen">-</div>
												<input type="text" id="inquiryMobileNo2"
													name="inquiryMobileNo2" title="휴대폰 번호 가운데자리"
													style="width: 80px;" maxlength="4">
												<div class="form_hyphen">-</div>
												<input type="text" id="inquiryMobileNo3"
													name="inquiryMobileNo3" title="휴대폰 번호 뒷자리"
													style="width: 80px;" maxlength="4"> <span
													class="sms_alm_2006_chk"
													style="display: block; position: absolute; top: 3px; right: 14px;">
													<input type="hidden" id="smsNoticeYN" name="smsNoticeYN"
													value="N"> <input type="checkbox"
													id="inquirySmsNoticeYn" name="inquirySmsNoticeYn"
													style="margin-top: 1px;"> <label
													for="inquirySmsNoticeYn">SMS 알람고지</label>
												</span>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="inquiryEmailAddress"><strong
												class="reqd">*</strong><label for="inquiryMobileNo2">이메일
													답변받기</label></label></th>
										<td><input type="hidden" id="replyToEmail"
											name="replyToEmail"> <input type="text"
											id="inquiryEmailAddress" name="inquiryEmailAddress"
											title="이메일아이디" style="width: 120px;"> <span
											class="andmail">@</span> <input type="text"
											id="inquiryEmailDomain" name="inquiryEmailDomain"
											title="이메일계정 입력란" style="width: 120px;"> <select
											id="inquiryEmailSel" title="이메일계정"
											style="width: 140px; padding: 3px 8px 3px 8px;">
												<option value="" selected="selected">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="gmail.com">gmail.com</option>
												<option value="yahoo.co.kr">yahoo.co.kr</option>
												<option value="lycos.co.kr">lycos.co.kr</option>
												<option value="nate.com">nate.com</option>
												<option value="empas.com">empas.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="msn.com">msn.com</option>
												<option value="hanmir.com">hanmir.com</option>
												<option value="chol.net">chol.net</option>
												<option value="korea.com">korea.com</option>
												<option value="netsgo.com">netsgo.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="hanafos.com">hanafos.com</option>
												<option value="freechal.com">freechal.com</option>
												<option value="hitel.net">hitel.net</option>
										</select></td>
									</tr>
								</tbody>
							</table>
						</div>
						<p class="guide_txt clearfix" style="border-top: 0;">
							<span class="float_left"><strong>상품에 관한 배송, 교환,
									취소 등의 자세한 문의사항은 고객센터를 이용해 주시기 바랍니다.</strong></span> <span class="float_right">
								<input type="checkbox" name="securitySentenceYn"
								id="securitySentenceYn" value="Y"> <label
								for="securitySentenceYn">비밀글 설정</label>
							</span>
						</p>
						<div class="btnwrap mt40">
							<input type="button" id="qnaCancle" value="취소하기" class="btn wt">
							<input type="button" id="qnaWriteSend" value="등록하기"
								class="btn gray mr0">
						</div>
					</fieldset>
					<div>
						<input type="hidden" name="CSRFToken"
							value="a87b802a-d35c-4766-bd1a-0ed22a77d14a">
					</div>
				</form>
			</div>
			<a href="javascript:void(0);" class="btn_close"><img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
				alt="닫기"></a>
		</div>
		<!-- layer pop 1 -->
		<div class="popwrap w_type_3" id="storePickupDiv"
			style="display: none;">
			<!--title-->
			<div class="pop_tltwrap">
				<h3>수령 매장 선택</h3>
			</div>
			<!--//title-->
			<!--contents-->
			<div class="pop_cnt zipcode">
				<!-- search -->
				<div class="search">
					<label for="search">지역명 (도로명)</label> <input type="text"
						id="storePickupSearchWord" name="searchWord"
						placeholder="매장명 또는 지역 명을 입력 후 검색해 주세요" style="width: 260px">
					<input type="button" value="검색" id="storePickupSearchBtn"
						class="btn wt_s mr0 min_auto">
				</div>
				<!-- //search -->
				<!--  del_tab_container -->
				<div class="del_tab_container">
					<table class="pop_dtable store">
						<caption>배송지 목록</caption>
						<thead>
							<tr>
								<th scope="col">선택</th>
								<th scope="col">배송지 주소</th>
								<th scope="col">연락처/휴대폰</th>
							</tr>
						</thead>
						<tbody id="popupStorePickupContent">

						</tbody>
					</table>
					<div class="btnwrap">
						<input class="btn wt_s" id="storePickupCloseBtn" value="취소"
							type="button"> <input class="btn gray_s"
							id="storePickupChoiceBtn" value="확인" type="button">
					</div>
				</div>
				<!-- //del_tab_container -->
			</div>
			<!--//contents-->
			<a href="#;" class="btn_close" id="storePickupClose"><img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
				alt="닫기"></a>
		</div>
		<!-- layer pop 1 -->
		<!-- layer pop 1 -->
		<div class="popwrap w_type_2" id="restockReminder"
			style="width: 450px; display: none;">
			<div class="pop_tltwrap mb20">
				<h3>재입고 알림 신청</h3>
			</div>
			<div class="pop_cnt pop_con_restock1904">
				<div class="item_box" id="rewareHousingDiv">
					<input type="hidden" id="popupHProduct" value="">
					<div class="pt_list_all">
						<img src="/_ui/desktop/common/images/popup/cart_set_img1.jpg"
							id="popupProductImageS01" alt="">
						<div class="tlt_wrap">
							<div class="basket_tlt">
								<span class="tlt" id="popupBrandName"></span> <span
									class="sb_tlt" id="popupProductName"></span>
							</div>
							<p class="color_op" id="popupProductColor"></p>
							<input type="hidden" id="popupProductSize">
							<p class="mt5" id="popupProductPrice"></p>
						</div>
					</div>
				</div>
				<div class="input_box1904">
					<p class="txt1904">재입고 알림을 받으실 이메일 정보를 확인해주세요.</p>
					<form action="#" method="post">
						<!-- email -->
						<input type="text" id="email_address" title="이메일 아이디"
							class="em_form" style="width: 198px;" value=""
							disabled="disabled"> <span class="andmail">@</span> <input
							type="text" id="email_domain" title="이메일 도메인" class="em_form"
							style="width: 198px; margin-right: 0;" value=""
							disabled="disabled">
					</form>
					<ul class="bul_sty01_li mt15">
						<li>재입고 알림 예정이 있는 상품(컬러/사이즈)에 한해서 재입고 알림 신청이 가능합니다. <br>(제작상황에
							따라 변경될 수 있습니다.)
						</li>
						<li>신청 후 30일 내에 상품이 재입고 되면 '1회' 알림이 발송됩니다.</li>
						<li>소량 입고되거나 동시 구매가 이루어질 경우 등 알림 후에도 품절이 발생할 수 있습니다.</li>
						<li>회원정보에 등록된 이메일 정보로 안내 드리며, 이메일 정보 수정은<br>마이페이지 &gt;
							개인정보변경 페이지에서 가능합니다.
						</li>
						<li>알림 신청 시의 상품 옵션 및 가격 등의 상품정보가 재입고 시 변동될 수 있습니다.</li>
						<li>아울렛으로 판매 전환 되었을 경우, 알림이 발송되지 않습니다.</li>
					</ul>
				</div>
			</div>
			<div class="btnwrap">
				<input type="button" class="btn wt_s" id="rewareHousingCancel"
					value="취소"> <input type="button" class="btn gray_s mr0"
					id="rewareHousingApply" value="신청">
			</div>
			<!-- btn_close -->
			<a href="#" class="btn_close"><img
				src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
			<!-- //btn_close -->
		</div>
		<!-- layer pop 1 -->
		<!--리얼핏 팝업 -->
		<div class="popwrap w_type_3" id="viewRealFit1810"
			style="width: 624px; display: none; margin-left: -342px;">
			<!-- Title1 -->
			<div class="pop_tltwrap rlfit_pop_tltwrap">
				<h3>핏 가이드</h3>
			</div>
			<!-- //Title1 -->
			<div class="rlfit_pop_cnt">
				<div class="tab_d m2">
					<ul>
						<li><a href="javascript:chageFitGuideTab('FIRST')"
							class="active"></a></li>
						<li><a href="javascript:chageFitGuideTab('SECOND')"></a></li>
					</ul>
				</div>
				<div class="rlfit_pop_slider">
					<!-- rlfit_slide1 -->
					<div class="tab_cnt1810 rlfit_slide1">
						<p class="fit_guide_size1810">• 착용 사이즈:</p>
						<ul class="slides">
						</ul>
						<div class="controls">
							<span class="prev" id="fitGuiPrev1"></span> <span class="next"
								id="fitGuiNext1"></span>
						</div>
						<div class="bx_pager1810">
							<a class="bx-pager-link" data-slide-index="0" href="#;">정면</a> <a
								class="bx-pager-link" data-slide-index="1" href="#;">뒷면</a>
						</div>
					</div>
					<!--// rlfit_slide1 -->
					<!-- rlfit_slide2 -->
					<div class="tab_cnt1810 rlfit_slide2" style="display: none;">
						<p class="fit_guide_size1810">• 착용 사이즈:</p>
						<ul class="slides">
						</ul>
						<div class="controls">
							<span class="prev" id="fitGuiPrev2"></span> <span class="next"
								id="fitGuiNext2"></span>
						</div>
						<div class="bx_pager1810">
							<a class="bx-pager-link" data-slide-index="0" href="#;">정면</a> <a
								class="bx-pager-link" data-slide-index="1" href="#;">뒷면</a>
						</div>
					</div>
					<!--// rlfit_slide2 -->
				</div>
			</div>
			<!-- btn_close -->
			<a href="#" class="btn_close"><img
				src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
			<!-- //btn_close -->
		</div>
		<!--//리얼핏 팝업 -->
		<script type="text/javascript">
$(document).ready(function() {
	$("#stockconfirm .btnwrap .btn.wt_s").on("click", function() {
		$("#offlieQtyClose").trigger("click");
	});
	
	$("#stockconfirm .btnwrap .btn.gray_s").on("click", function() {
		$("#offlieQtyClose").trigger("click");
	});
	
	$("#offlieQtyClose").on("click", function() {
		$("#offlineQtyListPop").show();
		$("#offlineQtyInfoPop").hide();
		$(".more_stockbox").hide();
		if($(".w_type_2_1").hasClass('stockList')) {
			$(".w_type_2_1").removeClass("stockList");
		}
		
		$("#soldOutYn").prop("checked", false);
	});
	
	$("#soldOutYn").change(function() {
		getOfflineQty();
		$("#offlineQtyList").scrollTop(0);
	});
});

function setColorNamePop(color) {
	$("#colorNamepop").html(color);
}

function hideOfflineQtyInformation() {
	$(".w_type_2_1").addClass("stockList");
	$("#offlineQtyInfoPop").hide();
	$("#offlineQtyListPop").show();
	
	$("#offlineQtyList").scrollTop(0);
}

function showOfflineQtyInformation() {
	if($(".color_size_qty.czq_pop .color_chip li a.on").length == 0) {
		var la = new layerAlert("색상을 선택해 주세요.");
		return;
	}
	if($(".color_size_qty.czq_pop .size_chip li a.on").length == 0) {
		var la = new layerAlert("사이즈를 선택해 주세요.");
		return;
	}
	
	if($(".w_type_2_1").hasClass('stockList')) {
		$(".w_type_2_1").removeClass("stockList");
	}
	
	$("#offlineQtyInfoPop").show();
	$("#offlineQtyListPop").hide();
	
	getOfflineQty();
}

function getOfflineQty() {
	var pCode, tmpCode = "FL2C1HLV034LRN_BG";
	var infoTxt;
	
	if(tmpCode.indexOf("_") > -1) {
		pCode = tmpCode.split("_")[0];
	} else {
		pCode = tmpCode;
	}
	
	var colorCd = $(".color_size_qty.czq_pop .color_chip li a.on").attr("data-color-code");
	var colorNm = $(".color_size_qty.czq_pop .color_chip li a.on").attr("data-color-name");
	var sizeCd = $(".color_size_qty.czq_pop .size_chip li a.on").attr("data-size-code");
	var erpSizeCd = $(".color_size_qty.czq_pop .size_chip li a.on").attr("data-erp-size");
	var krSizeCd = $(".color_size_qty.czq_pop .size_chip li a.on").attr("data-kr-size");
	var size = sizeCd;
	var soldOut = $("#soldOutYn").is(":checked") ? "Y" : "N";
	
	if(krSizeCd != null && krSizeCd != "") {
		size += krSizeCd;
	}
	
	infoTxt = "선택하신 옵션(<em>" + colorNm + "/" + size + "</em>)의 오프라인 매장 재고 정보입니다.<span>※ 매장 재고 현황은 대략적이며, 자세한 정보는 매장에 문의해주세요.</span>";
	$(".stock_pop_txt").html(infoTxt);
	
	$.ajax({
		url      : '/ko/p/offlineShopQty',
		type     : 'GET',
		datatype : 'json',
		data     : { "productCode" : pCode, "styleCode" : colorCd, "sizeCode" : erpSizeCd, "soldOut" : soldOut },
		success  : function(data) {
			var list;
			if(data.length > 0) {
				for(var i=0; i < data.length; i++) {
					if(i % 2 == 0) {
						list += "<tr>";
					} else {
						list += "<tr class='colbg'>";
					}
					list += "	<td>";
					list += "		<span>" + data[i].branchName;
					list += "			<em class='redtxt_count'>" + data[i].offlineShopQty + "개</em>";
					list += "		</span>";
					list += "		<p>" + data[i].branchAddress + "</p>";
					list += "	</td>";
					list += "	<td>" + data[i].branchTelephone + "</td>";
					list += "</tr>";
				}
			} else {
				list = "<td colspan='2' style='width:470px !important;height:280px;padding-left:25px;text-align:center;'>선택하신 옵션("+colorNm+"/"+size+")의 매장 재고를 찾을 수 없습니다.</td>";
			}
			$("#offlineQtyList").html(list);
		},
		error    : function(xhr, Status, error) {
			var la = new layerAlert("[Error] " + error);
			return;
		}
	});
	
	$(".more_stockbox").show();
}
</script>

		<!-- 매장 재고 확인 팝업 -->
		<div class="popwrap w_type_2_1" id="stockconfirm"
			style="top: 50%; position: fixed; z-index: 101; margin-top: -175px; display: none;">
			<!-- Title1 -->
			<div class="pop_tltwrap">
				<h3>매장 재고 확인</h3>
			</div>
			<!-- //Title1 -->
			<!-- pop_cnt-->
			<div class="pop_cnt" id="offlineQtyListPop">
				<span class="stock_poptit"> 오프라인 매장 재고를 확인하실 색상과 사이즈를 선택해주세요.
				</span>
				<ul class="color_size_qty czq_pop">
					<li><span class="title">색상</span>
						<div class="txt">
							<ul class="color_chip clearfix">
								<li><input type="hidden" class="colorNameVal" value="BRICK">
									<a href="#;" class="beige"
									style="background: #af4c46 url('http://newmedia.thehandsome.com/FL/2C/SS/FL2C1HLV034LRN_BC_C01.jpg/dims/resize/24x24')"
									data-color-code="BC" data-color-name="BRICK"
									onmouseover="setColorNamePop('BRICK')"
									onmouseout="setColorNamePop('')"></a></li>
								<input type="hidden" id="colorName" value="BEIGE">
								<li><input type="hidden" class="colorNameVal" value="BEIGE">
									<a href="#;" class="beige"
									style="background: #cca07c url('http://newmedia.thehandsome.com/FL/2C/SS/FL2C1HLV034LRN_BG_C01.jpg/dims/resize/24x24')"
									data-color-code="BG" data-color-name="BEIGE"
									onmouseover="setColorNamePop('BEIGE')"
									onmouseout="setColorNamePop('')"></a></li>
								<li><input type="hidden" class="colorNameVal" value="BROWN">
									<a href="#;" class="beige"
									style="background: #694b41 url('http://newmedia.thehandsome.com/FL/2C/SS/FL2C1HLV034LRN_BR_C01.jpg/dims/resize/24x24')"
									data-color-code="BR" data-color-name="BROWN"
									onmouseover="setColorNamePop('BROWN')"
									onmouseout="setColorNamePop('')"></a></li>
							</ul>
						</div> <span class="cl_namepop" id="colorNamepop"></span></li>
					<li><span class="title">사이즈</span> <span
						class="txt size_chip190527">
							<ul class="size_chip clearfix sizeChipKo1901">
								<li><a href="#;" data-size-code="FR" data-kr-size=""
									data-erp-size="1">FR</a></li>
							</ul>
					</span></li>
				</ul>
				<div class="btnwrap_pop">
					<input type="button" class="btn gray_s"
						onclick="javascript:showOfflineQtyInformation();GA_Event('매장_재고_확인','매장 재고 확인하기','the CASHMERE_[RITTEN] 도어 매트');"
						value="매장 재고 확인하기">
				</div>

				<div class="more_stockbox" style="display: none;">
					<p class="stock_pop_txt"></p>
					<div class="chk_box">
						<input type="checkbox" id="soldOutYn"
							onclick="GA_Event('매장_재고_확인','필터','품절 매장 제외');"> <label
							for="soldOutYn">품절 매장 제외</label>
					</div>
					<table class="pop_stocktb">
						<caption>배송지 목록</caption>
						<thead>
							<tr>
								<th class="mj_th" scope="col">매장 정보</th>
								<th scope="col">연락처</th>
							</tr>
						</thead>
						<tbody id="offlineQtyList">
						</tbody>
					</table>
					<!-- //table -->
					<div class="btnwrap">
						<input class="btn wt_s"
							onclick="GA_Event('매장_재고_확인','취소 / 확인','취소');" value="취소"
							type="button"> <input class="btn gray_s"
							onclick="GA_Event('매장_재고_확인','취소 / 확인','확인');" value="확인"
							type="button">
					</div>
				</div>

			</div>
			<!--// pop_cnt-->
			<div class="pop_cnt_info" id="offlineQtyInfoPop"
				style="display: none;">
				<strong>매장 재고 안내</strong>
				<p>현 시점 재고 수량을 조회합니다.</p>
				<p class="pci_txt">
					재고 확인 시 동일 시점에 해당 상품이 판매될 경우 수량의 차이가 있을 수 있으니,<br> <span>정확한
						수량 및 구매 가능 여부는 매장으로 직접 문의해주시기 바랍니다.</span>
				</p>
				<div class="btnwrap_pop">
					<input type="button" class="btn info_gray"
						onclick="javascript:hideOfflineQtyInformation();GA_Event('매장_재고_확인','안내사항 확인 완료','클릭');"
						value="안내사항 확인 완료">
				</div>
			</div>
			<a href="javascript:void(0);" id="offlieQtyClose" class="btn_close"
				onclick="GA_Event('매장_재고_확인','닫기','클릭');"><img
				src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
		</div>
		<!--// 매장 재고 확인 팝업 -->
		<!-- 211101 체험단 리뷰 추가 S -->
		<!-- 체험단 상품평 리스트-->
		<div class="popwrap w_type_4 pop-tester-review" id="testerReviewDiv"
			style="display: none;">
			<div class="pop_tltwrap2 pb0 customerreviewdiv1905">
				<h3>
					체험단(<span class="review_cnt">15</span>)
				</h3>
				<p>더한섬닷컴 체험단 이벤트에 당첨된 고객님들의 상품 사용 후기입니다.</p>
			</div>
			<!-- pop_cnt-->
			<div class="pop_cnt evaluation_list1807 options">
				<div class="clearfix review_tab1_1807">
					<ul>
						<!-- 1 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>장*윤</span> / <span>30대</span> /
										<span>민감성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_0">
								<ul class="slides reviewImg0">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_3.gif"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_4.gif"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_5.gif"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_6.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_7.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="5" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="6" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									열흘 정도 써본 한섬의 럭셔리 뷰티 oera♥ <br> 세안 후 솜으로 닦아내지 않으면 마무리가 되지
									않은 느낌인데, 오에라의 캘리브레이터로 스킨 대신 첫 단계로 써보니 피부가 한결 정리된 기분. 그리고 무엇보다
									울긋불긋한 톤이 균일해졌다! 특히 전용 패드가 너~무 좋아서 감동. <br> 세심하게 만든게 느껴지는
									오에라의 캘리브레이터 꾸준히 쓰면 올 여름 상한 피부가 다시 돌아올 것 같아~
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 2 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>이*주</span> / <span>30대</span> /
										<span>복합-민감성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_1">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_4.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_5.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_6.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_7.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="5" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="6" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									오에라의 멀티-베네핏 캘리브레이터는 전용 패드 120매와 80ml의 본품이 함께 구성되어 있습니다. <br>
									한 손으로 다 잡히지 않는, 넉넉한 용량입니다. 은빛의 고급스러운 패키지가 눈에 띕니다. <br> 용기는
									펌핑형으로, 무게감이 적당해 사용이 편리했습니다. <br> 제품을 펌핑하여 페이스에 사용하기 전부터
									향에서 깊은 인상을 받을 수 있었습니다. 스킨케어 첫 단계에서 사용하는 제품인 만큼, 휴식과 안정의 느낌을
									선사하는 향이라는 느낌이 듭니다.<br> 멀티-베네핏 캘리브레이터는 묽게 흐르는 제형이지만, 피부에 금방
									흡수되며 촉촉한 느낌입니다. <br> 전용 패드는 한쪽에 엠보가 도드라지며, 다른 한 쪽은 좀더 부드러운
									느낌입니다. 부드러운 패드 반대 쪽 면에 묻혀 사용하니 진정과 수분 공급에 탁월한 효과를 볼 수 있었습니다. <br>
									탄력이 조금 더 신경 쓰이는 날에는 패드에 캘리브레이터를 넉넉히 묻혀 팩처럼 활용하기도 했습니다. 시간이 지나
									패드를 떼어 내면 눈에 띄게 촉촉해지고 쫀쫀해진 피부 때문에 자꾸 손이 가는 제품입니다.<br> 사용하며
									가장 인상적이었던 점은 자극없이 피부에 생기를 불어넣어 준다는 점입니다. 복합성에 민감성 피부인 제가 민감한
									부위에 제품을 덧바르더라도 자극이 전혀 느껴지지 않았습니다. <br> 2주 동안 캘리브레이터를 사용하며
									스킨 토너를 사용할 때보다 수분이 충전되는 느낌을 받았습니다.<br> 캘리브레이터는 기초 첫 단계에서
									단독 사용하더라도, 토너 뿐만 아니라 에센스의 역할까지도 훌륭히 해내는 듯합니다. 역할까지도 훌륭히 해내는
									듯합니다.
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 3 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>최*정</span> / <span>30대</span> /
										<span>민감성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_2">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_4.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_5.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_6.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="5" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									한섬의 프리미엄 스킨케어 브랜드라 해서 넘나 기대가 되었는데요, 포장 상태도 마음에 들었고 케이스도 고급스러운
									디자인이라, 엄마 선물로도 좋을 것 같아요! <br> 처음에는 큰 박스가 와서 왜 이렇게 큰가 했더니,
									캘리브레이터랑, 캘리브레이터 전용 패드가 같이 들어가 있었어요!<br> 제가 피부가 예민한 편이라, 많은
									성분과 기능을 담은 제품은 사용하기 무서워하는 편인데, 오에라 켈리브레이터는 사용 후에 자극이나 가려움이 느껴지지
									않아서 좋았어요! <br> 왜 패드가 포함되어 있나 했더니, 패드를 활용해서 피부결을 정돈하는 단계가 첫
									단계더라구요! 패드는 촘촘하지 않은 독특한 재질로 되어 있어요! 피부결을 따라 닦아내듯 발라주면 된답니다!<br>
									캘리브레이터 전용 패드를 이용해서 피부결을 닦아낸 후에는, 손바닥에 적당량을 펌핑한 후에 피부에 지그시 누르듯
									흡수시켜주면 된답니다! 용기는 펌핑형으로 되어 있어서 위생적으로 사용하기 좋답니다!ㅎㅎ <br> 제형은
									흐르는 물 같은 제형에, 향은 딱 맡아도 고급스러운 향이 나더라구요. 자연스러운 향이다보니 호불호가 크게 갈리지
									않고 사용할 수 있을 것 같았답니다!<br> 무엇보다 흡수력이 빠르고, 얼굴에 두껍게 발리는 느낌이
									아니여서 산뜻한 느낌이 났어요! <br> 아침저녁으로 사용중인데,촉촉한 느낌이 지속되어서 계속 꾸준히
									사용해볼 생각이랍니다!
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 4 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>박*영</span> / <span>30대</span> /
										<span>건성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_3">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_3.gif"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_4.gif"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_5.gif"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_6.gif"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="5" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									한 박스에는 "오에라 멀티 베네핏 캘리브레이터"가 있었고, 나머지 한 박스는 전용 패드가 들어있다. <br>
									전용 패드는 일반 화장솜이 아니었다.내 얼굴의 숨은 각질을 한번에 닦아버리겠다는 포부가 그대로 느껴지는 질감!<br>
									어떤 질감인지, 어떤 색인지 전혀 정보가 없는 채 꾹꾹 눌러보니....액체에 가까운 질감이 손등을 타고 흐른다.<br>
									손등에 문질러보니 끈적임이 1도 남아있지 않았다. 바르지 않은 손등과 비교해보면, 광택과 확연히 비교가 된다.<br>
									자연스럽게 손등이 코로 가는데, 향이 인위적인 느낌이 없이 너무 좋았다. <br> 비싸보이는 화장솜에다가
									멀티 베네핏 캘리브레이터를 몇번 펌프해준다. 기존에 쓰던 스킨을 화장솜에 묻혀 일단 피부결을 정돈하고 전용 패드에
									적당양 오에라 멀티 베네핏 캘리브레이터를 뿌려 다시 닦아낸다. <br> 특히, 거칠거칠하던 턱 주변과
									볼을 더 집중적으로 닦아냈다. 일반 화장솜과 다르게 표면이 거칠해서 뭔가 각질이 잘 닦이는 느낌이 들었다. 왜
									전용패드를 함께 패키지로 파는지 알 것 같았다. 전용패드 다쓰면 꼭 다시 사고 싶다.<br> 그 다음날
									아침과 저녁세안 후에도 역시 사용을 해본 결과 볼을 만져보니 확실히 부드러워졌다. 정말 제대로 느껴졌다. 괜히
									'피부톤 개선, 피부결 개선, 피부 탄력' 에 좋다고 한게 아니었다. 계속 부드러운 얼굴을 만져보게 된다 ㅋㅋㅋ<br>
									제품을 받고 사용한지 약 일주일째.. 이 제품을 이렇게 사용해보게 해준 한섬이 너무 고마워졌다. 일단 내 피부가
									요즘 거칠하다.. 팩을 해도 거칠다... 라고 고민하시는 분들은 오에라 멀티 베네핏 캘리브레이터 써보시길
									추천드린다.<br>
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>

						<!-- 5 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>오*선</span> / <span>40대</span> /
										<span>복합성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_4">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_4.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_5.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_6.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_7.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="5" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="6" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									아침마다 세수할때 손끝에 느껴지는 부드러움을 알게해준 오에라! 한섬팬인데 오에라팬이 될거같아요. <br>
									첫째, 피부결이 일주일도 안되어 달라진걸 느꼈어요. <br> 실크처럼 부드럽다라는 말보다 더 좋은 표현을
									못찾겠어요. 아침저녁 사용하는데 손끝이 너무 행복해요<br> 둘째, 피부결이 정리되니 피부톤도 한결
									고르게 되고 밝아지는거 같아요.<br> 셋째, 주름개선은 조금 더 써보고 공유할수 있을거 같아요.<br>
									사용은 펌핑하고 들어있는 패드에 (한쪽은 결이있고, 반대쪽은 매끄러워요~결있는데로 쓱 밀어서 각질까지 케어하고,
									부드러운면으로 쓱 밀어서 피부결 살리고) 뭍혀서 얼굴결 정리하듯 쓱 발라주고, 한번더 펌핑해서 얼굴에
									쏘옥~흡수하면 되는데요, 피부에서 겉돌지 않고 쏘옥~흡수되서 사용도 넘넘 편하답니다.<br> 다른
									에센스2배 짐승용량이라 가치가 있는거 같아요.14일도 안되어 피부결 변화와, 14일이면 느껴지는 피부톤
									정리까지!!! 최고예요
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 6 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>송*희</span> / <span>40대</span> /
										<span>건성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/06/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_5">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/06/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/06/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									40대 중반에 가을이 되니 부석부석해진 피부가 좀 더 건강해졌으면 좋겠다는 바램이 생기더라구요. <br>
									건강하게 빛나는 피부, 좀 더 어려보이고건강해지고 싶다는 생각으로 피부과, 다양한 화장품, 팩등을 찾고 있던 중
									운 좋게 만난 오에라의 멀티-베네핏 캘리브레이터♡~ <br> 믿고 사용할 만한 스위스의 기술력과
									연구과정으로 탄생했다는 과학기술,크로노 엘릭서를 담은 캘리브레이터가 피부를 케어해주네요. <br> 세안후
									앞 뒷면이 다른 패드 중 더 거친 부분으로 에센스를 3~4방울을 얼굴 전체를 부드럽게 닦아줘요. 그것만으로도
									각질이 정리되어 피부결 톤을 정리가 되더라구요.<br> 한 번 더 수분감으로 채울 부분은 에센스 몇방울을
									덜어 손가락으로 살포시 눌러주면 최상의 컨디션으로 피부가 편안해지는 느낌.럭셔리리추얼스킨케어가 가능한 하이엔드
									뷰티~였어요.<br> 자연분해까지 생각해 환경친밀 비건패드로 수분감이 부족한 부분에 5분간 올려두면
									피부의 수분감 충족, 톤과 결, 매끄러움을 향상시켜 줍니다. <br> 눈가와 이마의 미세한 주름까지
									잡아주는 오에라의 멀티-베네핏 캘리브레이터♡로 더 예뻐지세요~
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 7 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>한*연</span> / <span>30대</span> /
										<span>민감성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_6">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_4.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_5.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="4" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									용기 디자인은 깔끔, 영롱한 느낌! 오에라의 분위기를 느낄 수 있어요~<br> 사용 방법은 간단해요 ㅎㅎ
									먼저 전용 패드를 활용하여 피부결을 정돈하고, 두번째는 손으로 흡수시켜 수분 공급을 해주세요! 레이어링 해주는
									느낌으로다가:) <br> 처음 전용패드로 발라주었을 때 느낌은 "오!?!" 👀 촉촉 찹찹 바르면 느낌이
									쫀득쫀득해지는 느낌이더라구요:) <br> 피부톤 개선이나, 피부결, 탄력에 좋다고 하니 꾸준히 사용해
									봐야 겠어요~<br> 촉촉한 손등 보이죠!? 패드도 완전 꿀템이라 슥슥 닦아주고, 흡수시켜주면 최고의
									조합이에요~ <br> 환절기 민감한 피부에 추천해봅니다~
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 8 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>김*현</span> / <span>40대</span> /
										<span>민감성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_7">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_4.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									한섬옷을 좋아하는 편이라, 한섬브랜드에 관심이 많았는데 한섬에서 화장품라인이 나온다는 소식에 넘 기대가 많았다…
									체험단모집에 별기대없이 댓글 응모하였는데~~선정되어 넘 기쁨~~ <br> 기다리던 "오에라" 브랜드명의
									멀티-베네핏 캘리브레이터 에센스 도착!!! <br> 밤에 세안 후 전용 패드로 살짝 닦아내듯 바른 후,
									적당량을 덜어서 누르듯 바름~ <br> 아침에 일어나보니 맑아진 피부톤이 느껴져요~ 역시 명품이 좋군…
									다른 라인도 넘 체험해보고 싶네요… 향도 고급스러운 향수 느낌의 달달함이 가득한 향이에요...^^ <br>
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>

						<!-- 9 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>김*정</span> / <span>40대</span> /
										<span>복합성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_8">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_4.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									피부에 밸런스를 잡아줄 완벽한 #에센스 발견 <br> 우선 처음 보자마자 멋있다!!! 감탄😍 그리고
									향수를 쓰는 기분은 보너스~ <br> 1. 피부를 가장 편안한 상태로 만들어주는 오에라만의 처방 솔루션.<br>
									2. 독자적인 크로노 엘릭서™가 "톤","결","촉(탄력)"을 동시에 케어하는 멀티 베네핏 효과 선사.<br>
									3. 전용패드로 피부결 정리 후 손으로 흡수시켜 수분공급하는 2-레이어링 케어.<br> 앞으로 내피부를
									맡겨보기로했다~ #똑똑한에센스 #오에라 #컬러브레이터
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 10 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>한*연</span> / <span>30대</span> /
										<span>민감성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_9">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_4.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									독자성분 '크로노 엘릭서'와 피부 리듬을 잡아주는 '캘리브레이팅 시스템'<br> 피부 톤/결/촉(탄력)을
									함께 챙겨주는 멀티-베네핏 캘리브레이터 <br> 1.써본지 2주 되었는데, 지금 계절이면 뒤집어졌을
									피부가 나름 단단해져 있는 느낌😀<br> 2.친환경 전용 비건패드로 각질을 정돈해주고 손으로 싸악
									흡수시켜주니 촉촉함이 오래가는 느낌.<br> 3.피부가 좋은편은 아닌데, 요새 안색이 좋아졌다는 얘기를
									많이 듣는다.<br> #캘리브레이터 #더한섬닷컴 #모닝뷰티루틴 #에센스추천
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 11 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>박*아</span> / <span>40대</span> /
										<span>건성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/11/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_10">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/11/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/11/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/11/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									캘리브레이터는 투명하고 묽은 제형으로 피부에 닿았을 때 우드향이 은은하게 나는 게 정말 좋았습니다. <br>
									함께 들어있는 패드에 두세번 펌핑하여 볼-이마-코와 턱 순으로 부드럽게 닦아 내듯 발라줍니다. <br>
									패드는 부드러운 면과 거친 면이 양면으로 되어 있어 각질이 신경 쓰일 때는 거친 면으로 바르고, 꼼꼼히 세안을
									하여 피부가 민감한 상태가 되었을 때는 부드러운 면으로 발라 피부에 최소한으로 자극이 되도록 하였습니다. <br>
									한 번 닦아 내듯 바른 패드는 바로 버리지 않고 뒤집어서 두어 번 더 펌핑한 후 가장 신경 쓰이는 이마와 미간
									주름 위에 붙여 놓아 5분 간 팩을 하였습니다. 이마에 패드로 잠시 팩을 하는 동안 손바닥에 다시 캘리브레이터를
									적당량 덜어 눈가와 볼, 팔자주름 등 피부에 대고 지긋이 누르듯 흡수시켜 주었습니다. <br> 성분이
									피부 속에 흡수되어 완전히 자리 잡는 데에 한 1~2분 정도 걸리는 것 같아요. 빠르게 피부에 흡수되어 금방
									부드럽고 촉촉해집니다. 금방 피부에 스며들지만 신기하게도 피부결을 부드럽고 매끄럽게 정돈해주니 정말 신기했습니다.
									<br> 캘리브레이터의 효과를 온전히 느끼고 싶어 2주일 째 화장을 하지 않고 맨 얼굴로 출근을 하고
									있는데요, <br> 피부에 보습감을 전달하여 하루 종일 건조하지 않으면서 유수분 조절이 되어 산뜻한
									느낌이 들었습니다. 쉽게 예민해졌던 피부에 자극 없이 스며들어 윤기와 영양분을 공급해주는 듯했습니다. <br>
									매일 아침저녁 세안 후 사용할수록 피부는 투명해졌고 자꾸 거울을 보고 싶어질 정도로 매끈해졌습니다. <br>
									이렇게 단기간에 미백효과가 나타나는 것이 정말 신기했고, 꾸준히 사용하면 분명 효과를 볼 수 있을 것 같아요. <br>
									다양한 피부 상태와 고민에 따라 오에라의 특징적인 솔루션을 담아낸 기능성 제품을 하나씩 단계별로 선택해 자신만의
									리추얼을 완성해가는 즐거움을 느낄 수 있을 듯 합니다.
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 12 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>최*희</span> / <span>30대</span> /
										<span>건성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_11">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_3.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_4.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_5.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_6.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="5" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									한섬의 럭셔리 뷰티 제품 답게 패키지 역시 고오급지다! 한섬하다! 할만했습니다. <br> 실버톤의 화장품
									용기며, 제품과 함께 동봉되어있는 친환경 전용 패드!! 그냥 말이 필요 없었습니다.<br> 설명서에
									나와있는대로 1차는 세안 후 가볍에 패드에 세럼을 약 2회 펌핑하여 피부결을 따라 닦토 하듯 닦어주었습니다.<br>
									피부에 닿는 순간 냄새 무슨일이죠? 기존 화장품들에서 나는 인위적인 향이 아닌 은은한 향이 특히 마음에 들었구요.<br>
									굴곡진 패드가 화장품을 흡수하는게 아니라, 그대로 머금고 있다가 제피부에 100% 전달해주어 피부 결정리에 너무
									좋은 느낌을 받았습니다. <br> 최근 제가 야근과 마법으로 인해 피부가 푸석해졌었는데요.. 요 제품으로
									아침 저녁 2회씩 사용한 결과 확실히 피부톤이 맑다! 확실히 피부 결 (각질)이 정돈되었다! 하는 느낌을 받을 수
									있었습니다.<br> 제형은 아주 묽은 타입인데요. 끈적임 없이 피부에 부드럽게 스며들더라구요.가격은
									조금(?) 비싸지만.. 이래서!! 좋은걸. 쓰는거지...하는 생각이 절로드는 아이였습니다.<br> 평소에
									화장품에 매우 관심이 많은지라 뷰티 체험단으로 다양한 브랜드도 접해 봤구요. 또 고가 제품, 저렴이 제품 할거
									없이 신상이라고 하면 꼭! 써봐야 직성이 풀리는 1인인데요.<br> 요아이 정말이지 체험단으로 접했지만
									정말 제돈주고 사도 아깝지 않겠다!라는 생각이 절로 들었답니다!
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>

						<!-- 13 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>김*윤</span> / <span>40대</span> /
										<span>건성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/13/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_12">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/13/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/13/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									처음 받아 봤을때 첫 느낌은 엄청 럭셔리 하네요^^ 향은 좀 호불호가 있을듯 해요~ <br> 부스터 같은
									에센스라서 손등에 발라 보니까 스킨처럼 흐르네요~ <br> 전용 패드로 자극 없이 피부결 정돈해 주어서
									오래 쓰면 부드러운 피부결 만들어 줄듯 해요~ <br> 요즘 같은 환절기에 쓰면 촉촉하고 건조하지 않아서
									좋네요^^ 일주일 써 본 결과 지금까지 만족합니다^^
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 14 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>권*리</span> / <span>30대</span> /
										<span>건성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/14/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_13">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/14/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<!-- <div class="bx_pager191219">
                                <a class ="bx-pager-link" data-slide-index="0" href="#;"></a>
                            </div> -->
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									피부 각질 제거 전, 피부 컨디션이 좋지 않은 상태에서 사용했음에도 불구하고, 기타 기초 케어와 피부 화장이 얇게
									잘 되어서 피부 밸런스를 잘 잡아줄 수 있을 거라 생각됩니다! <br> 피부 각질 제거 후, 묵은 각질이
									없는 상태에서는 역시나 기초의 역할을 탄탄히 하는 것 같았어요. <br> 바쁜 생활에서 화장 단계를
									최소화하기 위해 ‘오에라-스킨-선크림-쿠션’으로 사용해 보았습니다. <br> 기초 케어가 부실했음에도
									불구하고 밀림이나 들뜨는 현상 없이 쿠션을 잡아주어서 매우 놀라웠습니다!<br> 제품의 묽기는 일반
									스킨과 같이 흐르는 제형이며, 향은 "은은하다" 정도로 생각됩니다.<br> 전용 패드는 100% 생분해
									가능한 친환경 패드라는 점에 높은 점수를 주고 싶습니다!<br> 제품 용기는 은색의 은은한 용기가
									화장대의 어떤 화장품과 있어도 어울릴 것 같습니다. <br> 마지막으로 캘리브레이터는 기대 이상으로
									스킨케어 첫 단계의 역할을 완벽하게 수행하고 있디고 생각되었습니다.<br> 피부의 톤, 결, 탄력을
									이상적인 상태로 가꿔줄 수 있을 것으로 예상되기 때문에 계속해서 사용할 용의가 있습니다. :)
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
						<!-- 15 -->
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<ul>
									<li class="choice">• <span>이*민</span> / <span>30대</span> /
										<span>민감성</span>
									</li>
								</ul>
							</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
							<div class="review_represent_img1912">
								<img
									src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/15/pc_1.jpg"
									alt="리뷰 이미지">
								<div class="img_count191212">
									<span class="img_count191212_inner">+</span>
								</div>
							</div>
							<div class="review_img_wrap review_img_cont191216"
								id="testerReviewImg_14">
								<ul class="slides">
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/15/pc_1.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
									<li>
										<div class="review_img_cont_inner191216">
											<div class="img_wrap">
												<img
													src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/15/pc_2.jpg"
													alt="리뷰 이미지">
											</div>
										</div>
									</li>
								</ul>
								<div class="controls">
									<span class="prev"></span> <span class="next"></span>
								</div>
								<div class="bx_pager191219">
									<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
										class="bx-pager-link" data-slide-index="1" href="#;"></a>
								</div>
							</div> <!--//리뷰이미지 영역 -->
							<div class="review_txt_wrap">
								<p class="review_txt">
									캘리브레이터가 처음 피부에 닿았을 때 코로 들어오는 향이 자극적이지 않고, 천연 아로마와 유사한 느낌이 들어
									향만으로도 힐링이 되었다. 무엇보다 피부에 즉각적으로 잘 스며들어 산뜻함과 촉촉함이 느껴졌다. <br>
									함께 동봉된 전용 친환경 패드는 한쪽 면은 부드럽고 다른 쪽은 거친 촉감이 다소 느껴져, 과연 부드럽게 닦아질 수
									있을까? 하는 의문이 들었다. <br> 캘리브레이터를 2~3번 펌핑 후 전용 패드의 부드러운 면으로
									피부결을 따라 닦아내 본 결과, 평소 쓰던 패드에 비해 피부에 훨씬 빠르게 흡수되며 수분감이 느껴졌다. 리퀴드
									제형이라 발림성과 흡수성이 뛰어나 에센스만으로 피부 속 영양분이 공급되는 느낌이 들었다. <br> 가을과
									겨울에는 오일과 함께 사용한다면 수분감의 지속과 더불어 피부 밸런스를 보다 더 균형있게 잡아주는 효과를 얻을 수
									있을 것 같다. <br> 체험 후, 피부결이 상당히 좋아진 것을 느낄 수 있었다. <br> 체험
									전에는 메이크업 단계에서 밀리는 경우가 종종 있었는데, 체험 기간 동안에는 메이크업에서 밀림 현상 없이 화장이 잘
									먹혀서 에센스 사용만으로도 이렇게 달라질 수 있음에 다소 놀랐다.
								</p>
							</div>
							<div class="review_more_1807">
								<a href="#;">리뷰 더보기</a>
							</div>
						</li>
					</ul>
				</div>
				<!-- paging -->
				<div class="paging mt30" id="reviewPagingDiv">
					<span class="num"> <a href="javascript:void(0);"
						class="pageBtn on" pagenum="1">1</a> <a href="javascript:void(0);"
						class="pageBtn" pagenum="2">2</a> <a href="javascript:void(0);"
						class="pageBtn" pagenum="3">3</a> <a href="javascript:void(0);"
						class="pageBtn" pagenum="4">4</a>
					</span>
				</div>
				<!-- //paging -->
			</div>
			<!--// pop_cnt-->
			<a href="javascript:void(0);" class="btn_close"><img
				src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
		</div>
		<!-- //상품평 리스트-->
		<!-- // 211101 체험단 리뷰 추가 E -->
	</div>
	<%@include file="../../views/includes/footer.jsp"%>
</body>
</html>