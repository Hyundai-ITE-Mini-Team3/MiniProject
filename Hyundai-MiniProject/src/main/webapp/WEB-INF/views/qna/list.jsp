<!-- QnA 게시판 글 목록 페이지 (작성자: 진영서) -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta name="naver-site-verification"
	content="2f9358e1e36605519854a595f243f0171519dd1d">
<meta name="google-site-verification"
	content="0bGV8gPhwO_PzritNvIsz2k74EH5yPsrXXluJ8ZUed8">
<meta name="google-site-verification"
	content="dO99-Ao-ywXeVDEz4jz5nJBXzQXVCgmX4WXzxl_Nf3c">
<meta name="facebook-domain-verification"
	content="jvxpdjfrqqan9oe1qdrjfyxj553an6">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi">
<meta property="og:type" content="article">
<meta property="og:title" content="더한섬닷컴 | THE HANDSOME.COM">
<meta property="og:description"
	content="타임, 마인, 시스템, SJSJ 등 프리미엄 브랜드 및 트렌디한 해외·편집숍까지 가득한 스타일 플랫폼!">
<meta property="og:image"
	content="http://s3.ap-northeast-2.amazonaws.com/cdn.thehandsome.com-kr/pc/210510_logo/%E3%84%B9%EB%A1%9C%EA%B3%A0.png">
<meta property="og:url" content="http://www.thehandsome.com/ko/">
<meta name="keywords"
	contents="한섬, 더한섬닷컴, 한섬몰, 한섬아울렛, 한섬닷컴, 더한섬, 한섬올라인몰, HANDSOME, thehandsome">
<title>더한섬닷컴-QnA 게시판</title>
<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/_ui/desktop/common/images/common/thehandsome_ic_16x16.ico">
<link rel="stylesheet" type="text/css"
	href="/_ui/desktop/common/css/font_443.css" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/common.css?20220401" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/layout.css?20220331" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/popup.css?20210225" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery-ui.min.css" media="all">
<link rel="stylesheet" type="text/css" href="/resources/css/brand.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/footer.css?20220406" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css?20220221" media="all">
<style type="text/css" media="print">
@IMPORT url("/resources/css/print.css");
</style>

<script async="" defer=""
	src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-RPZ82BN53C&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript"
	src="https://js.appboycdn.com/web-sdk/2.7/appboy.min.js" async=""></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-5PCJDFJ"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://connect.facebook.net/signals/config/1947530058811697?v=2.9.57&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script async="" charset="utf-8"
	src="//static.recopick.com/dist/production.min.js"></script>

<!-- 200318 ì¶ê° -->
<script type="text/javascript">
		//<![CDATA[
		
		var ACC = { config: {} };
			ACC.config.contextPath = "";
			ACC.config.encodedContextPath = "/ko";
			ACC.config.commonResourcePath = "/_ui/desktop/common";
			ACC.config.themeResourcePath = "/_ui/desktop/theme-blue";
			ACC.config.siteResourcePath = "/_ui/desktop/site-handsome";
			ACC.config.rootPath = "/_ui/desktop";	
			ACC.config.CSRFToken = "32fb7c45-9b5c-42f3-a0cf-5925ed2feae5";
			ACC.pwdStrengthVeryWeak = 'Very weak';
			ACC.pwdStrengthWeak = 'Weak';
			ACC.pwdStrengthMedium = 'Medium';
			ACC.pwdStrengthStrong = 'Strong';
			ACC.pwdStrengthVeryStrong = 'Very strong';
			ACC.pwdStrengthUnsafePwd = 'password.strength.unsafepwd';
			ACC.pwdStrengthTooShortPwd = 'Too short';
			ACC.pwdStrengthMinCharText = 'Minimum length is %d characters';
			ACC.accessibilityLoading = 'Loading... Please wait...';
			ACC.accessibilityStoresLoaded = 'Stores loaded';
			
			ACC.autocompleteUrl = '/ko/search/autocompleteSecure';
			
			
		//]]>
	</script>
<script type="text/javascript">
	//<![CDATA[
	ACC.addons = {};	//JS holder for addons properties
			
	
//]]>
</script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js "></script>
<script type="text/javascript" src="/resources/js/jquery.vticker.js"></script>
<script type="text/javascript" src="/resources/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript">
    var handsomeContextPath = "/ko"; 
</script>

<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="/resources/js/html5shiv-printshiv.js"></script>
<script type="text/javascript" src="/resources/js/common_function.js"></script>
<script type="text/javascript" src="/resources/js/videojs-ie8.min.js"></script>
<script type="text/javascript" src="/resources/js/instagramAPI.js"></script>
<script type="text/javascript" src="/resources/js/makePCookie.js"></script>
<script type="text/javascript" src="/resources/js/netfunnel.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="/resources/js/netfunnel_skin.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="/resources/js/unorm.js"></script>
<script type="text/javascript" src="/resources/js/appboy.min.js"></script>
<script type="text/javascript" src="/resources/js/ui.js"></script>
<script type="text/javascript">
var setDimensionData = function(){
    //GA 설정 sessionStorage 페이지 이동시 초기화 
    window.sessionStorage.removeItem('ecommerceDataList');
    window.sessionStorage.removeItem('main_new_ecommerceDataList');
    window.sessionStorage.removeItem('main_best_ecommerceDataList');
    window.sessionStorage.removeItem('main_recommend_ecommerceDataList');
    window.sessionStorage.removeItem('normal_cate_ecommerceDataList');
    window.sessionStorage.removeItem('brand_main_new_brazeDataList1');   // 상단NEW
    window.sessionStorage.removeItem('brand_main_new_brazeDataList2');   // 하단NEW
    window.sessionStorage.removeItem('brand_main_sales_brazeDataList1'); // 상단BEST
    window.sessionStorage.removeItem('brand_main_sales_brazeDataList2'); // 하단BEST
    var cid = getCid();
    var device = "PC_WEB";
    var entrySite = "";
    
	    entrySite = "KO";
	
    
    var oneDepthPage;   // 없을 경우 undifined 그대로 넘겨야 하기 때문에 초기화 X
    var pageTitle = "";
    var tmp = getPageDepth();
    if(tmp != ""){
        oneDepthPage = tmp;
        pageTitle = getGAPageTitle(oneDepthPage);
        if(pageTitle == ""){
        	oneDepthPage = undefined;
            pageTitle = document.title;
        }
    }else{
        pageTitle = document.title;
    }
    
    var pageviewObj = new Object();
        pageviewObj.dimension1 =  cid;                     //고객_ClientID
        pageviewObj.dimension15 = device;                       //채널_채널유형
        pageviewObj.dimension16 = entrySite;                  //채널_언어 - #2846 삭제요청 hychung, #2846 복원요청 hychung
        pageviewObj.dimension18 = oneDepthPage;                 //페이지_1Depth (페이지depth 없는경우 undefined처리)
        pageviewObj.title = pageTitle;                          //페이지제목     (페이지제목 없는경우 document.title 입력)
    
     //로그인 했을경우만 추가 dimension 세팅
     
       pageviewObj.dimension2 = "";                  //고객_회원번호
       pageviewObj.dimension3 = "간편";                  //고객_회원구분
       pageviewObj.dimension4 = "";                  //고객_지역
       pageviewObj.dimension5 = "F";                  //고객_성별
       pageviewObj.dimension6 = "20";                  //고객_연령대
       pageviewObj.dimension7 = "";                  //고객_생년 => 고객_통합멤버십번호 변경됨
       pageviewObj.dimension8 = "";                  //고객_온라인등급
       pageviewObj.dimension9 = "";                  //고객_한섬통합등급
       pageviewObj.dimension10 = "0";                //고객_구매횟수
       pageviewObj.dimension11 = "";                //고객_구매금액대
       pageviewObj.dimension12 = "";                //고객_첫구매일자
       pageviewObj.dimension13 = "";                //고객_최종구매일자
       pageviewObj.dimension14 = "20220429";                //고객_회원가입일
       pageviewObj.userId = "";                      //사용자ID
    
    
    // 검색 결과 페이지 일 경우만 처리
    if(window.location.pathname.indexOf("/hssearch/searchCount") > -1) {
        pageviewObj.dimension17 = "";                     //검색_검색어(검색결과페이지일때 사용)
    }
    
    return pageviewObj;
};

</script>
<style media="screen">
.blsmflw1 {
	animation: target_image 1.5s;
	animation-iteration-count: 2;
	transform-origin: 50% 50%;
}

@
keyframes target_image { 0% {
	transform: rotate(-1deg);
}
50%{
transform
:
 
rotate
(9deg)
}
100%
{
transform
:
 
rotate
(-1deg);
}
}
</style>

<script>
<!--  recoPick  START ---->
</script>

<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/943253288/?random=1651564389324&amp;cv=9&amp;fst=1651564389324&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=756&amp;u_w=1116&amp;u_ah=731&amp;u_aw=1116&amp;u_cd=24&amp;u_his=27&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmypage%2Fmymantomaninquiry&amp;ref=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmypage&amp;tiba=%EB%8D%94%ED%95%9C%EC%84%AC%EB%8B%B7%EC%BB%B4&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<style>
.paginate_button {
	display: inline;
}

.paginate_button a {
	padding: 10px;
}
</style>
<style id="ab-css-definitions-2-7-1">
.ab-pause-scrolling, body.ab-pause-scrolling, html.ab-pause-scrolling {
	overflow: hidden;
	touch-action: none
}

.ab-centering-div, .ab-iam-root.v3 {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	pointer-events: none;
	z-index: 1050;
	-webkit-tap-highlight-color: transparent
}

.ab-centering-div:focus, .ab-iam-root.v3:focus {
	outline: 0
}

.ab-centering-div.ab-effect-fullscreen, .ab-centering-div.ab-effect-html,
	.ab-centering-div.ab-effect-modal, .ab-iam-root.v3.ab-effect-fullscreen,
	.ab-iam-root.v3.ab-effect-html, .ab-iam-root.v3.ab-effect-modal {
	opacity: 0
}

.ab-centering-div.ab-effect-fullscreen.ab-show, .ab-centering-div.ab-effect-html.ab-show,
	.ab-centering-div.ab-effect-modal.ab-show, .ab-iam-root.v3.ab-effect-fullscreen.ab-show,
	.ab-iam-root.v3.ab-effect-html.ab-show, .ab-iam-root.v3.ab-effect-modal.ab-show
	{
	opacity: 1
}

.ab-centering-div.ab-effect-fullscreen.ab-show.ab-animate-in,
	.ab-centering-div.ab-effect-html.ab-show.ab-animate-in,
	.ab-centering-div.ab-effect-modal.ab-show.ab-animate-in, .ab-iam-root.v3.ab-effect-fullscreen.ab-show.ab-animate-in,
	.ab-iam-root.v3.ab-effect-html.ab-show.ab-animate-in, .ab-iam-root.v3.ab-effect-modal.ab-show.ab-animate-in
	{
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s
}

.ab-centering-div.ab-effect-fullscreen.ab-hide, .ab-centering-div.ab-effect-html.ab-hide,
	.ab-centering-div.ab-effect-modal.ab-hide, .ab-iam-root.v3.ab-effect-fullscreen.ab-hide,
	.ab-iam-root.v3.ab-effect-html.ab-hide, .ab-iam-root.v3.ab-effect-modal.ab-hide
	{
	opacity: 0
}

.ab-centering-div.ab-effect-fullscreen.ab-hide.ab-animate-out,
	.ab-centering-div.ab-effect-html.ab-hide.ab-animate-out,
	.ab-centering-div.ab-effect-modal.ab-hide.ab-animate-out, .ab-iam-root.v3.ab-effect-fullscreen.ab-hide.ab-animate-out,
	.ab-iam-root.v3.ab-effect-html.ab-hide.ab-animate-out, .ab-iam-root.v3.ab-effect-modal.ab-hide.ab-animate-out
	{
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s
}

.ab-centering-div.ab-effect-slide .ab-in-app-message, .ab-iam-root.v3.ab-effect-slide .ab-in-app-message
	{
	-webkit-transform: translateX(535px);
	-moz-transform: translateX(535px);
	-ms-transform: translateX(535px);
	transform: translateX(535px)
}

.ab-centering-div.ab-effect-slide.ab-show .ab-in-app-message,
	.ab-iam-root.v3.ab-effect-slide.ab-show .ab-in-app-message {
	-webkit-transform: translateX(0);
	-moz-transform: translateX(0);
	-ms-transform: translateX(0);
	transform: translateX(0)
}

.ab-centering-div.ab-effect-slide.ab-show.ab-animate-in .ab-in-app-message,
	.ab-iam-root.v3.ab-effect-slide.ab-show.ab-animate-in .ab-in-app-message
	{
	-webkit-transition: transform .5s ease-in-out;
	-moz-transition: transform .5s ease-in-out;
	-o-transition: transform .5s ease-in-out;
	transition: transform .5s ease-in-out
}

.ab-centering-div.ab-effect-slide.ab-hide .ab-in-app-message,
	.ab-iam-root.v3.ab-effect-slide.ab-hide .ab-in-app-message {
	-webkit-transform: translateX(535px);
	-moz-transform: translateX(535px);
	-ms-transform: translateX(535px);
	transform: translateX(535px)
}

.ab-centering-div.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-left,
	.ab-iam-root.v3.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-left
	{
	-webkit-transform: translateX(-535px);
	-moz-transform: translateX(-535px);
	-ms-transform: translateX(-535px);
	transform: translateX(-535px)
}

.ab-centering-div.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-up,
	.ab-iam-root.v3.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-up
	{
	-webkit-transform: translateY(-535px);
	-moz-transform: translateY(-535px);
	-ms-transform: translateY(-535px);
	transform: translateY(-535px)
}

.ab-centering-div.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-down,
	.ab-iam-root.v3.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-down
	{
	-webkit-transform: translateY(535px);
	-moz-transform: translateY(535px);
	-ms-transform: translateY(535px);
	transform: translateY(535px)
}

.ab-centering-div.ab-effect-slide.ab-hide.ab-animate-out .ab-in-app-message,
	.ab-iam-root.v3.ab-effect-slide.ab-hide.ab-animate-out .ab-in-app-message
	{
	-webkit-transition: transform .5s ease-in-out;
	-moz-transition: transform .5s ease-in-out;
	-o-transition: transform .5s ease-in-out;
	transition: transform .5s ease-in-out
}

.ab-centering-div .ab-ios-scroll-wrapper, .ab-iam-root.v3 .ab-ios-scroll-wrapper
	{
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	overflow: auto;
	pointer-events: all;
	touch-action: auto;
	-webkit-overflow-scrolling: touch
}

.ab-centering-div .ab-in-app-message, .ab-iam-root.v3 .ab-in-app-message
	{
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	position: fixed;
	text-align: center;
	-webkit-box-shadow: 0 0 4px rgba(0, 0, 0, .3);
	-moz-box-shadow: 0 0 4px rgba(0, 0, 0, .3);
	box-shadow: 0 0 4px rgba(0, 0, 0, .3);
	line-height: normal;
	letter-spacing: normal;
	font-family: 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial,
		'Lucida Grande', sans-serif;
	z-index: 1050;
	max-width: 100%;
	overflow: hidden;
	display: inline-block;
	pointer-events: all;
	color: #333
}

.ab-centering-div .ab-in-app-message.ab-no-shadow, .ab-iam-root.v3 .ab-in-app-message.ab-no-shadow
	{
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none
}

.ab-centering-div .ab-in-app-message :focus, .ab-centering-div .ab-in-app-message:focus,
	.ab-iam-root.v3 .ab-in-app-message :focus, .ab-iam-root.v3 .ab-in-app-message:focus
	{
	outline: 0
}

.ab-centering-div .ab-in-app-message.ab-clickable, .ab-iam-root.v3 .ab-in-app-message.ab-clickable
	{
	cursor: pointer
}

.ab-centering-div .ab-in-app-message.ab-background, .ab-iam-root.v3 .ab-in-app-message.ab-background
	{
	background-color: #fff
}

.ab-centering-div .ab-in-app-message .ab-close-button, .ab-iam-root.v3 .ab-in-app-message .ab-close-button
	{
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	background-color: transparent;
	background-repeat: no-repeat;
	background-origin: content-box;
	background-size: 15px;
	border: none;
	width: 15px;
	height: 15px;
	-webkit-border-radius: 7.5px;
	-moz-border-radius: 7.5px;
	border-radius: 7.5px;
	cursor: pointer;
	display: block;
	font-size: 15px;
	line-height: 0;
	padding-top: 15px;
	padding-right: 15px;
	padding-left: 10px;
	padding-bottom: 10px;
	position: absolute;
	right: 0;
	top: 0;
	text-align: center;
	z-index: 1060
}

.ab-centering-div .ab-in-app-message .ab-close-button svg, .ab-iam-root.v3 .ab-in-app-message .ab-close-button svg
	{
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease;
	fill: #9b9b9b
}

.ab-centering-div .ab-in-app-message .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button svg.ab-chevron {
	display: none
}

.ab-centering-div .ab-in-app-message .ab-close-button:active,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button:active {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-close-button:focus,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button:focus {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-close-button:hover,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button:hover {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-close-button:hover svg,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button:hover svg {
	fill-opacity: .8
}

.ab-centering-div .ab-in-app-message .ab-message-text, .ab-iam-root.v3 .ab-in-app-message .ab-message-text
	{
	line-height: 1.5;
	margin: 20px 25px;
	max-width: 100%;
	overflow: hidden;
	overflow-y: auto;
	vertical-align: text-bottom;
	word-wrap: break-word;
	white-space: pre-wrap
}

.ab-centering-div .ab-in-app-message .ab-message-text.start-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text.start-aligned {
	text-align: left;
	text-align: start
}

.ab-centering-div .ab-in-app-message .ab-message-text.end-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text.end-aligned {
	text-align: right;
	text-align: end
}

.ab-centering-div .ab-in-app-message .ab-message-text.center-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text.center-aligned {
	text-align: center
}

.ab-centering-div .ab-in-app-message .ab-message-text::-webkit-scrollbar,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text::-webkit-scrollbar
	{
	-webkit-appearance: none;
	width: 14px
}

.ab-centering-div .ab-in-app-message .ab-message-text::-webkit-scrollbar-thumb,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text::-webkit-scrollbar-thumb
	{
	-webkit-appearance: none;
	border: 4px solid transparent;
	background-clip: padding-box;
	-webkit-border-radius: 7px;
	-moz-border-radius: 7px;
	border-radius: 7px;
	background-color: rgba(0, 0, 0, .2)
}

.ab-centering-div .ab-in-app-message .ab-message-text::-webkit-scrollbar-button,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text::-webkit-scrollbar-button
	{
	width: 0;
	height: 0;
	display: none
}

.ab-centering-div .ab-in-app-message .ab-message-text::-webkit-scrollbar-corner,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text::-webkit-scrollbar-corner
	{
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-message-header, .ab-iam-root.v3 .ab-in-app-message .ab-message-header
	{
	letter-spacing: 0;
	margin: 0;
	font-weight: 700;
	display: block;
	font-size: 20px;
	margin-bottom: 10px;
	line-height: 1.3
}

.ab-centering-div .ab-in-app-message .ab-message-header.start-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-header.start-aligned {
	text-align: left;
	text-align: start
}

.ab-centering-div .ab-in-app-message .ab-message-header.end-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-header.end-aligned {
	text-align: right;
	text-align: end
}

.ab-centering-div .ab-in-app-message .ab-message-header.center-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-header.center-aligned {
	text-align: center
}

.ab-centering-div .ab-in-app-message.ab-fullscreen, .ab-centering-div .ab-in-app-message.ab-modal,
	.ab-centering-div .ab-in-app-message.ab-slideup, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal, .ab-iam-root.v3 .ab-in-app-message.ab-slideup
	{
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px
}

.ab-centering-div .ab-in-app-message.ab-slideup, .ab-iam-root.v3 .ab-in-app-message.ab-slideup
	{
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	cursor: pointer;
	overflow: hidden;
	word-wrap: break-word;
	text-overflow: ellipsis;
	font-size: 14px;
	font-weight: 700;
	margin: 20px;
	margin-top: calc(constant(safe-area-inset-top, 0)+ 20px);
	margin-right: calc(constant(safe-area-inset-right, 0)+ 20px);
	margin-bottom: calc(constant(safe-area-inset-bottom, 0)+ 20px);
	margin-left: calc(constant(safe-area-inset-left, 0)+ 20px);
	margin-top: calc(env(safe-area-inset-top, 0)+ 20px);
	margin-right: calc(env(safe-area-inset-right, 0)+ 20px);
	margin-bottom: calc(env(safe-area-inset-bottom, 0)+ 20px);
	margin-left: calc(env(safe-area-inset-left, 0)+ 20px);
	max-height: 150px;
	padding: 10px;
	right: 0;
	background-color: #efefef
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone {
	max-height: 66px;
	margin: 10px;
	margin-top: calc(constant(safe-area-inset-top, 0)+ 10px);
	margin-right: calc(constant(safe-area-inset-right, 0)+ 10px);
	margin-bottom: calc(constant(safe-area-inset-bottom, 0)+ 10px);
	margin-left: calc(constant(safe-area-inset-left, 0)+ 10px);
	margin-top: calc(env(safe-area-inset-top, 0)+ 10px);
	margin-right: calc(env(safe-area-inset-right, 0)+ 10px);
	margin-bottom: calc(env(safe-area-inset-bottom, 0)+ 10px);
	margin-left: calc(env(safe-area-inset-left, 0)+ 10px);
	max-width: 90%;
	max-width: calc(100% - 40px);
	min-width: 90%;
	min-width: calc(100% - 40px)
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-close-button
	{
	display: none
}

.ab-centering-div
 
.ab-in-app-message
.ab-slideup
.simulate-phone
 
.ab-close-button
 
svg
:not

	
(
.ab-chevron
 
),
.ab-iam-root
.v3
 
.ab-in-app-message
.ab-slideup
.simulate-phone
 
.ab-close-button
 
svg
:not

	
(
.ab-chevron
 
){
display
:
 
none


}
.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-close-button
	{
	display: block;
	height: 20px;
	padding: 0 20px 0 18px;
	pointer-events: none;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	width: 12px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-close-button svg.ab-chevron
	{
	display: inline
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-message-text
	{
	border-right-width: 40px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text
	{
	max-width: 100%;
	border-right-width: 10px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text span,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text span
	{
	max-height: 66px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text.ab-with-icon,
	.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text.ab-with-image,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text.ab-with-image
	{
	max-width: 80%;
	max-width: calc(100% - 50px - 5px - 10px - 25px)
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-image-area
	{
	width: 50px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-image-area img
	{
	max-width: 50px;
	max-height: 50px;
	width: auto
}

.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:active .ab-message-text,
	.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:focus .ab-message-text,
	.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:hover .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:active .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:focus .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:hover .ab-message-text
	{
	opacity: .8
}

.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:active .ab-close-button svg.ab-chevron,
	.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:focus .ab-close-button svg.ab-chevron,
	.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:hover .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:active .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:focus .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:hover .ab-close-button svg.ab-chevron
	{
	fill-opacity: .8
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	display: table-cell;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 25px 5px 10px;
	max-width: 430px;
	vertical-align: middle;
	margin: 0
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-message-text span,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text span {
	display: block;
	max-height: 150px;
	overflow: auto
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-message-text.ab-with-icon,
	.ab-centering-div .ab-in-app-message.ab-slideup .ab-message-text.ab-with-image,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text.ab-with-image
	{
	max-width: 365px;
	border-top: 0;
	border-bottom: 0
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	background-color: transparent;
	background-repeat: no-repeat;
	background-origin: content-box;
	background-size: 15px;
	border: none;
	width: 15px;
	height: 15px;
	-webkit-border-radius: 7.5px;
	-moz-border-radius: 7.5px;
	border-radius: 7.5px;
	cursor: pointer;
	display: block;
	font-size: 15px;
	line-height: 0;
	padding-top: 10px;
	padding-right: 10px;
	padding-left: 6.66666667px;
	padding-bottom: 6.66666667px;
	position: absolute;
	right: 0;
	top: 0;
	text-align: center;
	z-index: 1060
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button svg,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button svg {
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease;
	fill: #9b9b9b
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button svg.ab-chevron
	{
	display: none
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button:active,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button:active {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button:focus,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button:focus {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button:hover,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button:hover {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button:hover svg,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button:hover svg
	{
	fill-opacity: .8
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	display: table-cell;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 0 5px 5px;
	vertical-align: top;
	width: 60px;
	margin: 0
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-image-area.ab-icon-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area.ab-icon-area
	{
	width: auto
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area img {
	width: 100%
}

.ab-centering-div .ab-in-app-message.ab-fullscreen, .ab-centering-div .ab-in-app-message.ab-modal,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen, .ab-iam-root.v3 .ab-in-app-message.ab-modal
	{
	font-size: 14px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-image-area,
	.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area {
	position: relative;
	display: block;
	overflow: hidden
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-image-area .ab-center-cropped-img,
	.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area .ab-center-cropped-img,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-image-area .ab-center-cropped-img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area .ab-center-cropped-img
	{
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-icon,
	.ab-centering-div .ab-in-app-message.ab-modal .ab-icon, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-icon {
	margin-top: 20px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic {
	padding: 0
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-message-text,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-message-text {
	display: none
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-message-buttons,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-message-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-message-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-message-buttons
	{
	bottom: 0;
	left: 0
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-image-area,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-image-area {
	height: auto;
	margin: 0
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-image-area img,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-image-area img
	{
	display: block;
	top: 0;
	-webkit-transform: none;
	-moz-transform: none;
	-ms-transform: none;
	transform: none
}

.ab-centering-div .ab-in-app-message.ab-modal, .ab-iam-root.v3 .ab-in-app-message.ab-modal
	{
	padding-top: 20px;
	width: 450px;
	max-width: 450px;
	max-height: 720px
}

.ab-centering-div .ab-in-app-message.ab-modal.simulate-phone,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.simulate-phone {
	max-width: 91%;
	max-width: calc(100% - 30px)
}

.ab-centering-div .ab-in-app-message.ab-modal.simulate-phone.graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.simulate-phone.graphic .ab-image-area img
	{
	max-width: 91vw;
	max-width: calc(100vw - 30px)
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text {
	max-height: 660px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-image,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-image
	{
	max-height: 524.82758621px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-icon
	{
	max-height: 610px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons
	{
	margin-bottom: 93px;
	max-height: 587px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons.ab-with-image,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons.ab-with-image
	{
	max-height: 451.82758621px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons.ab-with-icon
	{
	max-height: 537px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area {
	margin-top: -20px;
	max-height: 155.17241379px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area img {
	max-width: 100%;
	max-height: 155.17241379px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area.ab-icon-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area.ab-icon-area
	{
	height: auto
}

.ab-centering-div .ab-in-app-message.ab-modal.graphic, .ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic
	{
	width: auto;
	overflow: hidden
}

.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-image-area {
	display: inline
}

.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-image-area img
	{
	max-height: 720px;
	max-width: 450px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen
	{
	width: 450px;
	max-height: 720px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.landscape,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape {
	width: 720px;
	max-height: 450px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.landscape .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape .ab-image-area
	{
	height: 225px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.landscape.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape.graphic .ab-image-area
	{
	height: 450px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.landscape .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape .ab-message-text
	{
	max-height: 112px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-message-text {
	max-height: 247px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-message-text.ab-with-buttons
	{
	margin-bottom: 93px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-image-area {
	height: 360px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-image-area
	{
	height: 720px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone {
	-webkit-transition: top none;
	-moz-transition: top none;
	-o-transition: top none;
	transition: top none;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	height: 100%;
	width: 100%;
	max-height: none;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transform: none;
	-moz-transform: none;
	-ms-transform: none;
	transform: none;
	height: auto !important
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-close-button
	{
	margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
	margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone .ab-image-area,
	.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-image-area
	{
	height: 50%
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone .ab-message-text
	{
	max-height: 48%;
	max-height: calc(50% - 20px - 20px)
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone .ab-message-text.ab-with-buttons
	{
	margin-bottom: 20px;
	max-height: 30%;
	max-height: calc(50% - 93px - 20px)
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-message-text.ab-with-buttons
	{
	max-height: 20%;
	max-height: calc(50% - 93px - 20px)
}

.ab-centering-div
 
.ab-in-app-message
.ab-fullscreen
.simulate-phone
:not
 
(
.graphic

	
),
.ab-iam-root
.v3
 
.ab-in-app-message
.ab-fullscreen
.simulate-phone
:not

	
(
.graphic
 
){
padding-bottom
:
 
0;
padding-bottom
:
 
constant
(safe-area-inset-bottom
,
0);
padding-bottom
:
 
env
(safe-area-inset-bottom
,
0)
}
.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone:not (.graphic
	 ) .ab-message-buttons, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone:not
	 (.graphic ) .ab-message-buttons {
	padding-top: 0;
	position: relative
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.graphic,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.graphic
	{
	display: block
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.graphic .ab-image-area
	{
	height: 100%
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.graphic .ab-message-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.graphic .ab-message-button
	{
	margin-bottom: 0;
	margin-bottom: constant(safe-area-inset-bottom, 0);
	margin-bottom: env(safe-area-inset-bottom, 0)
}

.ab-centering-div .ab-in-app-message.ab-html-message, .ab-iam-root.v3 .ab-in-app-message.ab-html-message
	{
	background-color: transparent;
	border: none;
	height: 100%;
	overflow: auto;
	position: relative;
	touch-action: auto;
	width: 100%
}

.ab-centering-div .ab-in-app-message .ab-message-buttons, .ab-iam-root.v3 .ab-in-app-message .ab-message-buttons
	{
	position: absolute;
	bottom: 0;
	width: 100%;
	padding: 17px 25px 30px 25px;
	z-index: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

.ab-centering-div .ab-in-app-message .ab-message-button, .ab-iam-root.v3 .ab-in-app-message .ab-message-button
	{
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	cursor: pointer;
	display: inline-block;
	font-size: 14px;
	font-weight: 700;
	height: 44px;
	line-height: normal;
	letter-spacing: normal;
	margin: 0;
	max-width: 100%;
	min-width: 80px;
	padding: 0 12px;
	position: relative;
	text-transform: none;
	width: 48%;
	width: calc(50% - 5px);
	border: 1px solid #1b78cf;
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease;
	overflow: hidden;
	word-wrap: break-word;
	text-overflow: ellipsis;
	word-wrap: normal;
	white-space: nowrap
}

.ab-centering-div .ab-in-app-message .ab-message-button:first-of-type,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:first-of-type {
	float: left;
	background-color: #fff;
	color: #1b78cf
}

.ab-centering-div .ab-in-app-message .ab-message-button:last-of-type,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:last-of-type {
	float: right;
	background-color: #1b78cf;
	color: #fff
}

.ab-centering-div .ab-in-app-message .ab-message-button:first-of-type:last-of-type,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:first-of-type:last-of-type
	{
	float: none;
	width: auto
}

.ab-centering-div .ab-in-app-message .ab-message-button:after,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-message-button:after,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:after {
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease
}

.ab-centering-div .ab-in-app-message .ab-message-button:hover,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:hover {
	opacity: .8
}

.ab-centering-div .ab-in-app-message .ab-message-button:active:after,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:active:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .08)
}

.ab-centering-div .ab-in-app-message .ab-message-button:focus:after,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:focus:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .15)
}

.ab-centering-div .ab-in-app-message .ab-message-button a, .ab-iam-root.v3 .ab-in-app-message .ab-message-button a
	{
	color: inherit;
	text-decoration: inherit
}

.ab-centering-div .ab-in-app-message img, .ab-iam-root.v3 .ab-in-app-message img
	{
	display: inline-block
}

.ab-centering-div .ab-in-app-message .ab-icon, .ab-iam-root.v3 .ab-in-app-message .ab-icon
	{
	display: inline-block;
	padding: 10px;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px
}

.ab-centering-div .ab-in-app-message .ab-icon .fa, .ab-iam-root.v3 .ab-in-app-message .ab-icon .fa
	{
	font-size: 30px;
	width: 30px
}

.ab-centering-div .ab-start-hidden, .ab-iam-root.v3 .ab-start-hidden {
	visibility: hidden
}

.ab-centering-div .ab-centered, .ab-centering-div.ab-centering-div .ab-modal,
	.ab-iam-root.v3 .ab-centered, .ab-iam-root.v3.ab-centering-div .ab-modal
	{
	margin: auto;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%)
}

.ab-email-capture, .ab-iam-root.v3 {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}

.ab-email-capture .ab-page-blocker, .ab-iam-root.v3 .ab-page-blocker {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 1040;
	pointer-events: all;
	background-color: rgba(51, 51, 51, .75)
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-email-capture-input {
	margin-bottom: 30px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-message-buttons ~.ab-message-text
	{
	max-height: 541px;
	margin-bottom: 160px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-message-buttons ~.ab-message-text.with-explanatory-link
	{
	max-height: 513px;
	margin-bottom: 188px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-image-area ~.ab-message-text
	{
	max-height: 385.82758621px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-image-area ~.ab-message-text.with-explanatory-link
	{
	max-height: 357.82758621px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-email-validation-error
	{
	margin-top: 62px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-explanatory-link {
	display: block
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-background,
	.ab-email-capture .ab-in-app-message.ab-modal .ab-mask {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: -1
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-close-button {
	line-height: normal
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-html-close-button {
	right: 3px;
	top: -1px;
	font-size: 34px;
	padding-top: 0
}

@media ( max-width :600px) {
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup {
		max-height: 66px;
		margin: 10px;
		margin-top: calc(constant(safe-area-inset-top, 0)+ 10px);
		margin-right: calc(constant(safe-area-inset-right, 0)+ 10px);
		margin-bottom: calc(constant(safe-area-inset-bottom, 0)+ 10px);
		margin-left: calc(constant(safe-area-inset-left, 0)+ 10px);
		margin-top: calc(env(safe-area-inset-top, 0)+ 10px);
		margin-right: calc(env(safe-area-inset-right, 0)+ 10px);
		margin-bottom: calc(env(safe-area-inset-bottom, 0)+ 10px);
		margin-left: calc(env(safe-area-inset-left, 0)+ 10px);
		max-width: 90%;
		max-width: calc(100% - 40px);
		min-width: 90%;
		min-width: calc(100% - 40px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button {
		display: none
	}
	.ab-iam-root
	.v3
	 
	.ab-in-app-message
	.ab-slideup
	 
	.ab-close-button
	 
	svg
	:not
	 
	(
	.ab-chevron
	
		
	){
	display
	:
	 
	none
	
	
}

.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable .ab-close-button
	{
	display: block;
	height: 20px;
	padding: 0 20px 0 18px;
	pointer-events: none;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	width: 12px
}

.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable .ab-close-button svg.ab-chevron
	{
	display: inline
}

.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable .ab-message-text
	{
	border-right-width: 40px
}

.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text {
	max-width: 100%;
	border-right-width: 10px
}

.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text span {
	max-height: 66px
}

.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text.ab-with-image
	{
	max-width: 80%;
	max-width: calc(100% - 50px - 5px - 10px - 25px)
}

.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area {
	width: 50px
}

.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area img {
	max-width: 50px;
	max-height: 50px;
	width: auto
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape
	{
	-webkit-transition: top none;
	-moz-transition: top none;
	-o-transition: top none;
	transition: top none;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	height: 100%;
	width: 100%;
	max-height: none;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transform: none;
	-moz-transform: none;
	-ms-transform: none;
	transform: none;
	height: auto !important
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape.landscape .ab-close-button
	{
	margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
	margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape.landscape .ab-image-area
	{
	height: 50%
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape .ab-message-text
	{
	max-height: 48%;
	max-height: calc(50% - 20px - 20px)
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape .ab-message-text.ab-with-buttons
	{
	margin-bottom: 20px;
	max-height: 30%;
	max-height: calc(50% - 93px - 20px)
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape.landscape .ab-message-text.ab-with-buttons
	{
	max-height: 20%;
	max-height: calc(50% - 93px - 20px)
}

.ab-iam-root
.v3
 
.ab-in-app-message
:not
 
(
.force-desktop
 
)
.ab-fullscreen
.landscape
:not

		
(
.graphic
 
),
.ab-iam-root
.v3
 
.ab-in-app-message
:not
 
(
.force-desktop
 
)
.ab-fullscreen
:not

		
(
.graphic
 
){
padding-bottom
:
 
0;
padding-bottom
:
 
constant
(safe-area-inset-bottom
,
0);
padding-bottom
:
 
env
(safe-area-inset-bottom
,
0)
}
.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape:not
		 (.graphic ) .ab-message-buttons, .ab-iam-root.v3 .ab-in-app-message:not
		 (.force-desktop ).ab-fullscreen:not (.graphic ) .ab-message-buttons {
	padding-top: 0;
	position: relative
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.graphic,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape.graphic
	{
	display: block
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape.graphic .ab-image-area
	{
	height: 100%
}

.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.graphic .ab-message-button,
	.ab-iam-root.v3 .ab-in-app-message:not (.force-desktop ).ab-fullscreen.landscape.graphic .ab-message-button
	{
	margin-bottom: 0;
	margin-bottom: constant(safe-area-inset-bottom, 0);
	margin-bottom: env(safe-area-inset-bottom, 0)
}

}
@media ( max-width :480px) {
	.ab-email-capture
	 
	.ab-in-app-message
	.ab-modal
	:not
	 
	(
	.force-desktop
	 
	),
	.ab-iam-root
	.v3
	 
	.ab-in-app-message
	.ab-modal
	:not
	 
	(
	.force-desktop
	 
	){
	max-width
	:
	 
	91%;
	max-width
	:
	 
	calc
	(100%
	 
	-
	30
	px
	)
	
	
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop ).graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal:not (.force-desktop ).graphic .ab-image-area img
	{
	max-width: 91vw;
	max-width: calc(100vw - 30px)
}

}
@media ( max-height :750px) {
	.ab-email-capture
	 
	.ab-in-app-message
	.ab-modal
	:not
	 
	(
	.force-desktop
	 
	),
	.ab-iam-root
	.v3
	 
	.ab-in-app-message
	.ab-modal
	:not
	 
	(
	.force-desktop
	 
	){
	max-height
	:
	 
	91%;
	max-height
	:
	 
	calc
	(100%
	 
	-
	30
	px
	)
	
	
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop ).graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal:not (.force-desktop ).graphic .ab-image-area img
	{
	max-height: 91vh;
	max-height: calc(100vh - 30px)
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop )
	.ab-message-text, .ab-iam-root.v3 .ab-in-app-message.ab-modal:not (.force-desktop 
	) .ab-message-text {
	max-height: 65vh;
	max-height: calc(100vh - 30px - 60px)
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop )
	.ab-message-text.ab-with-image, .ab-iam-root.v3 .ab-in-app-message.ab-modal:not 
	(.force-desktop ) .ab-message-text.ab-with-image {
	max-height: 45vh;
	max-height: calc(100vh - 30px - 155.17241379310346px - 40px)
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop )
	.ab-message-text.ab-with-icon, .ab-iam-root.v3 .ab-in-app-message.ab-modal:not 
	(.force-desktop ) .ab-message-text.ab-with-icon {
	max-height: 45vh;
	max-height: calc(100vh - 30px - 70px - 40px)
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop )
	.ab-message-text.ab-with-buttons, .ab-iam-root.v3 .ab-in-app-message.ab-modal:not 
	(.force-desktop ) .ab-message-text.ab-with-buttons {
	max-height: 50vh;
	max-height: calc(100vh - 30px - 93px - 40px)
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop )
	.ab-message-text.ab-with-buttons.ab-with-image, .ab-iam-root.v3 .ab-in-app-message.ab-modal:not 
	(.force-desktop ) .ab-message-text.ab-with-buttons.ab-with-image {
	max-height: 30vh;
	max-height: calc(100vh - 30px - 155.17241379310346px - 93px - 20px)
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop )
	.ab-message-text.ab-with-buttons.ab-with-icon, .ab-iam-root.v3 .ab-in-app-message.ab-modal:not 
	(.force-desktop ) .ab-message-text.ab-with-buttons.ab-with-icon {
	max-height: 30vh;
	max-height: calc(100vh - 30px - 70px - 93px - 20px)
}

}
@media ( min-width :601px) {
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-image-area img {
		max-height: 100%;
		max-width: 100%
	}
}

@media ( max-height :750px) and (min-width:601px) {
	.ab-iam-root
	.v3
	 
	.ab-in-app-message
	.ab-fullscreen
	:not
	 
	(
	.landscape
	 
	)
	:not
	 
	(
	.force-desktop
	
		
	){
	-webkit-transition
	:
	 
	top
	 
	none
	;
	
		
	-moz-transition
	:
	 
	top
	 
	none
	;
	
		
	-o-transition
	:
	 
	top
	 
	none
	;
	
		
	transition
	:
	 
	top
	 
	none
	;
	
		
	top
	:
	 
	0;
	right
	:
	 
	0;
	bottom
	:
	 
	0;
	left
	:
	 
	0;
	height
	:
	 
	100%;
	width
	:
	 
	100%;
	max-height
	:
	 
	none
	;
	
		
	-webkit-border-radius
	:
	 
	0;
	-moz-border-radius
	:
	 
	0;
	border-radius
	:
	 
	0;
	-webkit-transform
	:
	 
	none
	;
	
		
	-moz-transform
	:
	 
	none
	;
	
		
	-ms-transform
	:
	 
	none
	;
	
		
	transform
	:
	 
	none
	;
	
		
	height
	:
	 
	auto
	 
	!
	important
	;
	
		
	width
	:
	 
	450
	px
	
	
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ).landscape .ab-close-button {
	margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
	margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ) .ab-image-area, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not
		 (.landscape ):not (.force-desktop ).landscape .ab-image-area {
	height: 50%
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ) .ab-message-text {
	max-height: 48%;
	max-height: calc(50% - 20px - 20px)
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ) .ab-message-text.ab-with-buttons {
	margin-bottom: 20px;
	max-height: 30%;
	max-height: calc(50% - 93px - 20px)
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ).landscape .ab-message-text.ab-with-buttons {
	max-height: 20%;
	max-height: calc(50% - 93px - 20px)
}

.ab-iam-root
.v3
 
.ab-in-app-message
.ab-fullscreen
:not
 
(
.landscape
 
)
:not
 
(
.force-desktop

		
)
:not
 
(
.graphic
 
){
padding-bottom
:
 
0;
padding-bottom
:
 
constant
(safe-area-inset-bottom
,
0);
padding-bottom
:
 
env
(safe-area-inset-bottom
,
0)
}
.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ):not (.graphic ) .ab-message-buttons {
	padding-top: 0;
	position: relative
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ).graphic {
	display: block
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ).graphic .ab-image-area {
	height: 100%
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not (.landscape ):not 
	(.force-desktop
		 ).graphic .ab-message-button {
	margin-bottom: 0;
	margin-bottom: constant(safe-area-inset-bottom, 0);
	margin-bottom: env(safe-area-inset-bottom, 0)
}

}
@media ( max-height :480px) {
	.ab-iam-root
	.v3
	 
	.ab-in-app-message
	.ab-fullscreen
	.landscape
	:not
	 
	(
	.force-desktop
	
		
	){
	-webkit-transition
	:
	 
	top
	 
	none
	;
	
		
	-moz-transition
	:
	 
	top
	 
	none
	;
	
		
	-o-transition
	:
	 
	top
	 
	none
	;
	
		
	transition
	:
	 
	top
	 
	none
	;
	
		
	top
	:
	 
	0;
	right
	:
	 
	0;
	bottom
	:
	 
	0;
	left
	:
	 
	0;
	height
	:
	 
	100%;
	width
	:
	 
	100%;
	max-height
	:
	 
	none
	;
	
		
	-webkit-border-radius
	:
	 
	0;
	-moz-border-radius
	:
	 
	0;
	border-radius
	:
	 
	0;
	-webkit-transform
	:
	 
	none
	;
	
		
	-moz-transform
	:
	 
	none
	;
	
		
	-ms-transform
	:
	 
	none
	;
	
		
	transform
	:
	 
	none
	;
	
		
	height
	:
	 
	auto
	 
	!
	important
	
	
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).landscape .ab-close-button {
	margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
	margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ) .ab-image-area, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not
		 (.force-desktop ).landscape .ab-image-area {
	height: 50%
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ) .ab-message-text {
	max-height: 48%;
	max-height: calc(50% - 20px - 20px)
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ) .ab-message-text.ab-with-buttons {
	margin-bottom: 20px;
	max-height: 30%;
	max-height: calc(50% - 93px - 20px)
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).landscape .ab-message-text.ab-with-buttons {
	max-height: 20%;
	max-height: calc(50% - 93px - 20px)
}

.ab-iam-root
.v3
 
.ab-in-app-message
.ab-fullscreen
.landscape
:not
 
(
.force-desktop

		
)
:not
 
(
.graphic
 
){
padding-bottom
:
 
0;
padding-bottom
:
 
constant
(safe-area-inset-bottom
,
0);
padding-bottom
:
 
env
(safe-area-inset-bottom
,
0)
}
.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ):not (.graphic ) .ab-message-buttons {
	padding-top: 0;
	position: relative
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).graphic {
	display: block
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).graphic .ab-image-area {
	height: 100%
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).graphic .ab-message-button {
	margin-bottom: 0;
	margin-bottom: constant(safe-area-inset-bottom, 0);
	margin-bottom: env(safe-area-inset-bottom, 0)
}

}
@media ( max-width :750px) {
	.ab-iam-root
	.v3
	 
	.ab-in-app-message
	.ab-fullscreen
	.landscape
	:not
	 
	(
	.force-desktop
	
		
	){
	-webkit-transition
	:
	 
	top
	 
	none
	;
	
		
	-moz-transition
	:
	 
	top
	 
	none
	;
	
		
	-o-transition
	:
	 
	top
	 
	none
	;
	
		
	transition
	:
	 
	top
	 
	none
	;
	
		
	top
	:
	 
	0;
	right
	:
	 
	0;
	bottom
	:
	 
	0;
	left
	:
	 
	0;
	height
	:
	 
	100%;
	width
	:
	 
	100%;
	max-height
	:
	 
	none
	;
	
		
	-webkit-border-radius
	:
	 
	0;
	-moz-border-radius
	:
	 
	0;
	border-radius
	:
	 
	0;
	-webkit-transform
	:
	 
	none
	;
	
		
	-moz-transform
	:
	 
	none
	;
	
		
	-ms-transform
	:
	 
	none
	;
	
		
	transform
	:
	 
	none
	;
	
		
	height
	:
	 
	auto
	 
	!
	important
	
	
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).landscape .ab-close-button {
	margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
	margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ) .ab-image-area, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not
		 (.force-desktop ).landscape .ab-image-area {
	height: 50%
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ) .ab-message-text {
	max-height: 48%;
	max-height: calc(50% - 20px - 20px)
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ) .ab-message-text.ab-with-buttons {
	margin-bottom: 20px;
	max-height: 30%;
	max-height: calc(50% - 93px - 20px)
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).landscape .ab-message-text.ab-with-buttons {
	max-height: 20%;
	max-height: calc(50% - 93px - 20px)
}

.ab-iam-root
.v3
 
.ab-in-app-message
.ab-fullscreen
.landscape
:not
 
(
.force-desktop

		
)
:not
 
(
.graphic
 
){
padding-bottom
:
 
0;
padding-bottom
:
 
constant
(safe-area-inset-bottom
,
0);
padding-bottom
:
 
env
(safe-area-inset-bottom
,
0)
}
.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ):not (.graphic ) .ab-message-buttons {
	padding-top: 0;
	position: relative
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).graphic {
	display: block
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).graphic .ab-image-area {
	height: 100%
}

.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not (.force-desktop
		 ).graphic .ab-message-button {
	margin-bottom: 0;
	margin-bottom: constant(safe-area-inset-bottom, 0);
	margin-bottom: env(safe-area-inset-bottom, 0)
}

}
body>.ab-feed {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	width: 421px;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}

body>.ab-feed .ab-feed-body {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	border: none;
	border-left: 1px solid #d0d0d0;
	padding-top: 58px;
	min-height: 100%
}

body>.ab-feed .ab-no-cards-message {
	position: absolute;
	width: 100%;
	margin-left: -20px;
	top: 40%
}

.ab-feed {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-box-shadow: 0 1px 7px 1px rgba(66, 82, 113, .15);
	-moz-box-shadow: 0 1px 7px 1px rgba(66, 82, 113, .15);
	box-shadow: 0 1px 7px 1px rgba(66, 82, 113, .15);
	width: 402px;
	background-color: #eee;
	font-family: 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial,
		'Lucida Grande', sans-serif;
	font-size: 13px;
	line-height: 130%;
	letter-spacing: normal;
	overflow-y: auto;
	overflow-x: visible;
	z-index: 1050;
	-webkit-overflow-scrolling: touch
}

.ab-feed :focus, .ab-feed:focus {
	outline: 0
}

.ab-feed .ab-feed-body {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	border: 1px solid #d0d0d0;
	border-top: none;
	padding: 20px 20px 0 20px
}

.ab-feed.ab-effect-slide {
	-webkit-transform: translateX(450px);
	-moz-transform: translateX(450px);
	-ms-transform: translateX(450px);
	transform: translateX(450px);
	-webkit-transition: transform .5s ease-in-out;
	-moz-transition: transform .5s ease-in-out;
	-o-transition: transform .5s ease-in-out;
	transition: transform .5s ease-in-out
}

.ab-feed.ab-effect-slide.ab-show {
	-webkit-transform: translateX(0);
	-moz-transform: translateX(0);
	-ms-transform: translateX(0);
	transform: translateX(0)
}

.ab-feed.ab-effect-slide.ab-hide {
	-webkit-transform: translateX(450px);
	-moz-transform: translateX(450px);
	-ms-transform: translateX(450px);
	transform: translateX(450px)
}

.ab-feed .ab-card {
	position: relative;
	-webkit-box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	-moz-box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	width: 100%;
	border: 1px solid #d0d0d0;
	margin-bottom: 20px;
	overflow: hidden;
	background-color: #fff;
	-webkit-transition: height .4s ease-in-out, margin .4s ease-in-out;
	-moz-transition: height .4s ease-in-out, margin .4s ease-in-out;
	-o-transition: height .4s ease-in-out, margin .4s ease-in-out;
	transition: height .4s ease-in-out, margin .4s ease-in-out
}

.ab-feed .ab-card .ab-pinned-indicator {
	position: absolute;
	right: 0;
	top: 0;
	margin-right: -1px;
	width: 0;
	height: 0;
	border-style: solid;
	border-width: 0 24px 24px 0;
	border-color: transparent #1676d0 transparent transparent
}

.ab-feed .ab-card .ab-pinned-indicator .fa-star {
	position: absolute;
	right: -21px;
	top: 2px;
	font-size: 9px;
	color: #fff
}

.ab-feed .ab-card.ab-effect-card.ab-hide {
	-webkit-transition: all .5s ease-in-out;
	-moz-transition: all .5s ease-in-out;
	-o-transition: all .5s ease-in-out;
	transition: all .5s ease-in-out
}

.ab-feed .ab-card.ab-effect-card.ab-hide.ab-swiped-left {
	-webkit-transform: translateX(-450px);
	-moz-transform: translateX(-450px);
	-ms-transform: translateX(-450px);
	transform: translateX(-450px)
}

.ab-feed .ab-card.ab-effect-card.ab-hide.ab-swiped-right {
	-webkit-transform: translateX(450px);
	-moz-transform: translateX(450px);
	-ms-transform: translateX(450px);
	transform: translateX(450px)
}

.ab-feed
 
.ab-card
.ab-effect-card
.ab-hide
:not
 
(
.ab-swiped-left
 
)
:not
 
(
.ab-swiped-right

	
){
opacity
:
 
0
}
.ab-feed .ab-card .ab-close-button {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	background-color: transparent;
	background-repeat: no-repeat;
	background-origin: content-box;
	background-size: 15px;
	border: none;
	width: 15px;
	height: 15px;
	-webkit-border-radius: 7.5px;
	-moz-border-radius: 7.5px;
	border-radius: 7.5px;
	cursor: pointer;
	display: block;
	font-size: 15px;
	line-height: 0;
	padding-top: 15px;
	padding-right: 15px;
	padding-left: 10px;
	padding-bottom: 10px;
	position: absolute;
	right: 0;
	top: 0;
	text-align: center;
	z-index: 1060;
	opacity: 0;
	-webkit-transition: .5s;
	-moz-transition: .5s;
	-o-transition: .5s;
	transition: .5s
}

.ab-feed .ab-card .ab-close-button svg {
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease;
	fill: #9b9b9b
}

.ab-feed .ab-card .ab-close-button svg.ab-chevron {
	display: none
}

.ab-feed .ab-card .ab-close-button:active {
	background-color: transparent
}

.ab-feed .ab-card .ab-close-button:focus {
	background-color: transparent
}

.ab-feed .ab-card .ab-close-button:hover {
	background-color: transparent
}

.ab-feed .ab-card .ab-close-button:hover svg {
	fill-opacity: .8
}

.ab-feed .ab-card .ab-close-button:hover {
	opacity: 1
}

.ab-feed .ab-card .ab-close-button:focus {
	opacity: 1
}

.ab-feed .ab-card a {
	color: inherit;
	text-decoration: none
}

.ab-feed .ab-card a:hover {
	text-decoration: underline
}

.ab-feed .ab-card .ab-image-area {
	display: inline-block;
	vertical-align: top;
	line-height: 0;
	overflow: hidden;
	width: 100%;
	-webkit-box-sizing: initial;
	-moz-box-sizing: initial;
	box-sizing: initial
}

.ab-feed .ab-card .ab-image-area img {
	height: auto;
	width: 100%
}

.ab-feed .ab-card.ab-banner .ab-card-body {
	display: none
}

.ab-feed .ab-card .ab-card-body {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	display: inline-block;
	width: 100%;
	position: relative
}

.ab-feed .ab-card .ab-unread-indicator {
	position: absolute;
	bottom: 0;
	margin-right: -1px;
	width: 100%;
	height: 5px;
	background-color: #1676d0
}

.ab-feed .ab-card .ab-unread-indicator.read {
	background-color: transparent
}

.ab-feed .ab-card .ab-title {
	letter-spacing: 0;
	margin: 0;
	font-weight: 700;
	display: block;
	overflow: hidden;
	word-wrap: break-word;
	text-overflow: ellipsis;
	font-size: 18px;
	line-height: 130%;
	font-family: 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial,
		'Lucida Grande', sans-serif;
	padding: 20px 25px 0 25px
}

.ab-feed .ab-card .ab-description {
	color: #545454;
	padding: 15px 25px 20px 25px;
	word-wrap: break-word;
	white-space: pre-wrap
}

.ab-feed .ab-card .ab-description.ab-no-title {
	padding-top: 20px
}

.ab-feed .ab-card .ab-url-area {
	color: #1676d0;
	margin-top: 12px;
	font-family: 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial,
		'Lucida Grande', sans-serif
}

.ab-feed .ab-card.ab-classic-card .ab-card-body {
	min-height: 40px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-card-body {
	min-height: 100px;
	padding-left: 72px
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-image-area {
	width: 60px;
	height: 60px;
	padding: 25px 0 25px 25px;
	position: absolute
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-image-area img {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	width: 60px;
	height: 60px
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-title {
	background-color: transparent;
	font-size: 16px
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-description {
	padding-top: 10px
}

.ab-feed .ab-card.ab-control-card {
	height: 0;
	width: 0;
	margin: 0;
	border: 0
}

.ab-feed .ab-feed-buttons-wrapper {
	position: relative;
	background-color: #282828;
	height: 38px;
	-webkit-box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	-moz-box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	z-index: 1
}

.ab-feed .ab-feed-buttons-wrapper .ab-close-button, .ab-feed .ab-feed-buttons-wrapper .ab-refresh-button
	{
	cursor: pointer;
	color: #fff;
	font-size: 18px;
	margin: 10px;
	-webkit-transition: .2s;
	-moz-transition: .2s;
	-o-transition: .2s;
	transition: .2s
}

.ab-feed .ab-feed-buttons-wrapper .ab-close-button:hover, .ab-feed .ab-feed-buttons-wrapper .ab-refresh-button:hover
	{
	font-size: 22px
}

.ab-feed .ab-feed-buttons-wrapper .ab-close-button {
	float: right;
	margin-top: 9px
}

.ab-feed .ab-feed-buttons-wrapper .ab-close-button:hover {
	margin-top: 6px;
	margin-right: 9px
}

.ab-feed .ab-feed-buttons-wrapper .ab-refresh-button {
	margin-left: 12px
}

.ab-feed .ab-feed-buttons-wrapper .ab-refresh-button:hover {
	margin-top: 8px;
	margin-left: 10px
}

.ab-feed .ab-no-cards-message {
	text-align: center;
	margin-bottom: 20px
}

@media ( max-width :600px) {
	body>.ab-feed {
		width: 100%
	}
}
</style>
<script src="https://static.uni1id.com/jsf/common/enp_uni_id_adver.js"
	type="text/javascript" defer="" async=""></script>
<script
	src="https://cdn.megadata.co.kr/js/socialLink/social_sns_config_min.js"
	type="text/javascript" defer="" async=""></script>
</head>

<body>

	<%@include file="../../views/includes/qna_header.jsp"%>
	<script>
   var arkQuery = $.noConflict(true);
</script>
	<div id="bodyWrap">
		<h3 class="cnts_title">
			<span id="menuTitle">상품 QnA</span>
		</h3>
		<div class="sub_container">
			<!-- lnb -->
			<div class="lnb_wrap">
				<h4>
					<a href="/ko/mypage">마이페이지<!-- 마이페이지 --></a>
				</h4>
				<div class="lnb">
					<dl>
						<dt>주문조회</dt>
						<dd>
							<a href="/ko/mypage/order/myorders">주문/배송/반품/취소</a>
						</dd>
					</dl>
					<dl>
						<dt>혜택관리</dt>
						<dd>
							<a href="/ko/mypage/voucher">나의 쿠폰<!-- 쿠폰함 --></a>
						</dd>
					</dl>
					<dl>
						<dt>나의 상품관리</dt>
						<dd>
							<a href="/ko/mypage/myWish">위시리스트<!-- 위시리스트 --></a>
						</dd>
						<dd>
							<a href="/ko/mypage/rsalarm">재입고 알림<!-- 재입고알림 --></a>
						</dd>
					</dl>
					<dl>
						<dt>나의 정보관리</dt>
						<dd>
							<a href="/ko/mypage/personInfomationChangePWCheck">개인정보 변경/탈퇴</a>
						</dd>
						<dd>
							<a href="/ko/mypage/shoppingAddressPWCheck">배송지 관리</a>
						</dd>
						<dd>
							<a href="/ko/mypage/oneClick">원클릭 결제 관리</a>
						</dd>
					</dl>
					<dl>
						<dt>나의 활동관리</dt>
						<!-- <dd><a href="#">회원등급</a></dd> -->
						<dd>
							<a href="/ko/mypage/myreview">내 상품평</a>
						</dd>
						<dd>
							<a href="/qna/list">상품 Q&amp;A</a>
						</dd>
						<dd>
							<a href="/ko/mypage/mymantomaninquiry">1:1 문의</a>
						</dd>
						<!-- <dd><a href="#">이벤트 참여현황</a></dd> -->
					</dl>
				</div>
				<!-- ph_guide -->
				<div class="ph_guide">
					<p class="tlt">고객센터 운영 안내</p>
					<p class="phone">
						1800-5700<span style="color: #c69c6d;" class="txt">(유료)</span>
					</p>
					<p class="txt">
						평일(월~금)<br>am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span>
					</p>
					<a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com
					</a>
				</div>
				<!-- //ph_guide -->
			</div>
			<!-- //lnb -->
			<!-- cnts -->
			<div class="sub_cnts">


				<style type="text/css">
tr.hidden {
	display: none;
}
</style>
				<!-- 검색 처리 form -->
				<div class='row'>
					<div class="search_wrap">
						<form id='searchForm' action="/qna/list" method='get'>
						<!-- 검색 필터 선택 -->
							<select name='type'>
								<option value="" <c:out value="${pageMaker.cri.type == null?'selected':''}"/> />--</option>
								<option value="T"<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/> />제목</option>
								<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/> />내용</option>
								<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/> />작성자</option>
								<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/> />제목/내용</option>
								<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/> />제목/작성자</option>
								<option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/> />제목/내용/작성자</option>
							</select>
							
							<!-- 검색 키워드 입력 -->
							<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'> 
							<!-- pageNum, amount 값 전달 -->
							<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>'>
							<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>'>
							<button class='btn_search none'>검색</button>
						</form>
						<!--end from  -->
					</div>
				</div>
				<!-- end  검색 처리 form-->

				<div class="title_wrap mt50">
					<h4 class="float_left">QnA 게시판</h4>
					<p class="txt_line">상품에 대한 QnA를 자유롭게 남겨주세요.</p>
					<div class="btn_wrap">
						<a href="/qna/register" class="btn add_ss mr0">QnA작성하기</a>
					</div>
				</div>
				<!-- Table -->
				<div class="tblwrap">
					<table class="tbl_ltype">
						<caption>&gt; QnA 목록</caption>
						<colgroup>
							<col style="width: 100px">
							<col style="width: 140px">
							<col>
							<col style="width: 100px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">글번호</th>
								<th scope="col">작성자</th>
								<th scope="col">글제목</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>

						<tbody id="listBody">
							<!-- 게시글테이블  -->
							<!-- 게시글이 없는 경우  -->
							<c:if test="${empty list }">
								<tr>
									<td colspan="4" class="no_data">등록된 게시글이 없습니다.</td>
								</tr>
							</c:if>
							<!-- 게시글이 있는 경우  -->
							<c:if test="${not empty list }">
								<c:forEach items="${list }" var="qna">
									<tr>
										<td><c:out value="${qna.qid }" /></td>
										<td><c:out value="${qna.mid }" /></td>
										<td><a
											href='/qna/get?qid=<c:out value="${qna.qid }"/>&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}'>
												<c:out value="${qna.qtitle }" />
										</a></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${qna.qdate }" /></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
				<!-- //Table -->
				<!--paging-->
				<div class="paging">
					<!--페이지 번호 처리  -->

					<ul class="pagination">

						<!-- 이전 페이지가 있는 경우 -->
						<c:if test="${pageMaker.prev}">
							<!-- 이전 버튼 -->
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage - 1}">Previous</a></li>
						</c:if>

						<!-- 1~10 버튼 -->
						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">

							<!-- 현제 페이지인 경우 -->
							<c:if test="${pageMaker.cri.pageNum eq num }">
								<li class="paginate_button"><a href="${num}"
									style="color: #be9e7c;">${num}</a></li>
							</c:if>
							
							<!--현재 페이지가 아닌 경우 -->
							<c:if test="${pageMaker.cri.pageNum ne num }">
								<li class="paginate_button"><a href="${num}">${num}</a></li>
							</c:if>
						</c:forEach>

						<!-- 다음 페이지가 있는 경우 -->
						<c:if test="${pageMaker.next}">
							<!-- 다음 버튼 -->
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1}">Next</a></li>
						</c:if>

					</ul>
					<!--  end Pagination -->
					
					<!-- 페이지 번호 form START -->
					<form id='actionForm' action="/qna/list" method='get'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'> 
						<input type='hidden' name='amount' value='${pageMaker.cri.amount}'> 
						<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'> 
						<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>

					</form>
					<!-- 페이지 번호 form END -->
					<!--페이지 번호 처리  끝-->
				</div>
				<!--//paging-->
			</div>
		</div>
	</div>


	<!-- 푸터 시작 -->
	<%@include file="../../views/includes/qna_footer.jsp"%>
	<script type="text/javascript">
	$(document)
	.ready(
		function() {
			
			//페이징 버튼 처리
			var actionForm = $("#actionForm"); //폼등록
			$(".paginate_button a").on( "click",function(e) {
				e.preventDefault(); //<a> 작동 중지
				console.log('click');
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit(); //form 제출
			});

			
			//검색버튼 이벤트 처리
			var searchForm = $('#searchForm');
			 $("#searchForm button").on("click", function(e){			
				 //검색 종류 선택 안했을경우
			     if(!searchForm.find("option:selected").val()){
			         alert("검색종류를 선택하세요");
			         return false; //전송 막기
			     }			 
				 
			     //키워드 입력 안했을경우
			     if(!searchForm.find("input[name='keyword']").val()){
			         alert("키워드를 입력하세요");
			         return false; //전송 막기
			      }
			     
			      //페이지 1페이지로 이동 처리
			     searchForm.find("input[name='pageNum']").val("1");	
			     e.preventDefault(); //	새로 실행 금지		      
			     searchForm.submit(); //form 제출		      
			  });
	
			});//  end ready
</script>
</body>
</html>
