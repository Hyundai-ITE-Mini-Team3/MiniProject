<!-- QnA 게시판 글 조회 페이지 (작성자: 진영서) -->

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
	href="/resources/css/font_443.css" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/common.css?20220401" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/layout.css?20220331" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/popup.css?20210225" media="all">
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery-ui.min.css" media="all">
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
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


<script type="text/javascript"
	src="/resources/js/html5shiv-printshiv.js"></script>


<script type="text/javascript" src="/resources/js/videojs-ie8.min.js"></script>



<script type="text/javascript" src="/resources/js/makePCookie.js"></script>


<script type="text/javascript" src="/resources/js/netfunnel.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="/resources/js/netfunnel_skin.js"
	charset="UTF-8"></script>

<script type="text/javascript" src="/resources/js/unorm.js"></script>

<script type="text/javascript" src="/resources/js/appboy.min.js"></script>


<script>


var playItem = ""; 
 

var playMapleItem = ""; 

<!--  recoPick  START ---->


</script>



<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/943253288/?random=1651564389324&amp;cv=9&amp;fst=1651564389324&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=756&amp;u_w=1116&amp;u_ah=731&amp;u_aw=1116&amp;u_cd=24&amp;u_his=27&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmypage%2Fmymantomaninquiry&amp;ref=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmypage&amp;tiba=%EB%8D%94%ED%95%9C%EC%84%AC%EB%8B%B7%EC%BB%B4&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
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
} .ab-centering-div .ab-in-app-message .ab-slideup .simulate-phone .ab-close-button svg :not
 ( .ab-chevron ) , .ab-iam-root .v3 .ab-in-app-message .ab-slideup .simulate-phone .ab-close-button svg :not(.ab-chevron){display:none}
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

.ab-centering-div .ab-in-app-message .ab-fullscreen .simulate-phone:not
( .graphic), .ab-iam-root .v3 .ab-in-app-message .ab-fullscreen .simulate-phone:not
(.graphic){
	padding-bottom:	0;
	padding-bottom: constant(safe-area-inset-bottom,0);
	padding-bottom:	env(safe-area-inset-bottom,0)
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
	.ab-iam-root .v3 .ab-in-app-message .ab-slideup .ab-close-button svg:not
	(.ab-chevron){
		display:none
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

.ab-iam-root .v3 .ab-in-app-message:not
(.force-desktop)
.ab-fullscreen .landscape:not(
.graphic), .ab-iam-root .v3 .ab-in-app-message:not
(.force-desktop)
.ab-fullscreen:not
(.graphic){
	padding-bottom:0;
	padding-bottom:constant
(safe-area-inset-bottom, 0);
	padding-bottom:env
(safe-area-inset-bottom,0)
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
	.ab-email-capture .ab-in-app-message .ab-modal :not
	( .force-desktop ),
	.ab-iam-root .v3 .ab-in-app-message .ab-modal :not
	(.force-desktop )
	max-width : 91%;
	max-width : calc (100% - 30 px )
}

.ab-email-capture .ab-in-app-message.ab-modal:not (.force-desktop ).graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal:not (.force-desktop ).graphic .ab-image-area img
	{
	max-width: 91vw;
	max-width: calc(100vw - 30px)
}

}
@media ( max-height :750px) {
	.ab-email-capture .ab-in-app-message .ab-modal:not (.force-desktop),
	.ab-iam-root .v3 .ab-in-app-message .ab-modal :not(.force-desktop ){
	max-height :91%;
	max-height : calc (100% - 30px )
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
	.ab-iam-root .v3 .ab-in-app-message .ab-fullscreen :not(.landscape) :not (.force-desktop)
	{
		-webkit-transition:top none;
		-moz-transition:top none;
		-o-transition:top none;
		transition:top none;
		top:0;
		right:0;
		bottom:0;
		left:0;
		height:100%;
		width:100%;
		max-height:none;
		-webkit-border-radius:0;
		-moz-border-radius:0;
		border-radius:0;
		-webkit-transform:none;
		-moz-transform:none;
		-ms-transform:none;
		transform:none;
		height:auto !important;
		width:450px
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

.ab-iam-root .v3 .ab-in-app-message .ab-fullscreen :not (.landscape):not (.force-desktop):not (.graphic){
padding-bottom:0;
padding-bottom:constant (safe-area-inset-bottom,0);
padding-bottom:env (safe-area-inset-bottom,0)
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
	.ab-iam-root .v3 .ab-in-app-message .ab-fullscreen .landscape :not(.force-desktop){
	-webkit-transition:top none;
	-moz-transition:top none;
	-o-transition:top none;
	transition:top none;
	top:0;
	right:0;
	bottom:0;
	left:0;
	height:100%;
	width:100%;
	max-height:none;
	-webkit-border-radius:0;
	-moz-border-radius:0;
	border-radius:0;
	-webkit-transform:none;
	-moz-transform:none;
	-ms-transform:none;
	transform:none;
	height:auto!important
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

.ab-iam-root .v3 .ab-in-app-message .ab-fullscreen .landscape:not(.force-desktop):not
(.graphic){padding-bottom:0;
padding-bottom:constant(safe-area-inset-bottom,0);
padding-bottom:env(safe-area-inset-bottom,0)}
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
	.ab-iam-root .v3 .ab-in-app-message .ab-fullscreen .landscape :not
	( .force-desktop ){ -webkit-transition : top none ;
	-moz-transition : top none;
	-o-transition:top none;
	transition:top none;
	top : 0;
	right : 0;
	bottom : 0;
	left : 0;
	height : 100%;
	width :100%;
	max-height: none ;
	-webkit-border-radius : 0;
	-moz-border-radius : 0;
	border-radius : 0;
	-webkit-transform : none ;
	-moz-transform : none ;
	-ms-transform : none;
	transform:none;
	height:auto
!important
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

.ab-iam-root .v3 .ab-in-app-message .ab-fullscreen .landscape:not(.force-desktop):not(.graphic){padding-bottom:0;
padding-bottom:constant(safe-area-inset-bottom,0);
padding-bottom:env
(safe-area-inset-bottom,0)
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

.ab-feed .ab-card .ab-effect-card .ab-hide :not(
.ab-swiped-left):not(.ab-swiped-right){opacity:0}
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

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js "></script>
<script type="text/javascript" src="/resources/js/jquery.vticker.js"></script>

<script type="text/javascript" src="/resources/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript" src="/resources/js/instagramAPI.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
	<%@include file="../../views/includes/qna_header.jsp"%>

<script type="text/javascript" src="/resources/js/reply.js"></script>



<script type="text/javascript">
console.log("JS TEST GET page");
var qidValue ='<c:out value="${qna.qid}"/>'
console.log(qidValue);
//for replySerice add test
/* replyService.add(
		{rcontent:"JS reply test",mid:"newbie",qid:qidValue}
		,
		function(result) {
			alert("result" + result);
		}
		);//end add 
		*/

/* replyService.getList( {qid:qidValue} ,
		function(list) {
			for( var i=0 , len=list.length||0; i < len; i++){
				console.log(list[i]);				
			}//end for			
		}//end func		
	);//end getList */
	 
	//21번 댓글 삭제 테스트
/*  replyService.remove(16, function(count) {
		
		console.log(count);
		if(count == "success"){
			alert("REMOVED");		
		}//end if
		
		}//end func
		,
		function(er) {
			//alert("ERROR....");		
		}//end func
	);//end remove  */
/*  	replyService.update(
			{rid: 12,
			qid: qidValue,
			rcontent: "수정!!!!!"			
			}, function(result) {
				alert("수정 완료..");
			}//end func..
	);//end update 
	replyService.get(12, function(data) {
		console.log(data);
		}//end func
	); //end get */
	
	
</script>

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

				<div class="title_wrap mt50">
					<h4 class="float_left">QnA 게시판</h4>

					<div class="btn_wrap">
						<a href="/qna/register" class="btn add_ss mr0">QnA작성하기</a>
					</div>
				</div>

				<!-- QnA 글 조회 START-->
				<div class='row'>
					<div class="col-lg-12">
						<div class="panel panel-default">
							<h4 class="panel-heading">${qna.qtitle }</h4>
							<div class="panel-body">
								<!-- QnA 작성자 -->
								<p>작성자 : ${qna.mid }</p>

								<p>
								<!-- QnA 작성일 포맷 설정 -->
									<fmt:formatDate pattern="yyyy-MM-dd HH:mm:SS"
										value="${qna.qdate }" />
								</p>

								<br>
								<!-- QnA 글 내용 -->
								<p>${qna.qcontent }</p>

								<!-- 목록/수정/삭제 버튼(amount, pageNum 전달 -->
								<div class="btnwrap">
									<a href="/qna/list?&pageNum=${cri.pageNum}&amount=${cri.amount}" class="btn wt">목록</a> 
									<c:if test="${mid eq qna.mid }">
										<a href="/qna/remove?qid=${qna.qid }&pageNum=${cri.pageNum}&amount=${cri.amount}" class="btn gray mr0">삭제</a> 
									</c:if>
									<c:if test="${mid eq qna.mid }">
										<a href="/qna/modify?qid=${qna.qid }&pageNum=${cri.pageNum}&amount=${cri.amount}" class="btn gray mr0">수정</a>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- QnA 글 조회 END-->

				<!--댓글 목록 시작 -->
				<div class='row'>
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-comments fa-fw"></i> 댓글
								<button id='addReplyBtn' class='btn add_ss mr0 pull-right'>
									댓글작성</button>
							</div>
							<!--댓글 목록 리스트 -->
							<div class="panel-body">
								<ul class="chat">
									<li>
										<div>
											<strong>user00</strong> <small>2018-01-01 13:13</small>
										</div>
										<p>good</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--댓글 목록 끝 -->
			</div>
			<!-- //cnts -->
		</div>
	</div>
	<!-- body wrap -->
	

<!-- 푸터 include -->
<%@include file="../../views/includes/qna_footer.jsp"%>

<!-- Modal 시작-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
		<div class="modal-content">
			<!-- Modal 헤더 시작 -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
			</div>
			<!-- Modal 헤더 끝 -->
			<!-- Modal 바디 시작 -->
			<div class="modal-body">
				<div class="form-group">
					<label>댓글 작성</label> 
					<!-- 댓글 내용 입력 -->
					<input class="form-control" name='rcontent' value='New Reply!!!!'>
				</div>
				<div class="form-group">
					<!-- 댓글 작성자 정보 -->
					<input type="hidden" class="form-control" name='mid'
						value='${mid }'> <input type="hidden"
						class="form-control" name='qid' value='${qna.qid}'>
				</div>
			</div>
			<!-- Modal 바디 끝 -->
			<div class="modal-footer">
			<!-- Modal 버튼 -->
				<button id='modalModBtn' type="button" class="btn wt">Modify</button>
				<button id='modalRemoveBtn' type="button" class="btn wt">Remove</button>
				<button id='modalRegisterBtn' type="button" class="btn wt">Register</button>
				<button id='modalCloseBtn' type="button" class="btn wt">Close</button>
			</div>
		</div>
			<!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
<!-- modal 끝 -->

</body>
<script type="text/javascript">

$(function(){
	
		//모달 처리
		 var qidValue ='<c:out value="${qna.qid}"/>';
		 var modal = $(".modal"); //input 태그 찾기
		//댓글 내용
		 var modalInputReply = modal.find("input[name='rcontent']"); 
		//댓글 작성자
		 var modalInputReplyer = '<c:out value="${mid}"/>';
		//댓글 작성일
		 var modalInputReplyDate = modal.find("input[name='rdate']");
		 var modalModBtn = $("#modalModBtn"); //버튼
		 var modalRemoveBtn = $("#modalRemoveBtn"); //삭제 버튼 
		 var modalRegisterBtn = $("#modalRegisterBtn"); //작성 버튼
	
		//수정버튼 클릭 처리
		 modalModBtn.on("click", function(e){
			//데이터 가져오기 input태그 ,모달 data-rid
			var reply = {rid:modal.data("rid"), rcontent: modalInputReply.val()};		 
			//DB 댓글 수정
			if(modal.data("mid")==modalInputReplyer){
				 replyService.update(reply, function(result){  
					 alert("수정 "+result); //경고창
					 modal.modal("hide"); //모달 숨기기
					 showList(); //댓글 리스트 새로 가져오기 
				});
			}
			else{
				alert("타 사용자의 댓글은 수정이 불가합니다!");
			}
		    });
		
		     //삭제버튼 클릭 처리
		     modalRemoveBtn.on("click", function (e){
		    	 var rid = modal.data("rid"); //데이터 가져오기
		    	 //DB 삭제 처리
		    	
			    if(modal.data("mid")==modalInputReplyer){
			    	replyService.remove(rid, function(result){
			    		 alert("삭제 "+result); //경고창
			    		 modal.modal("hide"); //모달 숨기기
			    		 showList(); //댓글 리스트 새로 가져오기
			    	 }); //end replyService.remove
			    }
			    else{
			    	alert("타 사용자의 댓글은 삭제가 불가합니다!");
			    }
		    	 
		      }); 
   
		 
		 //종료버튼 처리 모달 숨기기
		 $("#modalCloseBtn").on("click", function(e){	    	
		    	modal.modal('hide');
		  });

	  	 //특정댓글 클릭이벤트 처리
		 $(".chat").on("click","li",function(e){		 
			 var rid = $(this).data("rid"); //li 태그 rid		 

			 //데이터 가져오기
			 replyService.get(rid, function(reply) {		
				 //input 태그에 값입력
		         modalInputReply.val(reply.rcontent);
		        /*  modalInputReplyer.val(reply.replyer); */
		         //날짜 처리
		         modalInputReplyDate.val(replyService.displayTime(reply.rdate))
		         .attr("readonly","readonly"); //읽기전용처리
		         modal.data("rid", reply.rid); //댓글번호 저장	data-rid
		         modal.data("mid", reply.mid); //댓글 작성자 저장 data-mid
		         modal.find("button[id !='modalCloseBtn']").hide(); //버튼 감추기
		         modalModBtn.show(); //수정보튼 보여주기
		         modalRemoveBtn.show(); //삭제버튼 보여주기		        
		         $(".modal").modal("show"); //모달 보여주기		 	
			 } )
			 
		 })

		 // 댓글 작성 버튼 클릭시
		 modalRegisterBtn.on("click", function() {
			 
			 var reply={  //input 태그 내용 가져오기
				mid : modalInputReplyer,
				qid : qidValue,				
				rcontent : modalInputReply.val()
			 }		
			 // 댓글insert 처리
			 replyService.add(reply, function(result) {
				alert("작성 "+result);
				modal.find("input").val("");//input 태그 내용 지우기
				console.log("성공!");
				modal.modal("hide"); //모달 숨기기
				showList(); //댓글 페이지 갱신
			});
		 });

		// 댓글 작성 완료 버튼 클릭시
		 $("#addReplyBtn").on("click", function(e){
			 modal.find("input").val(""); //input 값 지우기
		    // modalInputReplyDate.closest("div").hide(); //버튼 숨기기
		     modal.find("button[id !='modalCloseBtn']").hide(); //버튼 숨기기
		     modalRegisterBtn.show(); //등록버튼 보이기
		     $(".modal").modal("show"); //모달 보이기
		  }); //end click 
	// 모달 처리 끝

	//댓글 처리 시
	var replyUL = $(".chat");
	
	//댓글 목록 show
	function showList(){	
		console.log("showList()");
	    replyService.getList({qid:qidValue}, function(list) {
	    	var str="" ;
	    	if(list == null || list.length == 0){
	    		replyUL.html("");
	    		return;
	    	}
	      for (var i = 0, len = list.length || 0; i < len; i++) {
	    	console.log(list[i]);
	    	str +="<li data-rid='"+list[i].rid+"'>";
	        str +="  <div><div>["+list[i].mid+"]"; 
	        str +="   "+replyService.displayTime(list[i].rdate);+"</div>";
	        str +="    <p>"+list[i].rcontent+"</p></div></li>";

	      }
	      replyUL.html(str);		 
	    });
	    
	}
	showList();	

});
</script>


</html>