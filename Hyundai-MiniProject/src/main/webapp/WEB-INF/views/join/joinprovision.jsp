<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko">
<head>
<title>더한섬닷컴</title>


<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/brand.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/common.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/font_443.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery-ui.min.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/layout.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/popup.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/products.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/print.css?after">

<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/_ui/desktop/common/images/common/thehandsome_ic_16x16.ico">


<!-- JS -->
<script type="text/javascript" src="/resources/js/appboy.min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="/resources/js/html5shiv-printshiv.js"></script>
<script type="text/javascript" src="/resources/js/instagramAPI.js"></script>
<script type="text/javascript" src="/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery-ui-1.11.2.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.vticker.js"></script>
<script type="text/javascript" src="/resources/js/makePCookie.js"></script>
<script type="text/javascript" src="/resources/js/netfunnel_skin.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="/resources/js/netfunnel.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="/resources/js/ui.js"></script>
<script type="text/javascript" src="/resources/js/unorm.js"></script>
<script type="text/javascript" src="/resources/js/beta.fix.js"></script>
<script type="text/javascript" src="/resources/js/ark.js"></script>
<script type="text/javascript" src="/resources/js/search.js"></script>
<script type="text/javascript" src="/resources/js/SsoAjax.js"></script>
<script type="text/javascript" src="/resources/js/videojs-ie8.min.js"></script>


<script async="" defer=""
	src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
<script type="text/javascript"
	src="https://js.appboycdn.com/web-sdk/2.7/appboy.min.js" async=""></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-RPZ82BN53C&amp;l=dataLayer&amp;cx=c"></script>
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
			ACC.config.CSRFToken = "c2b49c1d-04ae-4d87-9a7a-d22f2b0e0863";
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
<script type="text/javascript">
    var handsomeContextPath = "/ko"; 
</script>

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
     
    
    // 검색 결과 페이지 일 경우만 처리
    if(window.location.pathname.indexOf("/hssearch/searchCount") > -1) {
        pageviewObj.dimension17 = "";                     //검색_검색어(검색결과페이지일때 사용)
    }
    
    return pageviewObj;
};

// 고객_ClientID
function getCid() {
    var cookieData = document.cookie;
    var Cookies = cookieData.split(';')
    var clientId = "";
    for (var i=0; i < Cookies.length; i++) {
        if (Cookies[i].split('=')[0] == '_ga' || Cookies[i].split('=')[0] == ' _ga') {
        clientId = Cookies[i].split('=')[1];
        }
    }
    if (clientId != "") {
        clientId = clientId.substring(6);
    }
    if (clientId == "") {
        try{
	        ga(function(tracker) {
	        clientId = tracker.get('clientId');
	        });
        }catch(e) {
            console.log(e);
        }
    }
    return clientId;
}

if (!String.prototype.endsWith) {
    String.prototype.endsWith = function(searchString, position) {
        var subjectString = this.toString();
        if (typeof position !== 'number' || !isFinite(position) || Math.floor(position) !== position || position > subjectString.length) {
            position = subjectString.length;
        }
        position -= searchString.length;
        var lastIndex = subjectString.indexOf(searchString, position);
        return lastIndex !== -1 && lastIndex === position;
    };
}

</script>

<script>

 $(document).ready(function(){

    
    //아울렛 하위브랜드 없을시 이름 숨김처리
    $(".outlet_brand1803 .sm_dep1 .liDep1").each(function(){ 
        if($(this).find('ul li').length == 0) {
            $(this).remove();
        }
    });
    
    
    var testDt = "2018/03/23 09:00:00";
    
    var todayDate = new Date(); 
    var startDate = new Date(testDt), endDate = new Date('2018/04/08 23:59:59');
//     var startDate = new Date('2018/03/23 00:00:00'), endDate = new Date('2018/04/08 23:59:59');
    if (todayDate.getTime() >= startDate.getTime() && todayDate.getTime() <= endDate.getTime()) {

        var obj = [];
        obj.push("main");
        obj.push("brandMain");
        obj.push("exhibition");
        obj.push("productDetail");
        obj.push("news");
        obj.push("instagram");
        obj.push("event");

        var ranBannerIdx = Math.floor((Math.random() * obj.length * 2));
        
        //(메인, 상품상세, 기획전, 브랜드메인, 뉴스, 이벤트, 인스타그램)일때만 레이어노출
        var viewYn = false;
        var ranYn = false;
        var type = "";
        

        var url = $(location).attr("href");
        var referer = "https://www.thehandsome.com/ko/member/authenticationMail?joincode=GLgUdPmxe1Bl2tK6Zt6i,illo00@naver.com";
        if(url == referer || referer == "") {
            viewYn = false;
        }

        if(getCookie('blossomsPopup') != todayDate.getDate()) {
            if(viewYn == true && ranYn == true) {
                var innerHtml =  "<div class=\"evtpop_blsm_0314\" style=\"position:fixed;top:220px;left:80px;margin-left:0;z-index:15;background:url('http://cdn.thehandsome.com/pc/event/detail/image/evt_blsmbg_180321.png') 8px 2px no-repeat;width:100px;height:110px;\">";
                    innerHtml += "  <div class=\"blsmflw1\" style=\"position:absolute;\">";
                    innerHtml += "      <img src=\"http://cdn.thehandsome.com/Mobile/event/detail/image/m_evt_blsm2_180321.png\" alt=\"꽃잎줍기\">";
                    innerHtml += "  </div>";
                    innerHtml += "  <a href=\"javascript:blossomsEvent(\'"+type+"\');\" alt=\"이벤트GO\" style=\"display:block;position:absolute;top:10px;width:110px;height:85px;\">&nbsp;</a>";
                    innerHtml += "  <a href=\"javascript:blossomsClose(\'close'\);\" alt=\"꽃잎close\" style=\"background:url('/_ui/desktop/common/images/common/btn_close.png') no-repeat;display:block;position:absolute;top:0;right:-7px;width:18px;height:18px;z-index:2;\">&nbsp;</a>";
                    innerHtml += "  <div style=\"position:absolute;bottom:-4px;left:17px;width:120px;\">";
                    innerHtml += "      <label for=\"day_close\" style=\"cursor:pointer;text-decoration:underline;color:#6e6e6e;letter-spacing:-.5px;\" onclick=\"blossomsClose(\'day_close\');\">하루 보지 않기</label>";
                    innerHtml += "      <input id=\"day_close\" type=\"checkbox\" name=\"day_close\" value=\"하루 보지 않기\" onclick=\"blossomsClose(\'day_close\');\" style=\"display:none;\">";
                    innerHtml += "  </div>";
                    innerHtml += "</div>";
                    
                $("#bodyWrap").prepend(innerHtml);
            }
            
        }
    }
    
});
 
var playItem = ""; 
function setPlayEarlySummer(item){
     
     //로그인 안했을경우, 로그인페이지로
      //로그인후 참여하실수 있습니다.
         var obj = $(".popwrap_renewal1910.no_login");
         var tp=($(window).height()-obj.outerHeight())/2+$(window).scrollTop();
         if(tp < 0) tp=0;
         obj.css("top", tp);
         obj.show();
         $('#ealrySummerLayer').show();
     
     //로그인 했을경우, 이벤트 페이지로 
     
 }
 

function evtPopClose(type) {
    if(type == "close") {
        $('.evt_pop_earlysummer').hide();
    }else {
        var todayDate = new Date(); 
        setCookie("earlysummerPopup",todayDate.getDate(),1);
        $('.evt_pop_earlysummer').hide();
        $('.popwrap_renewal1910').hide();
        $('#ealrySummerLayer').hide();
    }
};

function goLogin(){
    location.href='/ko/member/login';
}

function goEalryEvent(){
    location.href='/ko/magazine/events/8799238805376';
}

var playMapleItem = ""; 
function setPlayMaple(item){
  //로그인 안했을경우, 로그인페이지로
     //로그인후 참여하실수 있습니다.
	    $.ajax({
	        url: '/ko/magazine/events/setMapleSession'+"?type="+item,
	        dataType:"json",
	        type: "get",
	        cache : false,
	        dataType : "json",
	        async : false,
	        contentType : "application/json",
	        success:function(data){
	            var obj = $(".popwrap_maple_evt1909.no_login");
	            var tp=($(window).height()-obj.outerHeight())/2+$(window).scrollTop();
	            if(tp < 0) tp=0;
	            obj.css("top", tp);
	            obj.show();
	            $(".evt_minipop_maple").hide();
	            $('#mapleLayer').show();
	        },
	        error:function(e){
	            //
	        }
	    });
        
    
    //로그인 했을경우, 이벤트 페이지로 
    
}


function mapleEvtPopClose(type) {
    if(type == "close") {
        $(".evt_minipop_maple").hide();
        $('.popwrap_maple_evt1909').hide();
        $('#mapleLayer').hide();
    }else {
        var todayDate = new Date();
        setCookie("mapleEventPopup",todayDate.getDate(),1);
        $('.popwrap_maple_evt1909').hide();
        $(".evt_minipop_maple").hide();
        $('#mapleLayer').hide();
    }
};

function goMapleEvent(){
    location.href='/ko/magazine/events/8799664789376';
}

function blossomsEvent(type) {
    
    $.ajax({
        url: '/ko/magazine/events/setBlossomsSession'+"?type="+type,
        dataType:"json",
        type: "get",
        cache : false,
        dataType : "json",
        async : false,
        contentType : "application/json",
        success:function(data){
            //로그인 안했을경우, 로그인페이지로
            
	            var la = new layerAlert('벚꽃 이벤트는 로그인 후 응모 가능합니다');
	            
	            la.confirmAction = function(){
	                location.href='/ko/member/login';
	            };
            
            
           //로그인 했을경우, 이벤트 페이지로 
            
        },
        error:function(e){
            //
        }
    });
    
}

function blossomsClose(type) {
    if(type == "close") {
	    $('.evtpop_blsm_0314').hide();
    }else {
//         if($('#day_close').is(":checked")) {
            var todayDate = new Date(); 
            setCookie("blossomsPopup",todayDate.getDate(),1);
            $('.evtpop_blsm_0314').hide();
//         }
    }
};

/**
 * 2020.03.31 hmk
 *
 * 입력하려는 productId가 배열에 있는지 확인해서
 * 있을 경우에는 해당 배열 항목 삭제하고 입력하려는 
 * productId가 key인 js object 생성하여 삽입. (한마디로 replace)
 * value : 신규 항목일 때
 * oldValue : 기존 항목이 있어서 교체할 때
 */
function mapSet( array, key, value, oldValue ) {
	var isKeyExist = false ;
	for( var i ; i < array.length ; i++ ) {
		if( array[i].key === key ) {
      		array.splice( i, 1 ) ;
      		array.push( {
      			key : key
  	        	, value : oldValue
  	        } ) ;
      		isKeyExist = true ;
  		}
    }
	// 키 존재 여부가 false인 경우는 상기 로직이 수행되지 않았다는 의미 == 새로운 항목
    // 이므로 배열에 그냥 입력
	if( ! isKeyExist ) {
		array.push( {
  			key : key
	        , value : value
	    } ) ;
    }
}

<!--  recoPick  START ---->

try{
	var birthday = '';
	var splitBirthday = birthday != '' ? birthday.split(" ")[5]: ''; //출생년도
	var gender   = '';
	
	
	
	(function(w,d,n,s,e,o) {
	  w[n]=w[n]||function(){(w[n].q=w[n].q||[]).push(arguments)};
	  e=d.createElement(s);e.async=1;e.charset='utf-8';e.src='//static.recopick.com/dist/production.min.js';
	  o=d.getElementsByTagName(s)[0];o.parentNode.insertBefore(e,o);
	})(window, document, 'recoPick', 'script');
	
	recoPick('service', 'thehandsome.com/ko/');   
	
	    try{
	        recoPick('sendLog','visit');
	    }catch(e) {
	        console.log(e);
	    }
	
}catch(e){console.log(e);}
<!--  recoPick END ---->


function setCategoryNameInKO(targetCateCode, defaultCateName){
    var cates = "AS|잡화^AS01|여성슈즈^AS011|부츠^AS012|로퍼/블로퍼^AS013|스니커즈^AS014|플랫^AS015|힐/슬링백^AS016|샌들/슬라이드^AS017|기타 슈즈^AS02|남성슈즈^AS021|부츠^AS022|포멀슈즈^AS023|스니커즈^AS024|샌들/슬라이드^AS025|기타 슈즈^AS031|토트백^AS032|숄더/크로스바디백^AS033|클러치 백^AS034|기타 백^AS041|토트백^AS042|숄더/크로스바디백^AS043|클러치 백^AS044|기타 백^AS051|머플러^AS052|스카프^AS061|이어링/커프^AS062|목걸이^AS063|팔찌^AS064|반지^AS065|기타 주얼리^AS07|기타 ACC^AS071|모자^AS072|양말^AS073|장갑^AS074|벨트^AS075|지갑^AS076|헤어ACC^AS077|테크ACC^AS078|기타소품^BE011|토너/에멀전/크림^BE012|세럼/앰플/오일/밤^BE013|클렌징/스크럽/마스크^BE031|핸드·바디로션/크림/오일^BE032|핸드·바디워시/스크럽^BE033|샴푸/컨디셔너^BE034|트리트먼트/오일/스프레이^BE035|기타 바디/헤어케어^BE041|향수^EG02|감사^LS|라이프스타일^LS011|패브릭^LS012|프래그런스^LS013|데코레이션^LS014|기타소품^LS021|스킨케어^LS022|욕실용품^LS031|그릇^LS032|보드/트레이^LS033|커트러리^LS034|커피/티^LS035|패브릭/냅킨^LS036|기타소품^LS041|문구^LS042|책^LS043|기타소품^LS051|패션^LS052|기타소품^LS061|의류^LS062|잡화^ME011|티셔츠^ME012|셔츠^ME013|니트^ME014|스웨터^ME015|가디건/베스트^ME021|루즈/테이퍼드^ME022|데님^ME023|쇼츠^ME025|슬림/스트레이트^ME028|조거/트랙^ME031|재킷^ME032|점퍼^ME033|트렌치코트^ME034|코트^ME035|다운/패딩^ME041|드레스셔츠^ME042|수트재킷^ME044|수트팬츠^ME095|TIME HOMME : ONLINE EXCLUSIVE^WE011|티셔츠^WE012|블라우스^WE013|셔츠^WE014|니트^WE015|가디건/베스트^WE021|캐주얼^WE022|포멀^WE023|데님^WE024|쇼츠^WE031|미니 스커트^WE032|펜슬 스커트^WE033|플레어 스커트^WE034|롱/맥시 스커트^WE041|미니 드레스^WE042|미디 드레스^WE043|롱/맥시 드레스^WE051|재킷^WE052|점퍼^WE053|트렌치 코트^WE054|코트^WE055|다운/패딩^WE091|OBZEE : ICONIC OBZEE^WE092|TIME : SIGNATURE SUIT^WE093|SYSTEM : JEANS^WE095|FOURM THE STORE : PALETTE^WE096|FOURM STUDIO : RE:STUDIO^WE098|SYSTEM : PARIS PRESENTATION^WE09B|O'2nd : 25th Anniv. Marie Assenat ^WE09Q|LATT : with 신민아"; //WE011|티셔츠^WE012|블라우스^...
    var cateArr = null;
    var returnCateName = "";
    if(targetCateCode != ""){
        if(cates != ""){
            cateArr = cates.split("^");
            if(cateArr.length > 0){
                $(cateArr).each(function(idx){
                    if(cateArr[idx] != ""){ // WE011|티셔츠
                        var compareCate = cateArr[idx].split("|");
                        if(compareCate.length == 2){ // code | name
                            var compareCateCode = compareCate[0]; //WE011
                            if(compareCateCode.toUpperCase() == targetCateCode.toUpperCase()){
                                returnCateName = compareCate[1]; //티셔츠
                            }
                        }
                    }
                });
            }
        }
        
        // 한글 카테고리명이 없을경우 defaultCateName로 재설정
        if(returnCateName == ""){
            returnCateName = defaultCateName;
        }
    }
    return returnCateName;
}
</script>

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1947530058811697'); // Insert your pixel ID here.
fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1947530058811697&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

<!-- #2894 - 카카오광고 집행 위한 픽셀&SDK 삽입 -->
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
if(typeof kakaoPixel !== 'undefined'){
      var kakaoTrackId = '3482319208237780781'; //개발
      if(location.href.indexOf("www.thehandsome.com") > -1) kakaoTrackId = '7855119525940511046'; //운영
      kakaoPixel(kakaoTrackId).pageView();
}
</script>
<!-- #2894 - 카카오광고 집행 위한 픽셀&SDK 삽입 END -->
<script>
var pageviewObj = new Object();
pageviewObj = setDimensionData();
<!-- GA 추적코드 추가 -->
<!-- Google Analytics -->
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

try{
	ga('create', 'UA-154649175-1', 'auto', 'gp');
	ga('gp.set', 'anonymizeIp', true);              // IP 익명화 선언
	<!-- End Google Analytics -->
	ga('gp.set',pageviewObj);
}catch(e) {
    console.log(e);
}

<!-- GTM 추적코드 추가 -->
<!-- dataLayer 초기선언 -->
dataLayer = [pageviewObj];

<!-- Google Tag Manager -->
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5PCJDFJ');
<!-- End Google Tag Manager -->

</script>

<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/943253288/?random=1651473273535&amp;cv=9&amp;fst=1651473273535&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=1&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmember%2Fjoinprovision&amp;ref=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmember%2FauthenticationMail%3Fjoincode%3DGLgUdPmxe1Bl2tK6Zt6i%2Cillo00%40naver.com&amp;tiba=%EB%8D%94%ED%95%9C%EC%84%AC%EB%8B%B7%EC%BB%B4&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">

<script src="https://static.uni1id.com/jsf/common/enp_uni_id_adver.js"
	type="text/javascript" defer="" async=""></script>
<script
	src="https://cdn.megadata.co.kr/js/socialLink/social_sns_config_min.js"
	type="text/javascript" defer="" async=""></script>
</head>

<body oncontextmenu="return false">
	<!-- 적용이 되지 않는 문제로 body에 넣음 -->
	<script type="text/javascript" src="/resources/js/common_function.js?20220503"></script>
	<script>
		(function(){
			if (document.cookie.indexOf('thehyundai=true') > -1) {
				var html = []
				html.push('<div class="thehyundaiWrap">');
					html.push('<div>');
						html.push('<div class="innerWrap">');
							html.push('<a href="http://www.thehyundai.com/Home.html?bfp=Ref_Handsome" class="logo">THE HYUNDAI</a>');
							html.push('<ul>');
								html.push('<li><a href="http://www.thehyundai.com/front/dpa/searchSpexSectItem.thd?sectId=100004&bfp=Ref_Handsome">더드림딜</a></li>');
								html.push('<li><a href="http://www.thehyundai.com/front/dpa/storPiupSearchSect.thd?bfp=Ref_Handsome">스토어픽</a></li>');
								html.push('<li><a href="https://www.thehyundai.com/CS/eva/evntBnftPageDivide.thd?tabNo=1&bfp=Ref_Handsome">이벤트/혜택</a></li>');
								html.push('<li><a href="https://www.thehyundai.com/front/dpv/vrList.thd?bfp=Ref_Handsome">VR스토어</a></li>');
// 								html.push('<li><a href="http://www.thehyundai.com/front/dpm/myShopHome.thd?bfp=Ref_Handsome">트렌드샵</a></li>');
							html.push('</ul>');
							html.push('<div class="float_right">');
								html.push('<a href="http://www.thehyundai.com/Home.html?bfp=Ref_Handsome">더현대닷컴 바로가기</a>');
								html.push('<a href="http://www.thehyundai.com/Home.html?bfp=Ref_Handsome" class="go_btn">GO</a>');
							html.push('</div>');
						html.push('</div>');
					html.push('</div>');
				html.push('</div>');
				$('body').prepend(html.join(''));
				
				var d = new Date();
				d.setTime(d.getTime() + (365*24*60*60*1000));
				document.cookie = 'sslvisit=true; expires=' + d.toUTCString() + '; path=/';
			}else if (document.cookie.indexOf('rakuten=') > -1) {
				var d = new Date();
				d.setTime(d.getTime() + (365*24*60*60*1000));
				document.cookie = 'sslvisit1=true; expires=' + d.toUTCString() + '; path=/';
			}else if (document.cookie.indexOf('hyundaihmall=true') > -1) {
				var d = new Date();
				d.setTime(d.getTime() + (365*24*60*60*1000));
				document.cookie = 'sslvisit2=true; expires=' + d.toUTCString() + '; path=/';
			}else if (document.cookie.indexOf('fromSite') > -1) {
                var d = new Date();
                d.setTime(d.getTime() + (365*24*60*60*1000));
                document.cookie = 'sslvisit3='+ "" +'; expires=' + d.toUTCString() + '; path=/';
            }
		})();
		</script>
	<!-- Loading -->
	<div class="loading_bar" id="loadingBarDiv" style="display: none;">
		<img src="/_ui/desktop/common/images/common/loading.gif" alt="loading">
		<span>�로딩중</span>
	</div>
	<!-- //Loading -->

	<form id="CSRFForm" action="/ko/member/joinprovision" method="post">
		<div>
			<input type="hidden" name="CSRFToken"
				value="c2b49c1d-04ae-4d87-9a7a-d22f2b0e0863">
		</div>
	</form>
	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<script type="text/javascript"
				src="/_ui/desktop/common/js/SsoAjax.js"></script>

			<script>
var arkQuery = $.noConflict(true);
</script>

			<script>
/*
 * 챗봇 관련 스크립트
 */
// 챗봇의 푸시링크를 클릭했을 때
function openChatView(token, talkId) {
    callChatbot(token, talkId);
}

function callChatbot(token, talkId) {
    if(token == null) {
        $.ajax({
            type:"POST",
            url:"/ko/chatbot/token",
            data: {"CSRFToken":"c2b49c1d-04ae-4d87-9a7a-d22f2b0e0863"},
            async : false,
            success:function(data){
                if(data.result == "SHOULD_LOGIN") {
                    var la = new layerAlert("로그인이 필요합니다");
                    la.confirmAction = function(){//확인 버튼 클릭시 추가 호출 펑션
                        location.href = "/ko/member/login";
                    };
                }
                else if(data.result == "NOT_VIP") {
                    var la = new layerAlert("VVIP 회원님만 이용 가능하십니다");
                    la.confirmAction = function(){//확인 버튼 클릭시 추가 호출 펑션
                    };
                }
                else if(data.result == "OFF-HOURS") {//일반 : CREW, FRIEND, 간편회원일경우, 평일 오전 9시 30분 ~ 오후 6시 30분만 사용가능
                    var la = new layerAlert("평일(월~금) 09:00 ~ 18:00 (토/일, 공휴일 휴무)에 이용 가능하십니다");
                    la.confirmAction = function(){//확인 버튼 클릭시 추가 호출 펑션
                    };
                }
                else {
                    if(data.token != "") {
                        token = data.token;
                    }
                }
            },
            error:function(e){
                ;
            }
        });
    }

    if(token != null && token != '') {
        try{
            ga('gp.send','pageview',{
                'title':'하니톡_채팅서비스', //가상페이지 화면명
                'location':'http://www.thehandsome.com/ko/hanitalk' //가상페이지URL
            });
        }catch(e) {
            console.log(e);
        }
        $("#chatbot_token").val(token);
        $("#chatbot_talkId").val(talkId);
        
        
        var targetTalkUrl = ""  
        if(location.href.indexOf("www.thehandsome.com") > -1){ //운영
            //운영 챗봇 url
            targetTalkUrl = "https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp";
        }else { //그외
            //개발 챗봇 url
            targetTalkUrl = "https://handsome-dev.enomix.co.kr/front/v1/jsp/view/chat.jsp"; 
        }
        
        $("#chatbotForm").attr("action", targetTalkUrl);

        $("#chatbotForm").submit();
    }
    return false;
}
/*
 * // 챗봇 관련 스크립트
 */
 function GA_Common(action,e){
		var eventCategory;
		var eventAction;
		var label;
		
		
		if (action == "topNav"){
			eventCategory = "공통";
			eventAction = "탑_네비게이션";
			label = escape(e.text());
		} else if (action == "news"){
			eventCategory = "공통";
			eventAction = "뉴스";
			label = escape(e.text());
		} else if (action.indexOf("commonBrand") > -1){
			eventCategory = "공통_브랜드";
			eventAction = gaBrandType(action.split('_')[0]);
			label = e.text();
		} else if (action.indexOf("brandLike") > -1){
			eventCategory = "공통_브랜드";
			eventAction = gaBrandType(action.split('_')[0]) + "_좋아요";
			label = e.parent().find("a").text();
		}
		
		GA_Event(eventCategory, eventAction,label);
	}
	
function gaBrandType(brandCode){
    var brandTypeNm = "";
    if(brandCode == "WE"){
        brandTypeNm = "여성_브랜드";
    }else if(brandCode == "ME"){
        brandTypeNm = "남성_브랜드";
    }else if(brandCode == "ED"){
        brandTypeNm = "편집_브랜드";
    }else if(brandCode == "OS"){
        brandTypeNm = "해외_브랜드";
    }
    return brandTypeNm;
}
 
</script>

			<script type="text/javascript">
    var historyDelete = '검색기록전체삭제';
    var typingWord = '검색어를 입력해주세요.';
    var gotoBrand = '브랜드바로가기'; 
    var noRecommendCategory = '추천 카테고리가 없습니다.';
    var noRecommendBrand = '추천 브랜드가 없습니다.';
    var noRecommendResult = '해당 단어로 시작하는 검색어가 없습니다.';
    var brandReport = '브랜드리포트';
    var graph = '그래프';
    var fold = '접기';
    
    var favoriteBrands = new Array();
</script>
			<script type="text/javascript"
				src="/_ui/desktop/common/wisenut/ark/js/beta.fix.js"></script>
			<script type="text/javascript"
				src="/_ui/desktop/common/wisenut/ark/js/ark.js"></script>
			<script type="text/javascript"
				src="/_ui/desktop/common/wisenut/js/search.js"></script>
			<script type="text/javascript">
//<![CDATA[
    // #1067 - 201803 메인 개편
    function applyCategory(){
        
        layerAlert('로그인 후 당신만의 브랜드 즐겨찾기를 <br /> 완성하세요.');
        return;
        

        var brandNameArray = new Array();
        var brandCodeArray = new Array();
        var parentBrandCodeArray = new Array();
        var sortIndexArray = new Array();
        var valueSplitArray = new Array();
        var dataValue = "";

        $("input:checkbox[class=\"checkboxEvent\"]").each(function(){
            if(this.checked){
                dataValue = this.value;
                valueSplitArray = dataValue.split('#');
                brandNameArray.push(this.title);
                parentBrandCodeArray.push(valueSplitArray[0]);
                brandCodeArray.push(valueSplitArray[1]);
                sortIndexArray.push(valueSplitArray[2]);
            }
        });
        var parentBrandCode = parentBrandCodeArray.join(",");
        var brandName = brandNameArray.join(",");
        var brandCode = brandCodeArray.join(",");
        var sortIndex = sortIndexArray.join(",");
        
        //braze
        brazeCustomAttribut(brandCodeArray);
        
        $.ajax({
            type:"GET",
            url:"/intro/setCategoryList",
            data:{"brandName":brandName,"brandCode":brandCode,"parentBrandCode":parentBrandCode,"sortIndex":sortIndex},
            success:function(data){
                window.location.reload();
            },
            error:function(e){
                console.log("error", e);
            }
        });
        
    }
    
    function resetCategory(){
        
        $("input:checkbox[class=\"checkboxEvent\"]").each(function(){
            if(this.checked){
               this.checked = false;
            }
        });
        applyCategory();
    }
        
    
function searchOn(){
	searchInit();
	$('div.gnb_sh_wrap').css("display", "block");
	$('div.util_menu').css("display", "none");
	$('div.gnb_sh_result').css("display", "block");
	
}

function searchOff(){
	
	$('div.util_menu').css("display", "block");
	$('div.gnb_sh_wrap').css("display", "none");
				
}

function showTab(){
	
	$('div.gnb_sh_result').css("display", "block");
				
}

// 쿠키 생성
function setCookie(cName, cValue, cDay){
     var expire = new Date();
     expire.setDate(expire.getDate() + cDay);
     cookies = cName + '=' + escape(cValue) + '; path=/ '; 
     if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
     document.cookie = cookies;
}
//쿠키 생성 (00시 제거)
function setOneDayCookie(cName, cValue, cDay){
    var currentDate = new Date();
    var expire = new Date(currentDate.getFullYear(), currentDate.getMonth(), currentDate.getDate() + cDay, 0, 0, 0);
    cookies = cName + '=' + escape(cValue) + '; path=/ ';
    if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
    document.cookie = cookies;
}

// 쿠키 가져오기
function getCookie(cName) {
     cName = cName + '=';
     var cookieData = document.cookie;
     var start = cookieData.indexOf(cName);
     var cValue = '';
     if(start != -1){
          start += cName.length;
          var end = cookieData.indexOf(';', start);
          if(end == -1)end = cookieData.length;
          cValue = cookieData.substring(start, end);
     }
     return unescape(cValue);
}

//쿠키 삭제
function deletecookie(name) {
    var today   = new Date();
    var path = "/ko/";
    var lastIndex = path.lastIndexOf('/');
    path = path.substring(0 , lastIndex);
    today.setDate(today.getDate() + -1);
    document.cookie = name + "=; path="+path+"; expires=" + today.toGMTString() + ";";
}

function deletecookiePath(name, path) {
    var today   = new Date();
    
    if(path == "") {
    	path = "/";
    }
    
    today.setDate(today.getDate() + -1);
    document.cookie = name + "=; path="+path+"; expires=" + today.toGMTString() + ";";
}

function searchInit(){
	var settingCookie = getCookie("searchSaveYN");
	if(settingCookie == "on"){
		
		$('#searchSaveYN').text("끄기");	
		$('#searchSaveYNfame').text("끄기");
		
	}else{
		$('#searchSaveYN').text("저장");
		$('#searchSaveYNfame').text("저장");
		
	}
}

function ie8AlertHide() {
	setCookie("ie8AlertHideYN", "on", 365);
	$("#alertIE8").hide();
}

$(document).ready(function() {
    
    $('.gnb_nav.hscene1906 .cate_m .hscene').mouseover(function(){ // 툴팁
        $('.gnb_nav.hscene1906 .cate_m li .delch_box').addClass('on');
    });
    $('.gnb_nav.hscene1906 .cate_m .hscene').mouseout(function(){
        $('.gnb_nav.hscene1906 .cate_m li .delch_box').removeClass('on');
    });
	
    var todayDate = new Date();
    var startDate = new Date('2018/05/29 00:00:01'), endDate = new Date('2018/06/17 23:59:59');
    if (todayDate.getTime() >= startDate.getTime() && todayDate.getTime() <= endDate.getTime()) {
        $("#athome_header_event").show();
    }else{
        $("#athome_header_org").show();
    }
    
	//IE8버젼 체크
	if(getCookie("ie8AlertHideYN") != "on") {
		if(navigator.appVersion.indexOf('MSIE 8.0') >= 0 || navigator.appVersion.indexOf('Trident/4.0') >= 0){
			var html = "<div style='position:relative; width: 100%; height: 30px;'><div style='position:fixed;width:100%;background:#ffffbc none repeat scroll 0% 0%; text-align: center; z-index: 999; line-height: 30px;'>";
			html += "Thehandsome.com은 인터넷 익스플로러 10 이상에 최적화되어 있습니다.";
			html += " <a href='http://windows.microsoft.com/ko-kr/windows/downloads'><strong>[브라우저 업데이트 바로가기]</strong></a>";
			html += "<a href='#' onclick='ie8AlertHide();' style='display:block;float:right;padding-right:10px'>X</a></div></div>";
			$(".loading_bar").before("<div align='center' id='alertIE8'>"+html+"</div>");
		}
	}
	
	settingCookie = getCookie("searchSaveYN");

	if(settingCookie == ""){
		setCookie("searchSaveYN", "on", 365);
	}
	
	$('#gnbsearch').click(function () {
		var searchwords = $('#gnbsearchwords').val();
		searchwords = searchwords.replace(/(^\s*)|(\s*$)/g,"");
		
		if(searchwords!=""){
			location.href="/ko/hssearch?searchwords="+searchwords;
		}else{
			$('#gnbsearchwords').val("");
			alert("검색어를 입력해주세요.");
		}
	});
	
	$('.btn_svclose').click(function () {
		settingCookie	= getCookie("searchSaveYN");
		if($(this).children('span').text() == "끄기"){
			$(this).children('span').text("저장");
		} else {
			$(this).children('span').text("끄기");
		}
		if(settingCookie == "off"){
			$(this).children('span').attr("save","on");
			setCookie("searchSaveYN", "on", 365);
		} else {
			$(this).children('span').attr("save","off");
			setCookie("searchSaveYN", "off", 365);
		}

	});
	$('.favBtn').click(function(){

		words = $(this).text();
		location.href="/ko/hssearch?searchwords="+words;

	});
	$('.newlyBtn').click(function(){

		words = $(this).text();
		location.href="/ko/hssearch?searchwords="+words;

	});
	
	var sw1 = decodeURIComponent(escape(getCookie("HS_Seachwords1"))); 
	var sw2 = decodeURIComponent(escape(getCookie("HS_Seachwords2"))); 
	var sw3 = decodeURIComponent(escape(getCookie("HS_Seachwords3"))); 
	var sw4 = decodeURIComponent(escape(getCookie("HS_Seachwords4"))); 
	var sw5 = decodeURIComponent(escape(getCookie("HS_Seachwords5"))); 
	
	var sw1_date = sw1 != "" ? sw1.split("_")[1] : "";
	var sw2_date = sw2 != "" ? sw2.split("_")[1] : "";
	var sw3_date = sw3 != "" ? sw3.split("_")[1] : "";
	var sw4_date = sw4 != "" ? sw4.split("_")[1] : "";
	var sw5_date = sw5 != "" ? sw5.split("_")[1] : "";
	
	var arr = [sw1,sw2,sw3,sw4,sw5];
	var arr_date = [sw1_date,sw2_date,sw3_date,sw4_date,sw5_date];
	
	arr_date.sort(compStringReverse);
	
	for(var i=0; i<arr_date.length;i++){
		for(var j=0; j<arr.length;j++){
			if(arr_date[i] != ""){
				if(arr[j].indexOf(arr_date[i]) > 0){
					$("#searchWord"+(i+1)).text(arr[j].split("_")[0]);
					$('.searchWord'+(i+1)).css("display", "block");
					
					$("#searchWord"+(i+1)).next().attr("onclick","deletecookie('HS_Seachwords"+(j+1)+"')");
				}
			}
		}
		
		if(arr_date[i] == ""){
			$("#searchWord"+(i+1)).text("");
		}
	}
	
	
	
    //자동로그인
    
	        var ssoUrl = "https://sso.h-point.co.kr:29865" + "/co/setSsoReqJSONP.hd";
            gfnSsoReqAjax(ssoUrl, hpAutoLogin);
        
    
    //vip 채팅 서비스
    if("" != ""){
	    var pag = "joinProvisionPage";

	    var chkPag = ["svCenterMainPage", "noticePage", "manToManInquiryPage", "faqPage",
	                  "mendingPage", "vocProvisionPage", "vocInfoFormPage", "memberJoinGuidePage", "theClubInfoPage",
	                  "memberBenefitGuidePage", "pointGuidePage", "couponGuidePage", "paymentGuidePage", "asGuidePage"];
	    
    	var vipPassCheck = "N"; // VVIP/THESTAR/STAR 등급 체크
    	var timePassCheck = "N"; // 평일 0900~1800 체크
    	
	    if("" == "VVIP" || ("" == "THESTAR" || "" == "STAR" )){
	    	vipPassCheck = "Y";
	    }
	    
	    if(vipPassCheck == "N" && "" == "PASS"){ // MANIA 이하 등급, 평일 체크 
	    	// chatbotInfo "PASS" : 등급이 VVIP/THESTAR/STAR/MANIA 이거나 평일 0900~1800
			var hour = new Date().format("HHmm");
			var weekName = new Date().format("E");
	        if(weekName != "일요일" && weekName != "토요일" && hour >= "0900" && hour <= "1800"){
	            $.ajax({
	                type:"POST",
	                url:"/ko/chatbot/chkholiday",
	                data: {"CSRFToken":"c2b49c1d-04ae-4d87-9a7a-d22f2b0e0863"},
	                async : false,
	                success:function(result){
	                    if(result == true) {
	                    	timePassCheck = "Y";
	                    }
	                },
	                error:function(request,statuss,error){
	                    ;
	                }
	              });
	        }
	    }
    
	    if ((vipPassCheck == "Y" || timePassCheck == "Y") && "joinProvisionPage" == "main201903Page") {
	        $('#chatbotMain').show(); 
	    }else{
	        $('#chatbotMain').hide(); 
	    }
	    
	    if (chkPag.indexOf(pag) > -1) {
	    	if(vipPassCheck == "Y" || timePassCheck == "Y"){
		        $('#chatbot').show();
	    	}else{
		        $('#chatbot').hide();
	    	}
	    }else{
	        $('#chatbot').hide();
	    }
    }
    
    //athome
    if("" != ""){
        // #1067 - 메인 개편
	    
		$('.ico.athome').mouseenter(function(){
			$('.athome_info').show();
		});
		$('.athome_header').mouseleave(function(){
			$('.athome_info').hide();
		});
    }
    
    // ##1141 - 카테고리 개편
    outletGnbNav();//아울렛 gnb
    
    // 20201214 braze 선호브랜드 추가/삭제 일괄 처리로 인한 진입시 선호브랜드 보관
    chkFavoriteBrand();
});

function athomeBlink(){
	$('.ico.athome').css('opacity','0');
	setTimeout(function(){
		$('.ico.athome').css('opacity','1');
	},500);
}
function athomeEventBlink(){
    $('.athome_event').css('opacity','0');
    setTimeout(function(){
        $('.athome_event').css('opacity','1');
    },500);
}
	
function hpAutoLogin(data){
    //console.log("data.succYn:"+data.succYn);
    if (data.succYn == "Y") {
        $.ajax({
            type:"GET",
            url:"/ko/hpoint/simpleJoinMember",
            data: {"mcustNo":data.mcustNo},
            success:function(data){
                if(data.resultCode == "L"){
                    $("#hcid").val(data.uid);
                    $("#autologinForm").submit();
                }
            },
            error:function(e){
            }
        });
    }
}

function compStringReverse(a, b) {
	if (a > b) return -1;
	if (b > a) return 1;
	return 0;
}

function EnterSearchHeader(){
	
	var searchwords = $('#gnbsearchwords').val();
	searchwords = searchwords.replace(/(^\s*)|(\s*$)/g,"");
	
	if(searchwords!=""){
		location.href="/ko/hssearch?searchwords="+searchwords;
	}else{
		$('#gnbsearchwords').val("");
		alert("검색어를 입력해주세요.");
	}
	
	
}

function language(isoCode) {
	if(location.href.indexOf("/handsome/") > -1){
		
			$.ajax({ 
				type : "post", 
				url : "/ko/_s/language" + "?" + "code="+isoCode,
				dataType : "json",
				error : function( request, status, error ){				
					console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
				}, 
				success : function( result ){
					location.href = "/ko/";
				}
			});
		
	}else{
		location.href = "/"+isoCode;
	}
}
	
function getCSRFToken(){
	return "CSRFToken="+$("#CSRFForm [name='CSRFToken']").first().val();	
}


function setLogout(){
    deletecookie("UID");   
    deletecookie("criteoEmail"); 
    deletecookie("memberGb");
    location.href = "/ko/logout";
}


function chkFavoriteBrand(){
    
}

function brazeCustomAttribut(target){
    if(favoriteBrands.length > 0){
        // REMOVE 체크
        for(var i = 0; i < favoriteBrands.length; i++){
            if(target.indexOf(favoriteBrands[i]) > -1){
                //skip
            }else{
                appboy.getUser().removeFromCustomAttributeArray(
                    "likeBrand",
                    favoriteBrands[i]
                );
            }
        }
        
        // ADD 체크
        for(var j = 0; j < target.length; j++){
            if(favoriteBrands.indexOf(target[j]) > -1){
                //skip
            }else{
                appboy.getUser().addToCustomAttributeArray(
                    "likeBrand",
                    target[j]
                );
            }
        }
    }else{
        if(target.length > 0){
            for(var x = 0; x < target.length; x++){
                appboy.getUser().addToCustomAttributeArray(
                    "likeBrand",
                    target[x]
                );
            }
        }
    }
}

//START OF 메인 검색창////////////////////////
// #1067 - 201803 메인 개편
$(function(){
    

    getNotLoginMyKeyWord($("#query").val(), 10);
    
    /* 
        // 내가 찾은 검색어(비로그인 상태) set, get in DB
        getNotLoginMyKeyWord($("#query").val(), 10);           
     */
        
    if(navigator.userAgent.toLowerCase().indexOf("firefox") > -1) {
        $("#searchBox").on("keypress", function (event) {
            var keyCode = event.which || event.keyCode;
        });
    }
    
    $('#query').click(function(){
        // 스타일 서치 아이템   
        doStyleItem();
        $('.search_box_wrap').click(function(){
            if(!$('.search_box_wrap').hasClass('on')){
                var dataHeight = $('.data_react').height();
                $("#transparent_mask").show();
                
                GA_Event('공통','유틸_메뉴','검색');
                $('.search_box_wrap').stop().animate({width:'406px',height:'+= dataHeight +"px"',"max-height":"430px","opacity":1},'fast');
                
                $('.search_box_wrap').addClass('on');
                $('.btn_search_tab').stop().show();
                
                $('.data_react').stop().show();
                             
                $('#styleSearchSlider').hide();
                $('.search_box .search').stop().fadeIn('fast');
    
                
                //검색창 텝 >> style search slider
                $(document).find('#styleSearchSlider').flexslider({
                    animation:"slide",
                    slideshow:false,
                    directionNav:true,
                    after: function(slider){
                        $("#styleSearchSlider .slides li").not(".clone").each(function(idx){
                            if($(this).hasClass("flex-active-slide")){
                                $(".ss_txt_list li a").removeClass("on");
                                $(".ss_txt_list li:eq("+idx+") a").addClass('on');
                            }
                        });
                    }
                });
                var styleTotal = $("#styleSearchSlider .slides li").size();
                if(styleTotal <= 1) {
                    $("#styleSearchSlider .flex-direction-nav").hide();
                }
                
                //keyup 자동완성 리스트
                
                //keyup 자동완성 리스트
            $('#query').keyup(function(e){
                if(!$('#query').val() == ""){
                        $('.search_tab').hide();
                        
                        $('.search_box_wrap').stop().animate({width:'477px'},'fast',function(){
                            $('.search_autocomplete').show();
                        });
                        $('.search_box_wrap.on .search_box input[type="search"]').stop().animate({width:'461px'},'fast');
                        /*  var atcRightHeight = $(".autocomplete_right").height();//자동완성리스트 높이 조절
                    var atctxtHeight = $(".autocomplete_txt").height();
                    if(atcRightHeight < atctxtHeight){
                        $(".autocomplete_right").height(atctxtHeight);
                    } */
                    
                    }else{
                        $('.search_autocomplete').hide();
                        $('.search_tab').show();
                        
                        $('.search_box_wrap').stop().animate({width:'406px'});
                        $('.search_box_wrap.on .search_box input[type="search"]').stop().animate({width:'390px'});                    
                        
                    }
                    $('.autocomplete_txt li a').each(function(){
                        if(!$(this).hasClass('brand_main')){
                            $(this).html($(this).html().replace("<strong>",""));
                            $(this).html($(this).html().replace("</strong>",""));

                            if($(this).html().indexOf($('#searchBox').val()) > -1){
                                $(this).html($(this).html().replace($('#searchBox').val(),"<strong>"+$('#searchBox').val()+"</strong>"));
                            }
                        }
                    });
                });
                
                //검색창 click시 이미 value 값이 있을 때
                if(!$('#query').val() == ""){
                    $('.search_box_wrap').stop().animate({width:'477px','opacity':1},'fast');
                    $('.search_box_wrap.on .search_box input[type="search"]').stop().animate({width:'461px'},'fast');
                }else{
                    $('.search_box_wrap.on .search_box input[type="search"]').stop().animate({width:'390px'},'fast');
                }
                
            }
            
            $('#styleSearchSlider').fadeIn();
            
            //close button
            $('.search_box a span.btn_close').on('click',function(){
                
                $('.search_box_wrap').stop().animate({width:'30px',height:'-= dataHeight +"px"',"opacity":0});
                
                $('.data_react').stop().hide();
                $('.btn_search_tab').stop().hide();
                $('.search_box_wrap').removeClass('on');
                $("#transparent_mask").hide();
                $('.search_box .search').stop().fadeOut('fast');
                if(!$('#query').val() == ""){
                    $('#query').val("");
                    $('.search_autocomplete').hide();
                    $('.search_tab').show();
                }
                return false;
            });
        });
        $("#transparent_mask").click(function(){
            if($('.search_box_wrap').hasClass('on')){
                
                $('.search_box_wrap').stop().animate({width:'30px',height:'-= dataHeight +"px"',"opacity":0});
                
                $('.data_react').stop().hide();
                $('.btn_search_tab').stop().hide();
                $('.search_box_wrap').removeClass('on');
                $("#transparent_mask").hide();
                $('.search_box .search').stop().fadeOut('fast');
            }
        });
        //검색창 텝
        $(document).on('click','.btn_search_tab a',function(){
            $(this).addClass('on');
            $(this).siblings().removeClass('on');
            $('.data_react .s_tab').stop().hide();
            var activeTab = $(this).attr('rel');
            $('.' + activeTab).stop().show();
        });
    });
});

//##1141 - 카테고리 개편
function outletGnbNav(){//아울렛 gnb
  $('.outlet_brand1803 .sub_menu > ul > li > ul > li > a').on('mouseenter focus',function(){
    $('.outlet_brand1803 .sub_menu > ul > li > ul > li > a').removeClass('on');
    $('.outlet_brand1803 .sub_menu > ul > li > ul > li > div').stop().hide();
    $(this).addClass('on');
    $(this).parent('li').children('div').stop().css('display','inline-block');
    var liWidthSumDep3 = 0;
    $(this).next('div').children('ul').children('li').each(function(idx3){
      var liWidth = $(this).width();
      var liLength = $(this).length;
      if(idx3 > 0){
        liWidthSumDep3 = liWidthSumDep3 + (liWidth + 25);
      }
      $(this).width(liWidth);
    });
    $(this).next('div').children('ul').width(liWidthSumDep3 -10);
  });
  $('.outlet_brand1803 .sub_menu > ul > li > ul > li').on('mouseleave blur',function(){
    $('.outlet_brand1803 .sub_menu > ul > li > ul > li > a').removeClass('on');
    $('.outlet_brand1803 .sub_menu > ul > li > ul > li > div').stop().hide();
  });
}

function GA_search(){
	
	var searchForm = document.search; 
    var searchwords = escape(searchForm.query.value);
    
	GA_Event('검색','직접입력',searchwords);
}

//]]>
</script>
			<form id="autologinForm" name="autologinForm"
				action="/ko/hp/autologin" method="get">
				<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com">
			</form>
			<div class="top_nav topnav1903">
				<div class="top_nav_wrap clearfix">
					<div class="brand_menu brand_menu1903">
						<ul class="clearfix">
							<!-- 선호 브랜드 없음 -->
							<li><span class="on"><a href="/ko/main"
									onclick="GA_Event('공통','탑_네비게이션','HOME')">HOME</a></span></li>
							<!-- 로그인 상태 -->
							<!-- 비로그인 상태 -->
							<p class="brand_menu_guide_text">
								로그인 후 아래 '브랜드' 메뉴에서 좋아하는 브랜드를 <span
									style="margin-top: -1px; display: inline-block;">♥</span>해주세요
							</p>
						</ul>
					</div>
					<div class="gnb_sh_wrap" style="display: none;">
						<!-- search box -->
						<div class="gnb_sh_box">
							<input type="text" class="input" id="gnbsearchwords"
								title="검색어 입력" value=""
								onkeypress="if(event.keyCode==13) {EnterSearchHeader(); return false;}">
							<a href="javascript:void(0);" id="gnbsearch">검색</a>
						</div>
						<!-- //search box -->
						<!-- search result -->
						<div class="gnb_sh_result">
							<div class="tab">
								<a href="javascript:void(0);" class="menu on">최근검색어</a>
								<div class="result_list on">
									<div class="searchWord1" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord1"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords1')">닫기</a>
									</div>
									<div class="searchWord2" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord2"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords2')">닫기</a>
									</div>
									<div class="searchWord3" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord3"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords3')">닫기</a>
									</div>
									<div class="searchWord4" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord4"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords4')">닫기</a>
									</div>
									<div class="searchWord5" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord5"></a><a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords5')">닫기</a>
									</div>
									<a href="javascript:void(0);" class="btn_svclose">검색어 <span
										id="searchSaveYN" save="on">끄기</span></a> <a
										href="javascript:void(0);" class="btn_allclose on"
										onclick="searchOff()">닫기</a>
								</div>
								<a href="javascript:void(0);" class="menu">인기검색어</a>
								<div class="result_list">
									<div>
										<a href="javascript:void(0);" class="ml favBtn">jacket</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">blouse</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">stripe</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">ribbon</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">blouson</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<a href="javascript:void(0);" class="btn_svclose">검색어 <span
										id="searchSaveYNfame" save="on">끄기</span></a> <a
										href="javascript:void(0);" class="btn_allclose"
										onclick="searchOff()">닫기</a>
								</div>
							</div>
						</div>
						<!-- //search result -->
					</div>
					<!-- 201705 search_box_wrap -->
					<div class="search_box_wrap sbw1803" id="searchBox">
						<form name="search" id="search" action="/ko/hssearch/searchCount"
							method="post" onsubmit="return false;">
							<input type="hidden" name="CSRFToken"
								value="c2b49c1d-04ae-4d87-9a7a-d22f2b0e0863"> <input
								type="hidden" name="searchwords" value=""> <input
								type="hidden" name="startCount" value=""> <input
								type="hidden" name="mode" value=""> <input type="hidden"
								name="sort" value=""> <input type="hidden"
								name="collection" value=""> <input type="hidden"
								name="range" value=""> <input type="hidden"
								name="startDate" value=""> <input type="hidden"
								name="endDate" value=""> <input type="hidden"
								name="searchField" value=""> <input type="hidden"
								name="reQuery"> <input type="hidden" id="prefixQuery"
								value=""> <input type="hidden" id="identity"
								name="identity" value=""> <input type="hidden"
								id="realQuery" name="realQuery" value=""> <input
								type="hidden" id="loginState" value="loginOff"> <input
								type="hidden" id="athomeInfo" value=""> <input
								type="hidden" id="selectedLang" name="selectedLang"
								value="product_ko"> <input type="hidden" id="lang"
								name="lang" value="ko"> <input type="hidden"
								id="brandPageGubun" name="brandPageGubun" value="off">
							<!-- 브랜드 페이지 여부 -->
							<input type="hidden" id="brand_img" name="brand_img" value="">
							<input type="hidden" id="brand_url" name="brand_url" value="">
							<div class="search_box">
								<label for="query" class="hidden">search</label> <input
									type="search" id="query" name="query" value=""
									onkeypress="javascript:pressCheck((event),this);"
									style="margin-top: 0.2px;" autocomplete="off"> <span
									class="placeholder"></span> <a href="javascript:void(0);"><span
									class="btn_close">닫기</span></a> <a
									href="javascript:GA_search();doSearch();" class="search"><span
									class="ico">검색</span></a>
							</div>
						</form>
						<!--검색박스 활성화 data_react -->
						<div class="data_react">
							<!-- tab 검색어 입력 전 -->
							<div class="search_tab">
								<div class="btn_search_tab" style="display: none;">
									<a href="javascript:void(0);" rel="recent_search"
										class="btn_recent_search on"
										onclick="GA_Event('검색','최근 검색어','클릭')">최근 검색어</a> <a
										href="javascript:void(0);" rel="style_search"
										class="btn_style_search" id="btn_style_search">Style
										Search</a> <a href="javascript:void(0);" rel="popular_search"
										class="btn_style_search" id="btn_top_search"
										style="display: none;" onclick="GA_Event('검색','인기검색어','클릭')">인기검색어</a>
								</div>
								<!-- 최근 검색어 -->
								<div class="recent_search s_tab">
									<ul id="mykeyword">
										<div class="clear_search_hs">
											<a href="javascript:removeAllMyKeyword()">검색기록전체삭제</a>
										</div>
									</ul>
								</div>
								<!-- style search -->
								<form id="searchStyle" name="searchStyle"
									action="/ko/hssearch/searchCount" method="post"
									onsubmit="return false;">
									<input type="hidden" name="query" value=""> <input
										type="hidden" name="collection" value=""> <input
										type="hidden" id="CSRFToken" name="CSRFToken"
										value="c2b49c1d-04ae-4d87-9a7a-d22f2b0e0863"> <input
										type="hidden" id="searchStyleYn" name="searchStyleYn"
										value="searchStyle">
								</form>

								<div class="style_search s_tab" id="stylesearch_area">
									<p class="style_search_tlt">Style Search 2018</p>
									<div class="ss_txt_list">
										<ul class="style_search_arr" id="style_search_arr">
										</ul>
									</div>
									<div class="ss_img_list" id="styleSearchSlider">
										<ul class="slides">
											<li></li>
										</ul>
									</div>
								</div>

								<!-- style search 컨텐츠 하나일 때-->
								<!-- <div class="style_search s_tab">
	                            <div class="ss_txt_list">
	                                <p class="style_search_tlt">Style Search 2017 S/S</p>
	                                <ul id="style_search_arr">
	                               </ul>
	                            </div>
	                             <div class="ss_img_list" id="styleSearchSlider">
                                    <ul class="slides"><li></li></ul>
                                </div>
	                        </div> -->
								<!-- //style search 컨텐츠 하나일 때-->
								<div class="popular_search s_tab" id="topsearch_area"
									style="display: none;">
									<ol class="ol_popular1" id="topsearchLeft">
									</ol>
									<!-- 				                <ol class="ol_popular2" id="topsearchRight"> -->
									<!-- 	                            </ol> -->
								</div>
							</div>
							<!--// tab 검색어 입력 전 -->
							<!-- 검색어 입력 후 (검색어 자동완성) -->
							<div class="search_autocomplete">
								<div class="autocomplete_txt">
									<div id="brandView">
										<ul>
										</ul>
									</div>
									<div id="ark" style="height: 170px;">
										<div class="ark_wrap" id="ark_wrap" style="display: none;">
											<ul id="ark_content_list"></ul>
										</div>
									</div>
								</div>
								<div class="autocomplete_right">
									<div class="category_brand">
										<p>카테고리/브랜드</p>
										<div class="brand">
											<p id="autocomplete_brand">브랜드</p>
										</div>
										<div class="category">
											<p id="autocomplete_category">카테고리</p>
										</div>
									</div>
									<div class="autocomplete_img">
										<p>
											<span>"<span id="autocomplete_query">{0}</span>"
											</span>에 대한 주요 검색 결과
										</p>
										<!--                                     <p><span>"<span id="autocomplete_query"></span>&#32;"</span>에 대한 주요 검색 결과</p> -->
										<ul id="auto2">
										</ul>
									</div>
								</div>
							</div>
							<!--// 검색어 입력 후 (검색어 자동완성) -->
						</div>
						<!--//검색박스 활성화 data_react -->
					</div>
					<!--// 201705 search_box_wrap -->
					<div class="util_menu" style="display: block;">
						<ul class="clearfix">
							<li><a href="/ko/member/login"
								onclick="GA_Event('공통','헤더_메뉴','로그인')">로그인<!-- 로그인 --></a></li>
							<li class="header_dropmemu mypage"><a href="/ko/mypage"
								class="btn" onclick="GA_Event('공통','헤더_메뉴','마이페이지')">마이페이지</a>
								<div class="list">
									<ul>
										<li><a href="/ko/mypage/order/myorders"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_주문조회')">주문조회<!-- 주문조회 --></a></li>
										<li><a href="/ko/mypage/myGradeInfo"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_나의회원등급')">나의회원등급<!-- 온라인등급 --></a></li>
										<li><a href="/ko/mypage/voucher"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_쿠폰조회')">쿠폰조회<!-- 쿠폰조회 --></a></li>
										<li><a href="/ko/mypage/mypoint"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_마일리지조회')">마일리지조회<!-- 포인트조회 --></a></li>
										<li><a href="/ko/mypage/myEGiftCard"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_e-Gift Card')">e-Gift
												Card<!-- e-Gfit Card -->
										</a></li>
										<li><a href="/ko/mypage/personInfomationChangePWCheck"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_회원정보변경')">회원정보변경<!-- 회원정보변경 --></a></li>
										<li><a href="/ko/svcenter/mantomaninquiry"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_온라인상담')">온라인상담<!-- 온라인 상담 --></a></li>
									</ul>
								</div></li>

							<li>
								<div class="header_dropmemu lang_switch lang_1911">
									<a href="javascript:void(0);" class="btn"
										onclick="GA_Event('공통','헤더_메뉴','LANGUAGE')">LANGUAGE</a>
									<div class="list"
										style="display: none; height: 87px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px;">
										<ul>
											<li><a href="javascript:language('ko')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_한국어')">한국어</a></li>
											<li><a href="javascript:language('en')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_ENGLISH')">ENGLISH</a></li>
											<li><a href="javascript:language('zh')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_中文')">中文</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!-- validation check message global -->
			<input type="hidden" id="validationCheckPwd"
				value="비밀번호를 재입력 하셔야 합니다."> <input type="hidden"
				id="validationCheck" value="필수데이터가 입력되지 않았습니다."> <input
				type="hidden" id="validationCheckMsg" value="다음 사항을 확인해 주세요.">
			<input type="hidden" id="validationCheckMsg1"
				value="필수데이터가 입력되지 않았습니다."> <input type="hidden"
				id="validationCheckMsg2" value="동일문자를 3번 이상 사용할 수 없습니다."> <input
				type="hidden" id="validationCheckMsg3"
				value="연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다."> <input
				type="hidden" id="validationCheckMsg4" value="Caps Lock 이 켜져 있습니다.">
			<input type="hidden" id="validationCheckMsg5"
				value="이메일 아이디의 중복 확인이 필요합니다."> <input type="hidden"
				id="validationCheckMsg6" value="이메일의 중복확인이 필요합니다."> <input
				type="hidden" id="deliveryOkMsg" value="확인"> <input
				type="hidden" id="deliveryCancelMsg" value="취소">

			<form id="chatbotForm"
				action="https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp"
				method="post" target="chatwindow">
				<input type="hidden" name="token" id="chatbot_token"> <input
					type="hidden" name="talkId" id="chatbot_talkId">
				<div>
					<input type="hidden" name="CSRFToken"
						value="c2b49c1d-04ae-4d87-9a7a-d22f2b0e0863">
				</div>
			</form>
			<!-- //headerWrap -->
			<div class="gnbwarp new201608 clearfix">
				<h1 class="logo logo1903">
					<a href="/ko/main" onclick="GA_Event('공통', '로고', '상단');">thehandsome.com</a>
				</h1>
				<!-- 첫번째 c:if -->


				<div id="transparent_mask"></div>
				<!-- 201803 util menu -->
				<div class="util_menu util_menu1803">
					<ul class="clearfix">
						<li><a href="javascript:void(0);"><span class="ico_sh">search</span></a></li>
						<li><a href="/ko/mypage/myWish"
							onclick="GA_Event('공통','유틸_메뉴','위시리스트');"><span
								class="ico wishlist">wish list</span> <span class="count">(<span
									id="wishlistCount">0</span>)
							</span></a></li>
						<li><a href="/ko/shoppingbag"
							onclick="GA_Event('공통','유틸_메뉴','쇼핑백');"><span
								class="ico cart">장바구니</span> <span class="count">(<span
									id="cartCount">0</span>)
							</span></a></li>
					</ul>
				</div>
			</div>
			<!-- //201803 util menu -->
		</div>
	</div>
	<!-- //headerWrap -->

	<style type="text/css">
.upSize {
	font-size: 12px;
}
</style>
	<script type="text/javascript">
//<![CDATA[ 
$(document).ready(function(){
    $(".showMobile").remove();
    
    $("input[name=allcheck]").change(function(){
        if($(this).is(":checked")){
            $("#checkagY_ck1").prop("checked", true);
            $("#checkagY_ck2").prop("checked", true);
            $("#checkagY_ck3").prop("checked", true);
            $("#checkagY").prop("checked", true);
            $(".btnwrap > p").css("display","block");
        }else{
            $("#checkagN_ck1").prop("checked", true);
            $("#checkagN_ck2").prop("checked", true);
            $("#checkagN_ck3").prop("checked", true);
            $("#checkagN").prop("checked", true);
            $(".btnwrap > p").css("display","none");
        }
    });
    
    $("input[name=checkag1]").change(function(){
        if(!$("#checkagY_ck1").is(":checked")){
            $("input[name=allcheck]").prop("checked", false);
            $(".btnwrap > p").css("display","none");
        }else {
            if($("#checkagY_ck2").is(":checked") && $("#checkagY_ck3").is(":checked") && $("#checkagY").is(":checked") ) {
                $("input[name=allcheck]").prop("checked", true);
                $(".btnwrap > p").css("display","block");
            }
        }
    });
    
    $("input[name=checkag2]").change(function(){
        if(!$("#checkagY_ck2").is(":checked")){
            $("input[name=allcheck]").prop("checked", false);
            $(".btnwrap > p").css("display","none");
        }else {
            if($("#checkagY_ck1").is(":checked") && $("#checkagY_ck3").is(":checked") && $("#checkagY").is(":checked") ) {
                $("input[name=allcheck]").prop("checked", true);
                $(".btnwrap > p").css("display","block");
            }
        }
    });
    
    $("input[name=checkag3]").change(function(){
        if(!$("#checkagY_ck3").is(":checked")){
            $("input[name=allcheck]").prop("checked", false);
            $(".btnwrap > p").css("display","none");
        }else {
            if($("#checkagY_ck1").is(":checked") && $("#checkagY_ck2").is(":checked") && $("#checkagY").is(":checked") ) {
                $("input[name=allcheck]").prop("checked", true);
                $(".btnwrap > p").css("display","block");
            }
        }
    });
     
    $("input[name=checkOptionalAg]").change(function(){
        if($("#checkagN").is(":checked")){
            $("input[name=allcheck]").prop("checked", false);
            $(".btnwrap > p").css("display","none");
        }else {
            if($("#checkagY_ck1").is(":checked") && $("#checkagY_ck2").is(":checked") && $("#checkagY_ck3").is(":checked") ) {
                $(".btnwrap > p").css("display","block");
                $("input[name=allcheck]").prop("checked", true);
            }
        }
        
    });
    
    $("#cancleBtn").click(function(){
        var lc = new layerConfirm('회원가입을 취소하시겠습니까?', '확인', '취소');
        lc.confirmAction = function(){
            location.href="/ko/";
        };
    });
    
    $("#nextBtn").click(function(){
        var agreeAll = true;
        
        if(!$("#checkagY_ck1").is(":checked")){
            agreeAll = false;
            layerAlert("약관에 모두 동의해 주세요.");
            return false;
        }

        if(!$("#checkagY_ck2").is(":checked")){
            agreeAll = false;
            layerAlert("약관에 모두 동의해 주세요.");
            return false;
        }

        if(!$("#checkagY_ck3").is(":checked")){
            agreeAll = false;
            layerAlert("약관에 모두 동의해 주세요.");
            return false;
        }

        if($("#checkagY").is(":checked")){
            $("#checkOptional").val("Y");
        }else {
            $("#checkOptional").val("N");
        }
        
        if(agreeAll){
            $("#resultSend").attr("action", "/join/joinform" );
            $("#resultSend").submit();
        }
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
			<ul class="clearfix" style="text-align:center">
				<li class="step02 on">step01 회원약관동의</li>
				<li class="step03">step02 회원정보 입력</li>
				<li class="step04">step03 가입완료</li>
			</ul>
		</div>
		<!--//join step-->
		<!--sub container-->
		<div class="sub_container">
			<div class="join_title">
				<p class="title">더한섬닷컴 회원가입을 환영합니다!</p>
				<p class="s_title">
					등록하신 개인정보는 외부로 유출되지 않으며 동의하지 않은 목적으로는 사용되지 않습니다.<br>
					<em class="ft_point01">만 14세 미만 어린이는 가입이 불가능</em>하며 아래 약관에 모두
					동의해주셔야 회원가입이 가능합니다.
				</p>
			</div>
			<fieldset>
				<legend>본인인증</legend>
				<div class="box_type_1 terms_agree">
					<!-- 서비스 이용약관 -->
					<div class="box">
						<div class="title_wrap clearfix">
							<h4 class="float_left">더한섬닷컴 서비스이용약관</h4>
							<div class="agree_ck float_right">
								<input type="checkbox" id="agree_ck1" name="allcheck"> <label
									for="agree_ck1">전체 약관 동의</label>
							</div>
						</div>
						<div class="terms_box box_type_2">
							제1조 목적<br>
							<br> 이 약관은 주식회사 한섬(이하 “회사”라고 함)이 운영하는 오프라인 매장(이하 “오프라인 매장”)
							및 온라인 쇼핑몰 THEHANDSOME.COM(이하 “더한섬닷컴”)에서 제공하는 인터넷 관련 서비스(이하
							“서비스”)를 이용함에 있어 “회사”와 이용자의 권리ㆍ의무 및 책임사항을 규정함을 목적으로 합니다. <br>
							<br> ※ PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을
							준용합니다.<br>
							<br> <br> 제2조 정의<br>
							<br> 이 약관에서 사용하는 용어는 다음과 같이 정의합니다.<br>
							<br> ① “오프라인 매장”이란 “회사”가 재화 또는 용역(이하 “재화 등”)을 이용자에게 제공하기 위하여
							“재화 등”을 거래할 수 있도록 물리적 장소에 설정한 영업장을 말합니다.<br> ② "더한섬닷컴"이란
							“회사”가 재화 또는 용역(이하 “재화 등”)을 이용자에게 제공하기 위하여 컴퓨터, 모바일 등 정보통신설비를 이용하여
							“재화 등”을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 “더한섬닷컴”을 운영하는 사업자의 의미로도
							사용합니다.<br> ③ “한섬마일리지”란 “회사”의 회원으로 가입된 이용자가 “오프라인 매장”과
							“더한섬닷컴”에서 “재화 등”을 구매한 경우 “회사”가 회원약관 등에 따라 부여하는 마일리지로 구매 시 할인수단으로
							사용할 수 있는 결제수단입니다.<br> ④ “이용자”란 이 약관에 따라 “회사”가 제공하는 “서비스”를 받는
							회원 및 비회원을 말합니다.<br> ⑤ “회원”이라 함은 “회사”에 회원등록을 한 자로서, 계속적으로
							“회사”가 제공하는 “서비스”를 이용할 수 있는 자를 말합니다.<br> ⑥ “비회원”이라 함은 회원에
							가입하지 않고 “회사”가 제공하는 “서비스”를 이용하는 자를 말합니다.<br> ⑦ “판매관리자”는 “회사”와
							판매관리계약을 체결하고 “오프라인 매장”을 위탁운영하는 자를 말합니다.(본 이용약관 하에서는 “회사”와 대리점계약을
							체결하고 “오프라인 매장”을 운영하는 자도 포함하여 지칭합니다).<br> ⑧ “생체정보"라 함은 지문ㆍ얼굴
							등 개인을 식별할 수 있는 신체적 또는 행동적 특징에 관한 정보를 의미합니다.<br> ⑨ “인증정보”란
							"서비스" 절차에 이용되는 회원인증수단으로 "결제 비밀번호", "생체정보", “공인인증서” 등 "더한섬닷컴"이 인정한
							본인확인수단이 인증정보에 해당합니다.<br>
							<br> <br> 제3조 약관의 명시와 개정<br>
							<br> ① “회사”는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호,
							연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 쉽게 알 수 있도록 “회사”의 온라인 쇼핑몰 “더한섬닷컴”
							초기 “서비스” 화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수
							있습니다.<br> ② “회사”는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중
							청약철회ㆍ배송책임ㆍ환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 제시하거나 “더한섬닷컴” 내 별도의
							연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br> ③ “회사”는
							「소비자기본법」, 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제 등에 관한 법률」,
							「전자거래기본법」, 「전자서명법」, 「정보통신망 이용촉진 등에 관한 법률」 등 관련 법령을 위배하지 않는 범위에서 이
							약관을 개정할 수 있습니다.<br> ④ “회사”가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여
							현행 약관과 함께 “더한섬닷컴”에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게
							약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 “회사”는 개정 전과
							개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br> ⑤ “회사”가 약관을 개정할
							경우에는 그 개정약관은 그 적용 일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정
							전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을
							제4항에 의한 개정약관의 공지기간 내에 “회사”에 송신하여 “회사”의 동의를 받은 경우에는 개정약관 조항이
							적용됩니다.<br> ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 「민법」,
							「소비자기본법」, 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제 등에 관한 법률」, 공정거래위원회가
							정하는 「전자상거래 등에서의 소비자보호지침」 등의 관계 법령 또는 상관례에 따릅니다.<br>
							<br> <br> 제4조 서비스의 제공 및 변경<br>
							<br> ① “회사”가 제공하는 “서비스”는 아래와 같습니다.<br> 1. “재화 등”에 대한 정보
							제공 및 구매계약의 체결<br> 2. 구매계약이 체결된 “재화 등”의 배송<br> 3. “회원”에
							대한 회원서비스 제공<br> 4. “회사”의 “재화 등”과 각종 프로모션 제공<br> 5.
							“회사”의 “서비스”에 관한 상담 제공<br> 6. 기타 “회사”가 정하는 업무<br> ②
							"회사"는 전항의 “서비스” 전부 또는 일부를 “판매관리자”에게 위탁할 수 있습니다.<br> ③ “회사”는
							“더한섬닷컴”과 관련하여 “재화 등”의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할
							“재화 등”의 내용을 변경할 수 있고, 이 경우에는 변경된 “재화 등”의 내용 및 제공일자를 명시하여 현재의 “재화
							등”의 내용을 게시한 곳에 즉시 공지합니다.<br> ④ “회사”는 제공하기로 이용자와 계약을 체결한
							“서비스”의 내용을 “재화 등”의 품절 또는 원부자재 수급 불가 등의 사유로 변경할 경우에는 그 사유를 이용자에게
							통지 가능한 방법(이메일 등)으로 즉시 통지합니다.<br> ⑤ 전항의 경우 “회사”는 이로 인하여 이용자가
							입은 손해를 배상합니다. 단, “회사”의 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br>
							<br> <br> 제5조 서비스의 중단<br>
							<br> ① “회사”는 “더한섬닷컴”의 경우 컴퓨터 등 정보통신설비의 보수점검ㆍ교체 및 고장, 통신의 두절
							등의 사유가 발생한 경우에는 “서비스”의 제공을 일시적으로 중단할 수 있습니다.<br> ② “회사”는
							제1항의 사유 등 합리적인 사유 없이 “서비스”의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은
							손해에 대하여 배상합니다. 단 “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br>

							③ 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 “서비스”를 제공할 수 없게 되는 경우에는 “회사”는
							제8조에 정한 방법으로 이용자에게 통지하고 당초 “회사”가 제시한 조건에 따라 소비자에게 보상합니다. 다만,
							“회사”가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지를 “오프라인 매장” 또는 “더한섬 닷컴”에서
							통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.<br>
							<br> <br> 제6조 회원가입<br>
							<br> ① 이용자는 “회사”가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를
							함으로서 회원가입을 신청합니다.<br> ② “회사”는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중
							다음 각 호에 해당하지 않는 한 회원으로 등록합니다.<br> 1. 가입신청자가 이 약관 제7조 제3항에
							의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조 제3항에 의한 회원자격 상실 후 3년이 경과한 자로서
							“회사”의 회원 재가입 승낙을 얻은 경우에는 예외로 한다.<br> 2. 등록 내용에 허위, 기재누락, 오기가
							있는 경우<br> 3. 기타 회원으로 등록하는 것이 “회사”의 기술상, 영업정책상 현저히 지장이 있다고
							판단되는 경우<br> ③ 회원가입계약의 성립시기는 “회사”의 승낙이 회원에게 도달한 시점으로 합니다.<br>

							④ 회원은 회원가입 시, 등록한 사항에 변경이 있는 경우, 즉시 전자우편 또는 기타 방법으로 “회사”에 그 변경사항을
							알려야 합니다.<br>
							<br> <br> 제7조 회원탈퇴 및 자격상실<br>
							<br> ① 회원은 “회사”에 언제든지 탈퇴를 요청할 수 있으며 “회사”는 즉시 회원탈퇴를 처리합니다.<br>

							② 회원이 다음 각 호의 사유에 해당하는 경우, “회사”는 회원 자격을 제한 및 정지시킬 수 있습니다.<br>

							1. 가입 신청 시에 허위 내용을 등록한 경우<br> 2. 구입한 “재화 등”의 대금, 기타 “회사”가
							제공하는 “재화 등” 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우<br> 3. “재화
							등”을 구매한 후, 법률상 또는 정당한 이유 없이 상습적으로 취소ㆍ교환 및 반품하거나, “재화 등”의 인도를 수반하지
							않는 허위 결제 등을 통하여, “회사” 또는 “판매관리자”의 업무를 방해하는 경우<br> 4. “서비스”
							이용 과정에서 “회사”의 직원 또는 “판매관리자”에게 폭언∙협박 또는 음란한 언행을 하는 등 부적절한 방법으로
							“회사” 또는 “판매관리자”의 업무를 방해하는 경우<br> 5. “회사”의 “서비스” 제공과 관련하여
							제3자에게 “회사”의 명예 또는 신뢰성을 해하는 사실을 적시 또는 유포하는 경우<br> 6. 다른 사람의
							“재화 등” 이용을 방해하거나 그 정보를 도용하는 등 거래질서를 위협하는 경우<br> 7. “회사”를
							이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br> ③ “회사”는 “회사”
							내부 정책에 따라 회원 자격의 제한 및 정지의 구체적인 내용을 정하여 회원에게 통지할 수 있습니다.<br>

							④ “회사”가 회원자격을 제한ㆍ정지시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지
							아니하는 경우 “회사”는 회원자격을 상실시킬 수 있습니다.<br> ⑤ “회사”가 회원자격을 상실 시키는
							경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을
							정하여 소명 할 기회를 부여합니다.<br>
							<br> <br> 제8조 회원에 대한 통지<br>
							<br> ① “회사”가 회원에 대한 통지를 하는 경우, 회원이 “회사”와 미리 약정하여 지정한 매체(SMS,
							MMS, E-Mail 등)로 할 수 있습니다. <br> ② “회사”는 불특정다수 회원에 대한 통지의 경우
							1주일 이상 “회사”의 온라인 게시판(게시판 주소)에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원
							본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다.<br>
							<br> <br> 제9조 구매 신청<br>
							<br> ① “회사”의 이용자는 “오프라인 매장” 혹은 “더한섬닷컴” 상에서 다음 또는 이와 유사한 방법에
							의하여 구매를 신청하며, “회사”는 이용자가 구매 신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
							단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다. <br> 1. “재화 등”의 검색 및
							선택<br> 2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br> 3.
							약관내용, 청약철회권이 제한되는 “서비스”, 배송료ㆍ설치비 등의 비용부담과 관련한 내용에 대한 확인<br>
							4. 이 약관에 동의하고 위3.호의 사항을 확인하거나 거부하는 표시 (예 : 마우스클릭)<br> 5. "재화
							등"의 구매 신청/의사표시 및 이에 관한 확인 또는 “회사”의 확인에 대한 동의<br> 6. 결제방법의 선택<br>


							② “회사”가 제3자에게 구매자 개인정보를 제공할 필요가 있는 경우 “회사”는 제공되는 개인정보 항목, 제공받는 자,
							제공받는 자의 개인정보 이용 목적 및 보유ㆍ이용 기간 등을 서면 혹은 “더한섬닷컴”을 통하여 구매자에게 명시하여야
							합니다.<br>
							<br> <br> 제10조 계약의 성립<br>
							<br> ① “회사”는 아래 각 호와 같은 “회원” 혹은 아래와 같은 구매신청 건에 대하여, 구매신청을
							승낙하지 않거나, 장래의 거래를 지속적으로 거절할 수 있습니다. 다만 미성년자와 계약을 체결하는 경우에는 법정대리인의
							동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다. <br>

							1. 동일 “회원”이 상품의 하자가 없음에도 불구하고 상품 구매 후 반품(환불)하는 행위를 반복함으로 인해, 다른
							“회원”의 상품 구매기회가 제한되는 등 다른 “회원” 에게 피해를 줄 우려가 있다고 판단되는 “회원” 혹은 구매신청
							건의 경우<br> 2. 구매한 상품의 반품 시, 반품비용 부담을 피하기 위해 상품을 고의로 손상한 후
							반품하거나, 복수의 상품을 구매한 후 반품하면서 일부 상품을 고의로 누락하여 반품하는 것이 정황상 명백한 “회원”
							혹은 구매신청 건의 경우<br> 3. 재판매, 구매대행 등의 상행위를 목적으로 하는 구매신청이거나, 거래
							정황상 이러한 상행위를 목적으로 구매하는 것으로 판단되는 “회원” 혹은 구매신청건의 경우<br> 4. 해당
							상품 디자인 및 상표의 모방, 복제 등 지적재산권의 침해를 목적으로 하는 구매행위 또는 거래 정황상 이러한 침해를
							목적으로 하는 구매행위로 판단되는 “회원” 혹은 구매신청 건의 경우<br> 5. 기타 사은품 수령을
							목적으로, 사은품만을 취득한 채 구매상품만을 반품하는 등 비정상적인 거래행위를 하는 “회원” 혹은 구매신청 건의 경우<br>
							6. 신청내용에 허위, 기재누락, 오기가 있는 경우<br> 7. 기타 구매 신청에 승낙하는 것이 “회사”
							기술상, 영업정책상 현저히 지장이 있다고 판단하는 경우<br> ② “회사”의 승낙이 제12조 제1항의
							수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br> ③ “회사”의 승낙의
							의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능여부, 구매신청의 정정, 취소 등에 관한 정보 등을 포함하여야
							합니다.<br>
							<br> <br> 제11조 지급방법<br>
							<br> “회사”에서 구매한 "재화 등"에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수
							있습니다.<br> 단, “회사”는 이용자의 지급방법에 대하여 “재화 등”의 대금에 어떠한 명목의 수수료도
							추가하여 징수할 수 없습니다.<br> 1. 폰뱅킹, 인터넷 뱅킹 등의 각 종 계좌이체<br> 2.
							선불카드, 직불카드, 신용카드 등의 각 종 카드 결제<br> 3. 전자화폐에 의한 결제<br> 4.
							마일리지 등 “회사”가 지급한 한섬마일리지에 의한 결제<br> 5. 기타 전자적 지급방법에 의한 대금 지급
							등<br>
							<br> <br> 제12조 더한섬닷컴 수신확인통지, 구매신청 변경 및 취소<br>
							<br> ① “회사”는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br> ②
							수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및
							취소를 요청할 수 있고, “회사”는 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야
							합니다. 다만, 이미 대금을 지불한 경우에는 제16조의 청약철회 등에 관한 규정에 따릅니다.<br>
							<br> <br> 제13조 한섬마일리지 등 제도 운영<br>
							<br> ① 한섬마일리지 적립<br> 1. 한섬마일리지 적립율은 구매금액의 5%(아울렛 1%)이며
							“회사”가 정한 기준에 따라 추가 적립될 수 있습니다.<br> 2. 적립된 한섬마일리지는 본인만 사용
							가능하며 직계가족을 포함하여 타인에게 양도할 수 없습니다.<br> 3. 적립된 한섬마일리지는 최종
							구매일로부터 2년간 거래 실적이 없는 경우 소멸되며, 소멸된 한섬마일리지는 복구가 불가합니다. “회사”는
							소멸대상자에게 적립된 한섬마일리지의 소멸에 대해 통보할 의무가 없습니다.<br> 4. 세일상품, 일부 아울렛
							또는 수입 상품은 한섬마일리지가 적립되지 않습니다. “회사”가 정한 상품과 브랜드에 따라 적립 여부가 상이할 수
							있습니다. <br> ② 적립된 한섬마일리지 사용<br> 1. 1한섬마일리지는 1원으로 환산되어 상품
							구매 시 현금 또는 신용카드와 합산하여 천점 단위로 결제할 수 있습니다.<br> 2. 적립된 한섬마일리지를
							사용하면 해당 한섬마일리지 만큼 차감되며 차후 구매 시 계속 적립이 이루어집니다.<br> 3. 기존 누적
							한섬마일리지가 있던 사용자의 경우 실명인증 회원으로 가입된 후 기존의 한섬마일리지는 전환되며, 전환된 한섬마일리지는
							실명인증 회원가입일에 발생된 것으로 간주합니다.<br> 4. 회원의 누적 한섬마일리지는 “회사”의 전 매장
							및 “더한섬닷컴”에서 적립, 조회 및 사용이 가능합니다. 단, “회사”에서 특별할인 행사를 진행하는 기간에는
							일시적으로 한섬마일리지 적립 및 사용이 제한될 수 있습니다. 이러한 경우에는 행사 이전에 홈페이지와 매장 포스터 등을
							통해 공지합니다. (세일 상품, 일부 아울렛 또는 수입 상품은 한섬마일리지 사용이 제한됩니다.)<br> 5.
							회원탈퇴 및 자격상실 시 적립된 한섬마일리지는 소멸되며 일단 소멸된 한섬마일리지는 복구가 불가합니다.<br>
							6. 한섬마일리지 적립이 누락된 경우 구매 증빙자료(구매영수증 또는 카드대금 청구서)를 구입 후 1개월 이내에
							구매처에 제시하면 즉시 적립해드립니다.<br> ③ 제도 변경 및 기타<br> 1. “회사”는 관련
							법령의 제정, 개정 및 폐지, 다른 업체와 업무제휴 개시 또는 변경 등과 관련하여 기존 제도의 변경이 불가피한 경우,
							예상치 못한 국내외 경영환경의 급격한 변화, 기타 관련 산업의 중대한 위기를 초래할 우려가 있는 불가항력적 사정이
							상당 기간 지속되는 경우 등 상당한 이유가 발생한 경우 회원에게 4개월 전에 고지하고 한섬마일리지의 적립률, 허용한도
							및 기간 등 세부적인 조건을 변경하거나 “서비스”를 종료할 수 있습니다. 한섬마일리지 제도의 세부조건이 변경되거나
							종료된 경우 회원은 제도변경일 전까지 취득한 한섬마일리지를 제도변경일로부터 6개월 이상의 기간으로 “회사”가 고지한
							상당한 기간 내에 기존조건에 따라 사용할 수 있으며 기간 내 사용하지 않은 한섬마일리지는 변경된 제도의 적용을 받거나
							소멸 됩니다.<br> 2. 회원은 본인 거래에 대해서만 한섬마일리지를 적립ㆍ사용할 수 있으며, 지인(직계가족
							포함) 거래 시 한섬마일리지를 적립ㆍ사용하거나 지인(직계가족 포함)에게 한섬마일리지를 양도할 수 없습니다.<br>
							<br> <br> 제14조 재화 등 공급<br>
							<br> ① “더한섬닷컴”의 경우, “회사”는 이용자와 “재화 등”의 공급시기에 관하여 별도의 약정이 없는
							이상 이용자가 청약을 한 날로부터 7일 이내에 “재화 등”을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한
							조치를 취합니다. 다만, “회사”가 이미 “재화 등”의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는
							일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 “회사”는 이용자가 “재화 등”의 공급절차 및 진행사항을
							확인할 수 있도록 적절한 조치를 합니다.<br> ② “오프라인 매장”의 경우, “회사”는 제10조에 따라
							계약이 성립한 경우 즉시 “재화 등”을 공급하며, 다만, 이용자의 요청에 따라 배송하게 될 경우에는 “재화 등”의
							공급절차 및 비용 등에 관하여 이용자에게 별도로 안내합니다.<br> ③ “회사”는 이용자가 구매한 재화에
							대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “회사”가 합리적인 이유없이 약정
							배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만, “회사”가 고의ㆍ과실이 없음을 입증한
							경우에는 그러하지 아니합니다.<br> ④ “회사”와 소비자간에 상품의 인도시기 또는 용역의 제공시기에 관하여
							별도의 약정이 있는 경우에는 당해 약정이 이 약관에 우선합니다.<br>
							<br> <br> 제15조 환급<br>
							<br> “회사”는 이용자가 구매 신청한 “재화 등”이 품절 등의 사유로 인도 또는 용역의 제공을 할 수
							없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터
							2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.<br>
							<br> <br> 제16조 청약철회 등<br>
							<br> ① “회사”와 “재화 등”의 구매에 관한 계약을 체결한 고객은 수신확인의 통지를 받은 날부터 7일
							이내에 청약을 철회할 수 있습니다.<br> ② 이용자는 “재화 등”을 배송 받은 경우 또는 “재화 등”을
							인도받은 경우, 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br> 1. 이용자에게
							책임 있는 사유로 “재화 등”이 멸실 또는 훼손된 경우(다만, “재화 등”의 내용 확인을 위하여 포장 등을 훼손한
							경우에는 청약철회를 할 수 있습니다.)<br> 2. 이용자의 사용 또는 일부 소비에 의하여 “재화 등”의
							가치가 현저히 감소한 경우<br> 3. 시간의 경과에 의하여 재판매가 곤란할 정도로 “재화 등”의 가치가
							현저히 감소한 경우<br> 4. 같은 성능을 지닌 “재화 등”으로 복제가 가능한 경우 그 원본인 “재화
							등”의 포장을 훼손한 경우<br> 5. 이용자의 주문에 따라 제품이 개별적으로 생산∙수선 또는 이와 유사한
							방식으로 제공된 경우 <br> ③ 제2항 제2호 내지 제5호의 경우에 “회사”가 사전에 청약철회 등이
							제한되는 사실을 재화의 포장이나 그 밖에 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를
							하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.<br> ④ 이용자는 제1항 및 제2항의 규정에
							불구하고 “재화 등”의 내용이 표시ㆍ광고 내용과 다르거나, 계약내용과 다르게 이행된 경우에는 당해 “재화 등”을
							공급받은 날로부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내에 청약철회 등을 할 수
							있습니다.<br>
							<br> <br> 제17조 청약철회 등의 효과<br>
							<br> ① “더한섬닷컴”의 경우, “회사”는 본 약관 제16조에 따라 청약철회가 있은 후 이용자로부터
							“재화 등”을 반환받은 경우 3영업일 이내에 이미 지급받은 “재화 등”의 대금을 환급합니다. 이 경우 “회사”가
							이용자에게 “재화 등”의 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을
							곱하여 산정한 지연이자를 지급합니다.<br> ② “오프라인 매장”의 경우, 반품 사유에 해당하여 “회사”가
							이용자로부터 “재화 등”을 반환받는 경우 그 즉시 지급받은 “재화 등”의 대금을 환급합니다. 이 경우 “회사”가
							이용자에게 “재화 등”의 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을
							곱하여 산정한 지연이자를 지급합니다.<br> ③ “회사”는 위 대금을 환급함에 있어서 이용자가 신용카드 또는
							전자화폐 등의 결제수단으로 “재화 등”의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금
							“재화 등”의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br> ④ 청약철회 등의 경우 공급받은 “재화
							등”의 반환에 필요한 비용은 이용자가 부담합니다.“회사”는 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을
							청구하지 않습니다. 다만, “재화 등”의 내용이 표시ㆍ광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을
							하는 경우 “재화 등”의 반환에 필요한 비용은 “회사”가 부담합니다.<br> ⑤ 이용자가 “재화 등”을
							제공받을 때 발송비를 부담한 경우에 “회사”는 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게
							표시합니다.<br>
							<br> <br> 제18조 개인정보보호<br>
							<br> ① “회사”는 이용자의 개인정보수집 시 “서비스”제공을 위하여 필요 최소한의 개인정보만을
							수집합니다.<br> ② “회사”는 회원가입 시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만,
							관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는
							그러하지 아니합니다.<br> ③ “회사”는 이용자의 개인정보를 수집ㆍ이용하는 때에는 당해 이용자에게 그
							목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.<br> ④
							“회사”는 수집된 개인정보를 목적 외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게
							제공하는 경우에는 이용ㆍ제공 단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리
							정함이 있는 경우에는 예외로 합니다.<br> ⑤ “회사”가 제2항과 제3항에 의해 이용자의 동의를 받아야하는
							경우에 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용 목적, 제3자에
							대한 정보제공 관련 사항(제공 받는 자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 등에 관한 법률」
							제22조 제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br>

							⑥ 이용자는 언제든지 “회사” 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “회사”는
							이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에 “회사”는 그 오류를
							정정할 때까지 당해 개인정보를 이용하지 않습니다.<br> ⑦ “회사”는 개인정보 보호를 위하여 관리자를
							한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인 정보의 분실, 도난, 유출, 변조 등으로
							인한 이용자의 손해에 대하여 모든 책임을 집니다.<br> ⑧ “회사” 또는 그로부터 개인정보를 제공받은
							제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.<br>

							⑨ “회사”는 개인정보의 수집ㆍ이용ㆍ제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의
							수집ㆍ이용ㆍ제공에 관한 이용자의 동의 거절시 제한되는 “서비스”를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의
							수집ㆍ이용ㆍ제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 “서비스” 제공을 제한하거나 거절하지 않습니다. <br>
							<br> <br> 제19조 회사의 의무<br>
							<br> ① “회사”는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는
							바에 따라 지속적이고, 안정적으로 “재화 등”을 제공하는 데 최선을 다하여야 합니다.<br> ② “회사”는
							이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을
							갖추어야 합니다.<br> ③ “회사”가 “재화 등”에 대하여 「표시ㆍ광고의 공정화에 관한 법률」제3조 소정의
							부당한 표시ㆍ광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br> ④
							“회사”는 이용자가 원하지 않는 영리목적의 광고성 정보를 발송하지 않습니다.<br>
							<br> <br> 제20조 회원의 ID및 비밀번호에 대한 의무<br>
							<br> ① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br>

							② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br> ③ 회원이 자신의 ID 및
							비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “회사”에 통보하고 “회사”의 안내가 있는
							경우에는 그에 따라야 합니다.<br>
							<br> <br> 제21조 이용자의 의무<br> 이용자는 다음 행위를 하여서는 안됩니다.<br>
							<br> 1. 신청 또는 변경 시 허위내용의 등록<br> 2. 타인의 정보 도용<br>
							3. “회사”에 게시된 정보의 변경<br> 4. “회사”가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의
							송신 또는 게시<br> 5. “회사” 기타 제3자의 저작권 등 지적재산권에 대한 침해<br> 6.
							“회사” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br> 7. 외설 또는 폭력적인
							메시지ㆍ화상ㆍ음성 기타 공서양속에 반하는 정보를 오프라인 또는 온라인에 공개 또는 게시하는 행위<br>
							<br> <br> 제22조 저작권의 귀속 및 이용제한<br>
							<br> ① “회사”가 작성한 저작물에 대한 저작권 기타 지적재산권은 “회사”에 귀속합니다. <br>

							② 이용자는 “회사”의 “오프라인 매장” 및 “더한섬닷컴”을 이용함으로써 얻은 정보 중 “회사”에게 지적재산권이
							귀속된 정보를 “회사”의 사전 승낙없이 복제, 송신, 출판,배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나
							제3자에게 이용하게 하여서는 안됩니다.<br> ③ “회사”는 약정에 따라 이용자에게 귀속된 저작권을 사용하는
							경우 당해 이용자에게 통보하여야 합니다.<br>
							<br> <br> 제23조 분쟁해결<br>
							<br> ① “회사”는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여
							피해보상처리기구를 설치ㆍ운영합니다.<br> ② “회사”는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로
							그 사항을 처리합니다.다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br>

							③ “회사”와 이용자간에 발생한 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시ㆍ도지사가
							의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.<br>
							<br> <br> 제24조 재판권 및 준거법<br>
							<br> ① “회사”와 이용자간에 발생한 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가
							없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지
							않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br> ② “회사”와 이용자간에 제기된
							소송에는 한국법을 적용합니다.<br> <br> <br>

						</div>
						<div class="agree_ck">
							<input type="radio" name="checkag1" id="checkagY_ck1" value="Y">
							<label for="checkagY_ck1">동의합니다.</label> &nbsp; <input
								type="radio" name="checkag1" id="checkagN_ck1" value="N">
							<label for="checkagN_ck1">동의하지않습니다.</label>
						</div>
					</div>
					<!-- 개인정보 수집(필수) -->
					<div class="box">
						<div class="title_wrap">
							<h4>개인정보 수집 및 이용에 관한 동의 (필수)</h4>
						</div>
						<div class="terms_box box_type_2">
							■ 개인정보의 수집항목 및 이용<br>
							<br> 더한섬닷컴은 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 더한섬닷컴의
							서비스를 이용하시는 경우 다음의 정보를 고객의 동의를 받아 수집할 수 있으며 선택항목을 입력하지 않아도 서비스 이용에
							제한은 없습니다.<br>
							<br> 1) 회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위
							<table class="tbl_ltype">
								<caption>회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위</caption>
								<colgroup class="showDesktop">
									<col style="width: 12%;">
									<col style="width: 30%;">
									<col style="width: 10%;">
									<col style="width: 34%;">
									<col>
								</colgroup>


								<thead>
									<tr>
										<th scope="col">수집 방법</th>
										<th scope="col">이용 목적</th>
										<th scope="col">수집 정보</th>
										<th scope="col">수집 항목</th>
										<th scope="col" class="showDesktop">보유 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="frt bdln" style="font-size: 10pt;">간편회원가입</td>
										<td style="font-size: 10pt;">더한섬닷컴 서비스 이용 및 상담, 본인확인</td>
										<td style="font-size: 10pt;">필수</td>
										<td class="al_left" style="font-size: 10pt;">이름, 생년월일,
											아이디, 비밀번호, 이메일, 본인확인 값(CI, DI)</td>
										<td rowspan="5"
											style="vertical-align: middle; font-size: 10pt;"
											class="showDesktop"><strong>회원 탈퇴 시 또는 동의 철회 시</strong></td>
									</tr>
									<tr>
										<td class="frt bdln" rowspan="2" style="font-size: 10pt;">구매
											및 배송</td>
										<td style="font-size: 10pt;">구매결제</td>
										<td style="font-size: 10pt;">필수</td>
										<td class="al_left" style="font-size: 10pt;">신용카드 번호, 은행
											계좌번호, 휴대폰 번호</td>
									</tr>
									<tr>
										<td style="font-size: 10pt;">상품배송, 배송지 관리</td>
										<td style="font-size: 10pt;">필수</td>
										<td class="al_left" style="font-size: 10pt;">주문자 정보 : 주문자
											성명, 휴대폰 번호, 이메일<br>배송지 정보 : 수령인 성명, 휴대폰 번호, 배송지 주소
										</td>
									</tr>
									<tr>
										<td class="frt bdln" style="font-size: 10pt;">환불</td>
										<td style="font-size: 10pt;">주문건 환불</td>
										<td style="font-size: 10pt;">필수</td>
										<td class="al_left" style="font-size: 10pt;">이름, 신용카드 번호,
											은행 계좌번호</td>
									</tr>
								</tbody>
							</table>

							<br> 2) 서비스 이용과정에서 생성되는 정보
							<table class="tbl_ltype">
								<caption>서비스 이용과정에서 생성되는 정보</caption>
								<colgroup>
									<col style="width: 13%;">
									<col style="width: 13%;">
									<col style="width: 13%;">
									<col>
									<col style="width: 30%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">수집 방법</th>
										<th scope="col">이용 목적</th>
										<th scope="col">수집 정보</th>
										<th scope="col">수집 항목</th>
										<th scope="col">보유 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="frt bdln" style="font-size: 10pt;" rowspan="2">더한섬닷컴<br>Web
											site<br>Mobile App<br>Mobile Web
										</td>
										<td style="font-size: 10pt;">본인확인</td>
										<td style="font-size: 10pt;">필수</td>
										<td class="al_left"
											style="font-size: 10pt; font-weight: bold;">본인확인 값(CI,
											DI)</td>
										<td class="al_left"
											style="font-size: 10pt; font-weight: bold;">회원 탈퇴 시 또는
											법정 의무 보유기간</td>
									</tr>
									<tr>
										<td style="font-size: 10pt;">서비스 이용기록</td>
										<td style="font-size: 10pt;">필수</td>
										<td class="al_left"
											style="font-size: 10pt; font-weight: bold;">- IP
											Address, 쿠키, 방문 일시, 서비스 이용기록 및 중지기록, 모바일 기기정보(모바일 서비스 이용 시)<br>
											- 모바일 서비스 이용 시 모바일 기기정보 : OS종류 및 버전, 디바이스 종류, 광고식별자<br>
											- 앱 이용 시 추가 모바일 기기정보 : UUID(임의 생성한 앱 고유값), 푸시 토른(생성값), 회원의 경우
											ID
										</td>
										<td class="al_left"
											style="font-size: 10pt; font-weight: bold;">- 쿠키의 경우,
											브라우저 종료 시 또는 로그아웃 시 만료<br> - 앱 이용 시 수집 정보는 앱 삭제 시 만료
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="agree_ck">
							<input type="radio" name="checkag2" id="checkagY_ck2" value="Y">
							<label for="checkagY_ck2">동의합니다.</label> &nbsp; <input
								type="radio" name="checkag2" id="checkagN_ck2" value="N">
							<label for="checkagN_ck2">동의하지않습니다.</label>
						</div>
					</div>
					<!-- 개인정보 수집(선택)  -->
					<div class="box">
						<div class="title_wrap clearfix">
							<h4>개인정보 수집 및 이용에 관한 동의 (선택)</h4>
						</div>
						<div class="terms_box box_type_2">
							■ 개인정보의 수집항목 및 이용<br>
							<br> 더한섬닷컴은 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 더한섬닷컴의
							서비스를 이용하시는 경우 다음의 정보를 고객의 동의를 받아 수집할 수 있으며 선택항목을 입력하지 않아도 서비스 이용에
							제한은 없습니다.<br>
							<br> 1) 회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위
							<table class="tbl_ltype">
								<caption>회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위</caption>
								<colgroup class="showDesktop">
									<col style="width: 12%;">
									<col style="width: 24%;">
									<col style="width: 12%;">
									<col style="width: 30%;">
									<col>
								</colgroup>



								<thead>
									<tr>
										<th scope="col">수집 방법</th>
										<th scope="col">이용 목적</th>
										<th scope="col">수집 정보</th>
										<th scope="col">수집 항목</th>
										<th scope="col" class="showDesktop">보유 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="frt bdln">구매 및 배송</td>
										<td>상품배송/배송지 관리</td>
										<td>선택</td>
										<td class="al_left">수령인 연락처, 수령인 이메일</td>
										<td rowspan="3" style="font-size: 12px;" class="showDesktop">회원
											탈퇴 시 또는 동의 철회 시</td>
									</tr>
									<tr>
										<td class="frt bdln">기타</td>
										<td>현금영수증 발급, 앱설치 URL 전송</td>
										<td>선택</td>
										<td class="al_left">휴대폰 번호</td>
									</tr>
								</tbody>
							</table>

							<br> 2) 서비스 이용과정에서 생성되는 정보
							<table class="tbl_ltype">
								<caption>서비스 이용과정에서 생성되는 정보</caption>
								<colgroup>
									<col style="width: 13%;">
									<col style="width: 15%;">
									<col style="width: 13%;">
									<col>
									<col style="width: 30%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">수집 방법</th>
										<th scope="col">이용 목적</th>
										<th scope="col">수집 정보</th>
										<th scope="col">수집 항목</th>
										<th scope="col">보유 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="frt bdln">더한섬닷컴<br>Web site<br>Mobile
											App<br>Mobile Web
										</td>
										<td>고객만족도<br>설문조사
										</td>
										<td>선택</td>
										<td class="al_left">고객만족도 설문조사에 의한 항목별 응답기록</td>
										<td class="al_left"><u class="upSize"><strong>회원
													탈퇴 시 또는 법정 의무 보유기간</strong></u></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="agree_ck">
							<input type="radio" name="checkOptionalAg" id="checkagY"
								value="Y"> <label for="checkagY">동의합니다.</label> &nbsp; <input
								type="radio" name="checkOptionalAg" id="checkagN" value="N">
							<label for="checkagN">동의하지않습니다.</label>
							<p style="margin-top: 5px;">선택사항의 동의항목에 선택하지 않으셔도 회원가입 및
								구매결제를 이용하실 수 있습니다.</p>
						</div>
					</div>
					<!-- 개인정보처리위탁 안내 -->
					<div class="box">
						<div class="title_wrap">
							<h4>개인정보 처리 위탁 안내 (필수)</h4>
						</div>
						<div class="terms_box box_type_2">
							■ 개인정보 처리 위탁 안내 <br>
							<br> 더한섬닷컴은 서비스 향상을 위해서 고객의 개인정보를 외부에 수집, 처리, 관리 등을 위탁하여 처리할
							수 있습니다.<br> - 개인정보의 처리를 위탁하는 경우에는 위탁기관 및 그 사실을 홈페이지를 통해 지체
							없이 고객께 고지하겠습니다.
							<table class="tbl_ltype">
								<caption>개인정보의 위탁처리</caption>
								<colgroup>
									<col style="width: 30%;">
									<col style="width: 70%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">위탁업무</th>
										<th scope="col">수탁자</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">고객 상담 업무</td>
										<td class="al_left" style="font-size: 10pt;">㈜유베이스,
											㈜SK엠앤서비스</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">주문 상품의 배송</td>
										<td class="al_left" style="font-size: 10pt;">우정사업본부,
											씰리프로모션, ㈜DHL코리아, ㈜고고밴코리아, CJ대한통운㈜, ㈜굿투럭</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">본인확인</td>
										<td class="al_left" style="font-size: 10pt;">NICE평가정보㈜,
											한국정보인증㈜</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">결제 정보</td>
										<td class="al_left" style="font-size: 10pt;">㈜KG이니시스, ㈜LG
											CNS, ㈜KRP</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">SMS, MMS,
											APP PUSH 발송</td>
										<td class="al_left" style="font-size: 10pt;">㈜KG이니시스, ㈜LG
											CNS, ㈜KRP, ㈜휴머스온</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">상품배송업무 등의
											서비스 제공</td>
										<td class="al_left" style="font-size: 10pt;">㈜아이패스</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">정보전산 처리 및
											유지/관리</td>
										<td class="al_left" style="font-size: 10pt;">㈜이노트리, ㈜뉴프롬,
											(주)현대IT&amp;E, (주)메가존클라우드</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">콜센터 장비 및 시스템
											제공</td>
										<td class="al_left" style="font-size: 10pt;">HCN</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">의뢰 상품의 세탁/수선
											업무</td>
										<td class="al_left" style="font-size: 10pt;">그린어스코리아(유),
											㈜트로반트</td>
									</tr>
									<tr>
										<td class="al_left frt bdln"
											style="font-size: 10pt; font-weight: bold;">고객 상담
											챗봇/채팅상담</td>
										<td class="al_left" style="font-size: 10pt;">㈜카카오엔터프라이즈,
											㈜스펙트라</td>
									</tr>
								</tbody>
							</table>
							<br> * 공유하는 정보는 당해 목적을 달성하기 위하여 필요한 최소한의 정보에 국한됩니다.
						</div>
						<div class="agree_ck">
							<input type="radio" name="checkag3" id="checkagY_ck3" value="Y">
							<label for="checkagY_ck3">동의합니다.</label> &nbsp; <input
								type="radio" name="checkag3" id="checkagN_ck3" value="N">
							<label for="checkagN_ck3">동의하지않습니다.</label>
						</div>
					</div>
					<div class="btnwrap">
						<p style="display: none;">전체 약관에 모두 동의합니다.</p>
						<input type="button" value="취소" class="btn wt" id="cancleBtn">
						<input type="button" value="다음" class="btn gray mr0" id="nextBtn">
					</div>
				</div>
			</fieldset>
		</div>
		<!--//sub container-->
	</div>

	<form id="resultSend" action="/ko/member/joinprovision" method="POST">
		<input type="hidden" name="uid" value="illo00@naver.com"> <input
			type="hidden" name="checkOptional" id="checkOptional">
		<div>
			<input type="hidden" name="CSRFToken"
				value="c2b49c1d-04ae-4d87-9a7a-d22f2b0e0863">
		</div>
	</form>
	<!-- footerWrap -->

	<script type="text/javascript">
//<![CDATA[ 

$(document).ready(function(){
    var ua = navigator.userAgent.toLowerCase();
    // 익스플로러 브라우저 아닐 때만 인스타 링크버튼 노출
    if((ua.indexOf('trident') == -1) && (ua.indexOf("msie") == -1) ){
        $("#f_insta").show();
    }
});

getNewsList("/ko/magazine");


// 2022.03.29 푸터 공지사항 추가
getFooterNotices("/ko/svcenter");


function moveMobile(){
// 	location.href = location.href.replace("?uiel=Desktop", "") + "?uiel=Mobile";
	location.href = "/ko/?uiel=Mobile";
}


function setLogout(){
    deletecookie("UID");   
    deletecookie("criteoEmail"); 
    deletecookie("memberGb");
    location.href = "/ko/logout";
}

//]]>
</script>

	<%@include file="../includes/footer.jsp"%>	
	
	<!-- 네이버 애널리틱스 전환페이지 설정 : e -->
	<form name="accessiblityForm">
		<input type="hidden" id="accesibility_refreshScreenReaderBufferField"
			name="accesibility_refreshScreenReaderBufferField" value="">
	</form>
	<div id="ariaStatusMsg" class="skip" role="status" aria-relevant="text"
		aria-live="polite"></div>

	<!--loadingbar-->
	<div class="layerBg"></div>
	<!--//loadingbar-->

	<div class="layerArea" id="mapleLayer" style="display: none;">
		<div class="layerBg"></div>
	</div>

	<!-- Google 리마케팅 태그 코드 -->
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 943253288;
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
	</script>
	<script type="text/javascript"
		src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/943253288/?value=0&amp;guid=ON&amp;script=0" />
		</div>
	</noscript>

	<script type="text/javascript">  
	
	    var virtusizeViewYn = false;
	    
	        virtusizeViewYn = true;
	        
	    if(virtusizeViewYn){
	         
	    }
	</script>

	<input type="hidden" id="apiConfmKey"
		value="U01TX0FVVEgyMDE5MDYxNzE2NDczMzEwODgxNTI=">

	<!-- GTM 추적코드 추가 -->
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5PCJDFJ"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- Beusable(뷰저블 코드) : s -->
	<!-- Beusable(뷰저블 코드) : e -->

	<!-- Braze(브레이즈 스니펫 코드) : s -->
	<script type="text/javascript">
    +function(a,p,P,b,y){a.appboy={};a.appboyQueue=[];for(var s="initialize destroy getDeviceId toggleAppboyLogging setLogger openSession changeUser requestImmediateDataFlush requestFeedRefresh subscribeToFeedUpdates requestContentCardsRefresh subscribeToContentCardsUpdates logCardImpressions logCardClick logCardDismissal logFeedDisplayed logContentCardsDisplayed logInAppMessageImpression logInAppMessageClick logInAppMessageButtonClick logInAppMessageHtmlClick subscribeToNewInAppMessages subscribeToInAppMessage removeSubscription removeAllSubscriptions logCustomEvent logPurchase isPushSupported isPushBlocked isPushGranted isPushPermissionGranted registerAppboyPushMessages unregisterAppboyPushMessages trackLocation stopWebTracking resumeWebTracking wipeData ab ab.DeviceProperties ab.User ab.User.Genders ab.User.NotificationSubscriptionTypes ab.User.prototype.getUserId ab.User.prototype.setFirstName ab.User.prototype.setLastName ab.User.prototype.setEmail ab.User.prototype.setGender ab.User.prototype.setDateOfBirth ab.User.prototype.setCountry ab.User.prototype.setHomeCity ab.User.prototype.setLanguage ab.User.prototype.setEmailNotificationSubscriptionType ab.User.prototype.setPushNotificationSubscriptionType ab.User.prototype.setPhoneNumber ab.User.prototype.setAvatarImageUrl ab.User.prototype.setLastKnownLocation ab.User.prototype.setUserAttribute ab.User.prototype.setCustomUserAttribute ab.User.prototype.addToCustomAttributeArray ab.User.prototype.removeFromCustomAttributeArray ab.User.prototype.incrementCustomUserAttribute ab.User.prototype.addAlias ab.User.prototype.setCustomLocationAttribute ab.InAppMessage ab.InAppMessage.SlideFrom ab.InAppMessage.ClickAction ab.InAppMessage.DismissType ab.InAppMessage.OpenTarget ab.InAppMessage.ImageStyle ab.InAppMessage.TextAlignment ab.InAppMessage.Orientation ab.InAppMessage.CropType ab.InAppMessage.prototype.subscribeToClickedEvent ab.InAppMessage.prototype.subscribeToDismissedEvent ab.InAppMessage.prototype.removeSubscription ab.InAppMessage.prototype.removeAllSubscriptions ab.InAppMessage.prototype.closeMessage ab.InAppMessage.Button ab.InAppMessage.Button.prototype.subscribeToClickedEvent ab.InAppMessage.Button.prototype.removeSubscription ab.InAppMessage.Button.prototype.removeAllSubscriptions ab.SlideUpMessage ab.ModalMessage ab.FullScreenMessage ab.HtmlMessage ab.ControlMessage ab.Feed ab.Feed.prototype.getUnreadCardCount ab.ContentCards ab.ContentCards.prototype.getUnviewedCardCount ab.Card ab.Card.prototype.dismissCard ab.ClassicCard ab.CaptionedImage ab.Banner ab.ControlCard ab.WindowUtils display display.automaticallyShowNewInAppMessages display.showInAppMessage display.showFeed display.destroyFeed display.toggleFeed display.showContentCards display.hideContentCards display.toggleContentCards sharedLib".split(" "),i=0;i<s.length;i++){for(var m=s[i],k=a.appboy,l=m.split("."),j=0;j<l.length-1;j++)k=k[l[j]];k[l[j]]=(new Function("return function "+m.replace(/\./g,"_")+"(){window.appboyQueue.push(arguments); return true}"))()}window.appboy.getUser=function(){return new window.appboy.ab.User};window.appboy.getCachedFeed=function(){return new window.appboy.ab.Feed};window.appboy.getCachedContentCards=function(){return new window.appboy.ab.ContentCards};(y=p.createElement(P)).type='text/javascript';
        y.src='https://js.appboycdn.com/web-sdk/2.7/appboy.min.js';
        y.async=1;(b=p.getElementsByTagName(P)[0]).parentNode.insertBefore(y,b)
    }(window,document,'script');

    try {
        appboy.initialize('26020c09-35b8-44d0-b579-7e31f4c82527',{baseUrl:'https://sdk.iad-06.braze.com/api/v3'});
        appboy.display.automaticallyShowNewInAppMessages();
        appboy.openSession();
    } catch (e) {
        console.log(e);
    }
</script>
	<!-- Braze(브레이즈 스니펫 코드) : e -->
	<script type="text/javascript">
</script>
	<!-- 네이버 애널리틱스 공통 적용 : s -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
	if (!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "5c81384bbc8d5c";
	if (window.wcs) {
		wcs_do();
	}
</script>
	<!-- 네이버 애널리틱스 공통 적용 : e -->
	<!-- 네이버 애널리틱스 공통 적용(프리미엄로그분석) : s -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript"> 
    if (!wcs_add)
    var wcs_add = {};
    wcs_add["wa"] = "s_56892c2154ef";
    
    if (!_nasa)
    var _nasa = {};
    wcs.inflow("thehandsome.com");
    wcs_do(_nasa);
</script>
	<!-- 네이버 애널리틱스 공통 적용(프리미엄로그분석) : e -->
	<!-- Enliple Tracker Start -->
	<script type="text/javascript">
	try{
	    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
		enp('create', 'common', 'thehandsome', { device: 'W' });  // W:웹, M: 모바일, B: 반응형
		enp('send', 'common', 'thehandsome');
	} catch(e) {
	    console.log(e);
	}
</script>
	<!-- Enliple Tracker End -->


	<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
	<script language="javascript">
	var _AceGID=(function(){var Inf=['dgc17.acecounter.com','8080','AP6F40149814536','CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script>
	<script
		src="https://cr.acecounter.com/Web/AceCounter_CW.js?gc=AP6F40149814536&amp;py=0&amp;gd=dgc17&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1651473273629"
		type="text/javascript"></script>

	<noscript>
		<img src='http://dgc17.acecounter.com:8080/?uid=AP6F40149814536&je=n&'
			border='0' width='0' height='0' alt=''>
	</noscript>
	<!-- AceCounter Log Gathering Script End -->

	<!-- adinsight 공통스크립트 start -->
	<script type="text/javascript">
var TRS_AIDX = 11864;
var TRS_PROTOCOL = document.location.protocol;
document.writeln();
var TRS_URL = TRS_PROTOCOL + '//' + ((TRS_PROTOCOL=='https:')?'analysis.adinsight.co.kr':'adlog.adinsight.co.kr') +  '/emnet/trs_esc.js';
document.writeln("<scr"+"ipt language='javascript' src='" + TRS_URL + "'></scr"+"ipt>");
</script>
	<script language="javascript"
		src="https://analysis.adinsight.co.kr/emnet/trs_esc.js"></script>

	<!-- adinsight 공통스크립트 end -->



</body>
</html>