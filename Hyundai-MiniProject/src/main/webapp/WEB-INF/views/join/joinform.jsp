<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>회원정보입력폼 | 더한섬닷컴</title>

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

<!-- 주소찾기 공공 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<script type="text/javascript">
	//<![CDATA[
	ACC.addons = {};	//JS holder for addons properties
			
	
//]]>
</script>
<script type="text/javascript">
    var handsomeContextPath = "/"; 
</script>

<script type="text/javascript">

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

function GA_Event(Category,Action,Label) {
    
    Label = unescape(Label).replace(/\&#039;/gi,"'");
    
    var v_Label = Label;
    var v_Category = Category;
    var v_Action = Action;
    //공백처리을  _ 처리
    if(Category != null){
        v_Category = Category.replace(/\s{2,}/gi,' ').trim().replace(/\s/gi,'_');
    }
    if(Action != null){
        v_Action = Action.replace(/\s{2,}/gi,' ').trim().replace(/\s/gi,'_');
    }
    if(Label != null){
        v_Label = Label.replace(/\s{2,}/gi,' ').trim().replace(/\s/gi,'_');
    }
    ga('gp.send','event',v_Category,v_Action,v_Label);
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
        var referer = "https://www.thehandsome.com/ko/member/joinprovision";
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
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/943253288/?random=1651473801000&amp;cv=9&amp;fst=1651473801000&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=2&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmember%2Fjoininfoform&amp;ref=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmember%2Fjoinprovision&amp;tiba=%ED%9A%8C%EC%9B%90%EC%A0%95%EB%B3%B4%EC%9E%85%EB%A0%A5%ED%8F%BC%20%7C%20%EB%8D%94%ED%95%9C%EC%84%AC%EB%8B%B7%EC%BB%B4&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<script src="https://static.uni1id.com/jsf/common/enp_uni_id_adver.js"
	type="text/javascript" defer="" async=""></script>
<script
	src="https://cdn.megadata.co.kr/js/socialLink/social_sns_config_min.js"
	type="text/javascript" defer="" async=""></script>
</head>

<body oncontextmenu="return false">
	<!-- 적용이 되지 않는 문제로 body에 넣음 -->
	<script type="text/javascript"
		src="/resources/js/common_function.js?20220503"></script>
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

	<form id="CSRFForm" action="/join/joincomplete" method="post">
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
	    var pag = "joinInfoFormPage";

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
    
	    if ((vipPassCheck == "Y" || timePassCheck == "Y") && "joinInfoFormPage" == "main201903Page") {
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


function searchAddress() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("roadAddress").value = roadAddr;
            document.getElementById("jibunAddress").value = data.jibunAddress;
     
            document.getElementById("engAddress").value = data.addressEnglish;
                   
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
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
										<div class="ark_wrap" id="ark_wrap">
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
				value="아이디의 중복 확인이 필요합니다."> <input type="hidden"
				id="validationCheckMsg6" value="아이디의 중복확인이 필요합니다."> <input
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

	<script type="text/javascript">
	
//<![CDATA[ 
$(document).ready(function(){
    
     var nowYear = parseInt('2008');
     var nowMonth = parseInt('05');
     var nowDay = parseInt('02');
     var monthArray = [0, 31, 28, 31, 30, 31, 30, 31, 31 ,30, 31, 30, 31];

    
    //if(nowYear < 2000) nowYear += 1900;
    
    //년도 
    for(var i=nowYear; i>=1900; i--) {
        $('#selYear').append("<option value='" + i + "'>" + i + "</option>");
    }
    
    $("#selYear").change(function(){


    	var selYear1 = $('#selYear').val();
    	
		if($('#selMonth').val() == 02){
			if($("#selDay option:last").val() >= 29){
				
    			$("#selDay option[value='29']").remove();
    			$("#selDay option[value='30']").remove();
    			$("#selDay option[value='31']").remove();
    		}
    		
			if((selYear1%4 == 0 && selYear1%100 !=0) || selYear1%400 == 0 ){
    			$("#selDay").append("<option value='29'>29</option>");
    		}
    	}
		
		
		//만14세미만 가입X
		if(nowYear == selYear1){
			for(var i = nowMonth+1;i <= 12; i++){
				if(i<10){$("#selMonth option[value='0"+i+"']").remove();}
				else{$("#selMonth option[value='"+i+"']").remove();}
				if($("#selMonth").val() > nowMonth)$("#selMonth").val('').prop("selected", true);
			}
			
			if(nowMonth == parseInt($('#selMonth').val())){
				
				var n_selMonth = parseInt($('#selMonth').val());
				var maxDay = monthArray[n_selMonth];

				for(var i = nowDay+1;i <= maxDay;i++){
					if(i<10){$("#selDay option[value='0"+i+"']").remove();}
					else{$("#selDay option[value='"+i+"']").remove();}
					if($("#selDay").val() > nowDay){$("#selDay").val('').prop("selected", true);}
				}
			}
		}else{
			var n_selMonth = parseInt($('#selMonth').val());
			var maxDay = monthArray[n_selMonth];
			
			if($("#selMonth option:last").val() < 12){
				for(var i = nowMonth+1;i <= 12; i++){
					if(i<10){$("#selMonth").append("<option value='0"+i+"'>0"+i+"</option>");}
					else{$("#selMonth").append("<option value='"+i+"'>"+i+"</option>");}
				}
			}
			
			
			if($("#selDay option:last").val() < maxDay){
				
				if($('#selMonth').val() == 02){
					if((selYear1%4 == 0 && selYear1%100 !=0) || selYear1%400 == 0 ){maxDay=29;}
				}
				
				for(var i = parseInt($("#selDay option:last").val())+1;i <= maxDay;i++){
					if(i<10){$("#selDay").append("<option value='0"+i+"'>0"+i+"</option>");}
					else{$("#selDay").append("<option value='"+i+"'>"+i+"</option>");}
				}
			}
			
		}
    });
    
    $("#selMonth").change(function(){
    	var lastDay = $("#selDay option:last").val();
    	var selYear1 = $('#selYear').val();
    	var n_selMonth = parseInt($('#selMonth').val());
		var maxDay = monthArray[n_selMonth];
    	
    	if($(this).val() == 02){
    		
    		
    		$("#selDay option[value='31']").remove();
			$("#selDay option[value='30']").remove();
			$("#selDay option[value='29']").remove();
    		
    		if((selYear1%4 == 0 && selYear1%100 !=0) || selYear1%400 == 0){
    			$("#selDay").append("<option value='29'>29</option>");
        		
    		};

    		
    	}else if($(this).val() == 04 || $(this).val() == 06 || $(this).val() == 09 || $(this).val() == 11){
    		
    		
    			if(lastDay == 28){
					$("#selDay").append("<option value='29'>29</option>");
					$("#selDay").append("<option value='30'>30</option>");
    			}else if(lastDay == 29){
					$("#selDay").append("<option value='30'>30</option>");
    			}else if(lastDay == 31){
					$("#selDay option[value='31']").remove();
    			}
    		
    			
    	}else{
    		
    		if(lastDay == 28){
    			$("#selDay").append("<option value='29'>29</option>");
    			$("#selDay").append("<option value='30'>30</option>");
    			$("#selDay").append("<option value='31'>31</option>");
    		}else if(lastDay == 29){
    			$("#selDay").append("<option value='30'>30</option>");
    			$("#selDay").append("<option value='31'>31</option>");
    		}else if(lastDay == 30){
				$("#selDay").append("<option value='31'>31</option>");
    		}
    	}
    	
    	
    	//만14세미만 가입X
		if(nowYear == selYear1 && nowMonth == $('#selMonth').val()){
			
				for(var i = nowDay + 1;i <= $("#selDay option:last").val();i++){
					if(i<10){$("#selDay option[value='0"+i+"']").remove();}
					else{$("#selDay option[value='"+i+"']").remove();}
					if($("#selDay option:last").val() < $("#selDay").val())$("#selDay").val('').prop("selected", true);
				}
		}else{
			
			if($("#selDay option:last").val() < maxDay){
				for(var i = parseInt($("#selDay option:last").val()) + 1;i <= maxDay;i++){
					if(i<10){$("#selDay").append("<option value='0"+i+"'>0"+i+"</option>");}
					else{$("#selDay").append("<option value='"+i+"'>"+i+"</option>");}
				}
			}
		}
    });
    
    emailTypeDomainSelectController("#emailDomain","#emailDomainSel");

    passwordValidationCheck('pw');
    passwordValidationCheck('pwc');
    
    $("#pw").keypress(function(event){

        if(capsLock(event)){
            $("#pwcapsLockMsg").text("<Caps Lock>이 켜져 있습니다.");
        } else {
            $("#pwcapsLockMsg").text("");
        }
        if($("#pw").val().length > 0)
            $("#pwMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
     });
     
     $("#pw").focus(function(event){
        $("#pwMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
     });
     
     $("#pw").blur(function(){
         if($(this).val().length > 0){
            var pwRegExp = /^(?=.*[a-zA-Z])(?=.*[\?\<\>\;\:\'\"\`\(\)\{\}\[\]\|\\\~\,\.!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
            if(!pwRegExp.test($(this).val())){  
                $("#pwMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
                $("#pwTypeChk").val("");
                return true;
            }
            $("#pwTypeChk").val("Y");   
            $("#pwMsg").text("");
            $("#pwcMsg").text("");
            $("#pwConfirmChk").val("");
        }
     });
     
     $("#pwc").keypress(function(event){
         
        if(capsLock(event)){
            $("#pwcCapsLockMsg").text("<Caps Lock>이 켜져 있습니다.");
        } else {
            $("#pwcCapsLockMsg").text("");
        }
        
        if($("#pwc").val().length > 0)
            $("#pwcMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
         
     });
     
     $("#pwc").focus(function(event){
            $("#pwcMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
            
     });
     
     $("#pwc").blur(function(){
        if($("#pw").val()!=$("#pwc").val()){
            $("#pwcMsg").text("비밀번호가 일치하지 않습니다");
            $("#pwConfirmChk").val("");
            //$("#pwc").val("");
            return true;
        }
        if($("#pw").val()!= ""){
            $("#pwConfirmChk").val("Y");
            $("#pwcMsg").text("비밀번호가 확인되었습니다.");
        }
     });
     
    
      // 취소 버튼 눌렀을 때 실행
      $("#cancleBtn").click(function(){
          var lc = new layerConfirm('회원가입을 취소하시겠습니까?', '확인', '취소');
          lc.confirmAction = function(){
              location.href="/";
          };
      });


      // 여기
      // 회원가입 버튼 눌렀을 때 실행
      var joinCfBtnChk = 0;
      $("#joinBtn").click(function(){

          var vc = new ValidationCheck(); 
          vc.checkIdList = ['mpassword', 'pwc', 'mname', 'selYear', 'selMonth', 'selDay'];

          if(!vc.isValid()){
              return;
          }
          
          var pwTypeChk = $("#pwTypeChk").val();
          var pwConfirmChk = $("#pwConfirmChk").val();
          var idDuplChk = $("#idDuplChk").val();

          if ( pwTypeChk !== "Y") {
              layerAlert("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요 ");
              return;
          }
          
          if ( pwConfirmChk !== "Y") {
              layerAlert("비밀번호가 일치하지 않습니다 ");
              return;
          }
          
          
          if($("#email").val()!=""){
              if ( idDuplChk !== "Y") {
                  layerAlert("아이디 중복확인이 되지 않았습니다.");
                  return;
              }
              
              var email = $("#email").val()+"@"+$("#emailDomain").val();
              if (!validateEmail(email)) {
                  layerAlert("잘못된 E-mail 형식입니다.");
                  return;
              }
              
              if(email.length > 50) {
                  layerAlert("E-mail은 최대 50자입니다.");
                  return;
              }
          }else{
              if($("#emailReceiveYn").is(':checked')){
                  layerAlert("E-mail (정보수신용) 을 입력해 주세요.");
                  return;
              }
          }
          
          $("#cancleBtn").attr("disabled", true);
          $("#joinBtn").attr("disabled", true);
          
          $("#collectionAgreementYN").val("Y");
          $("#emailAddress").val($("#email").val()+"@"+$("#emailDomain").val());
          
          if($("#email").val()==""){
              $("#emailAddress").val("");
          }
          $("#sBirthday").val($("#selYear").val() + $("#selMonth").val() + $("#selDay").val());
          $("#memberJoinForm").attr("action", "/join/joincomplete");
          $("#memberJoinForm").submit();
      });
      
      
      $("#email,#emailDomain").keypress(function(event){
          if(event.which == 32){
              return false;
          }
      });
      
      $('#ck1').click(function(){
          if($(this).is(':checked')){
              var email = "illo00@naver.com";
              var emailArray = email.split("@");
              
              $("#email").val(emailArray[0]);
              $("#emailDomainSel").val(emailArray[1]);
              $("#emailDomain").val(emailArray[1]);
              $("#emailDomainSel option:eq(0)").prop("selected", "selected");
              $("#emailDomain").show();
          }
      }); 
      
      $(document).on("keyup", "input:text[numberOnly]", function() {$(this).val( $(this).val().replace(/[^0-9]/gi,"") );});
      
      $('.email-prev-detail-btn').click(function(e) {
          e.preventDefault();
          $('.email-detail-pop').show();
          $('.btn_close').click(function(e) {
              e.preventDefault();
              $('.email-detail-pop').hide();
          });
      });
});


/*
 * 비밀번호태그 Key 이벤트 [2017.01.11 - 이현승]
 */
var passwordValidationCheck = function(fid){
    var t = this;
    
    this.msgFn = function(msg){
        $('#'+fid).blur();
        layerAlert(msg)
    };
    
    this.notLockFn = function(){
        //default do nothing. but you can do something!
    };
    
    $('#'+fid).keyup(function(event){
        passwordSamePassCheck(fid);
    });
}

/*
 * 비밀번호 유효성 체크 [2017.01.11 - 이현승]
 */
var readonlyFlag = false;
function passwordSamePassCheck(fid){
    
    var SamePass_0 = 0; // 동일문자 카운트
    var SamePass_1 = 0; // 연속성(+) 카운드
    var SamePass_2 = 0; // 연속성(-) 카운드
    
    var inputdata = $('#'+fid).val();
    
    for (var i = 0; i < inputdata.length; i++) {     // 4자리
        var chr_pass_0 = inputdata.charCodeAt(i - 2);//3);
        var chr_pass_1 = inputdata.charCodeAt(i - 1);//2);
        var chr_pass_2 = inputdata.charCodeAt(i);// - 1);
        
        if (i > 1) {
            // 동일문자 카운트
            if ((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) {
                SamePass_0++;
            } else {
                SamePass_0 = 0;
            }
            // 연속성(+) 카운드
            if (chr_pass_0 - chr_pass_1 == 1 && chr_pass_1 - chr_pass_2 == 1) {
                SamePass_1++;
            } else {
                SamePass_1 = 0;
            }
            // 연속성(-) 카운드
            if (chr_pass_0 - chr_pass_1 == -1 && chr_pass_1 - chr_pass_2 == -1) {
                SamePass_2++;
            } else {
                SamePass_2 = 0;
            }
        }
        
        if(!readonlyFlag){
            if (SamePass_0 > 0) {
                readonlyFlag = true;
                $("input").attr("readonly",readonlyFlag);
                var la = new layerAlert("동일문자를 3번 이상 사용할 수 없습니다.");
                la.confirmAction = function(){
                    readonlyFlag = false;
                    $("input").attr("readonly",readonlyFlag);
                    $('#'+fid).focus();
                };
            } else if (SamePass_1 > 0 || SamePass_2 > 0) {
                readonlyFlag = true;
                $("input").attr("readonly",readonlyFlag);
                var la = new layerAlert("연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다.");
                la.confirmAction = function(){
                    readonlyFlag = false;
                    $("input").attr("readonly",readonlyFlag);
                    $('#'+fid).focus();
                };
            }
        }
    }
}


      

function validateEmail(email) {
  var re = /^((([^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+(\.[^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+)*))|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
}


function dupCheck() {
	var vc = new ValidationCheck();
    vc.checkIdList = ['mid'];
    vc.msgFn = function(msg){
        $("#idMsg").text(msg);
    };
    if(vc.isValid()){
        $.ajax({
            type:"GET",
            url:"/join/isdupleid?id="+$("#mid").val(),
            success:function(response){
                if(response != 0){
               	 	$("#idMsg").text('이미 사용중인 아이디입니다.');
                }else{
               	 	$("#idMsg").text('사용 가능한 아이디입니다.');
                    $("#idDuplChk").val('Y');
                    
                }
            },
            error:function(e){
                console.log(e);
            }
        });
    }
}

function join() {
	var vc = new ValidationCheck(); 
    vc.checkIdList = ['mpassword', 'pwc', 'mname', 'selYear', 'selMonth', 'selDay'];

    if(!vc.isValid()){
        return;
    }
    
    var pwTypeChk = $("#pwTypeChk").val();
    var pwConfirmChk = $("#pwConfirmChk").val();
    var idDuplChk = $("#idDuplChk").val();

    if ( pwTypeChk !== "Y") {
        layerAlert("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요 ");
        return;
    }
    
    if ( pwConfirmChk !== "Y") {
        layerAlert("비밀번호가 일치하지 않습니다 ");
        return;
    }
    
    
    if($("#email").val()!=""){
        if ( idDuplChk !== "Y") {
            layerAlert("아이디 중복확인이 되지 않았습니다.");
            return;
        }
        
        var email = $("#email").val()+"@"+$("#emailDomain").val();
        if (!validateEmail(email)) {
            layerAlert("잘못된 E-mail 형식입니다.");
            return;
        }
        
        if(email.length > 50) {
            layerAlert("E-mail은 최대 50자입니다.");
            return;
        }
    }else{
        if($("#emailReceiveYn").is(':checked')){
            layerAlert("E-mail (정보수신용) 을 입력해 주세요.");
            return;
        }
    }
    
    $("#cancleBtn").attr("disabled", true);
    $("#joinBtn").attr("disabled", true);
    
    $("#collectionAgreementYN").val("Y");
    $("#emailAddress").val($("#email").val()+"@"+$("#emailDomain").val());
    
    if($("#email").val()==""){
        $("#emailAddress").val("");
    }
    $("#sBirthday").val($("#selYear").val() + $("#selMonth").val() + $("#selDay").val());
    $("#memberJoinForm").attr("action", "/join/joincomplete");
    $("#memberJoinForm").submit();
}

//]]>
</script>

	<form id="memberJoinForm" action="/join/joincomplete" method="POST">
		<input type="hidden" name="idDuplChk" id="idDuplChk" value=""
			title="아이디 중복"> <input type="hidden" name="pwTypeChk"
			id="pwTypeChk" value="" title="비밀번호 형식"> <input type="hidden"
			name="pwConfirmChk" id="pwConfirmChk" value="" title="비밀번호 일치">
		<input type="hidden" id="uid" name="uid" value=""> <input
			type="hidden" id="emailAddress" name="emailAddress" value="">
		<input type="hidden" id="sBirthday" name="sBirthday" value="">
		<input type="hidden" id="collectionAgreementYN"
			name="collectionAgreementYN" value="">


		<div id="bodyWrap">
			<!--title-->
			<h3 class="cnts_title">
				<span>회원가입</span>
			</h3>
			<!--//title-->
			<!--join step-->
			<div class="email_step">
				<ul class="clearfix">
					<li class="step02">step01 회원약관동의</li>
					<li class="step03">step02 회원정보 입력</li>
					<li class="step04 on">step03 가입완료</li>
				</ul>
			</div>
			<!--//join step-->
			<!--sub container-->
			<div class="sub_container">
				<div class="join_title">
					<p class="title">고객님의 회원정보를 입력해주세요.</p>
				</div>
				<fieldset>
					<legend>회원정보입력</legend>
					<div class="box_type_1">
						<div class="title_wrap clearfix">
							<h4 class="float_left">회원정보</h4>
							<p class="reqd_txt float_right">
								<strong class="reqd">*</strong> 표시는 필수항목입니다.
							</p>
						</div>
						<div class="tblwrap">
							<table class="tbl_wtype1">
								<caption>회원가입 입력항목</caption>
								<colgroup>
									<col style="width: 160px">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">아이디<strong class="reqd">*</strong></th>
										<td><input type="text" id="mid" name="mid"
											style="width: 150px" title="아이디"> <input
											type="button" class="btn add_s" id="idDubChkBtn" value="중복확인" onclick="dupCheck()">
											<span class="guide_comment" id="idMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="pw">비밀번호</label></th>
										<td><input type="password" id="mpassword"
											name="mpassword" style="width: 150px" title="비밀번호"> <span
											class="guide_comment lh_30" id="pwMsg"></span> <span
											class="guide_comment lh_30" id="pwcapsLockMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong> <label
											for="pw2">비밀번호 확인</label></th>
										<td><input type="password" id="pwc" style="width: 150px"
											title="비밀번호 확인"> <span class="guide_comment"
											id="pwcMsg"></span> <span class="guide_comment"
											id="pwcCapsLockMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="name">이름</label></th>
										<td><input type="text" style="width: 120px" id="name"
											name="mname"></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="email">E-mail (정보수신용)</label></th>
										<td><input type="text" style="width: 120px" title="이메일"
											name="memail" id="email"> <span class="andmail">@</span>
											<select id="emailDomainSel" name="memaildomain"
											style="width: 120px" title="이메일">
												<option value="">직접입력</option>
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
										</select> <input type="text" id="emailDomain" style="width: 120px"
											value="" title="이메일 도메인">
											<div class="wtype_comment pt10">
												<input type="checkbox" id="ck1"><label for="ck1">이메일
													아이디 적용</label>
											</div>
											<div class="wtype_comment pt5">
												<input type="checkbox" id="emailReceiveYn"
													name="emailReceiveYn" value="Y"><label
													for="emailReceiveYn">이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다.
													(선택)</label> <a href="javascript:void(0);"
													class="email-prev-detail-btn">자세히 보기</a>
											</div></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="tel">핸드폰 번호</label></th>
										<td><input type="text" style="width: 50px" maxlength="3"
											id="tel1" name="tel1">- <input type="text"
											style="width: 70px" maxlength="4" id="tel2" name="tel2">-
											<input type="text" style="width: 70px" maxlength="4"
											id="tel3" name="tel3"></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="birth">생년월일</label></th>
										<td><select style="width: 80px" id="selYear" name="year"
											title="년도">
												<option value="">년</option>
												<option value="2008">2008</option>
												<option value="2007">2007</option>
												<option value="2006">2006</option>
												<option value="2005">2005</option>
												<option value="2004">2004</option>
												<option value="2003">2003</option>
												<option value="2002">2002</option>
												<option value="2001">2001</option>
												<option value="2000">2000</option>
												<option value="1999">1999</option>
												<option value="1998">1998</option>
												<option value="1997">1997</option>
												<option value="1996">1996</option>
												<option value="1995">1995</option>
												<option value="1994">1994</option>
												<option value="1993">1993</option>
												<option value="1992">1992</option>
												<option value="1991">1991</option>
												<option value="1990">1990</option>
												<option value="1989">1989</option>
												<option value="1988">1988</option>
												<option value="1987">1987</option>
												<option value="1986">1986</option>
												<option value="1985">1985</option>
												<option value="1984">1984</option>
												<option value="1983">1983</option>
												<option value="1982">1982</option>
												<option value="1981">1981</option>
												<option value="1980">1980</option>
												<option value="1979">1979</option>
												<option value="1978">1978</option>
												<option value="1977">1977</option>
												<option value="1976">1976</option>
												<option value="1975">1975</option>
												<option value="1974">1974</option>
												<option value="1973">1973</option>
												<option value="1972">1972</option>
												<option value="1971">1971</option>
												<option value="1970">1970</option>
												<option value="1969">1969</option>
												<option value="1968">1968</option>
												<option value="1967">1967</option>
												<option value="1966">1966</option>
												<option value="1965">1965</option>
												<option value="1964">1964</option>
												<option value="1963">1963</option>
												<option value="1962">1962</option>
												<option value="1961">1961</option>
												<option value="1960">1960</option>
												<option value="1959">1959</option>
												<option value="1958">1958</option>
												<option value="1957">1957</option>
												<option value="1956">1956</option>
												<option value="1955">1955</option>
												<option value="1954">1954</option>
												<option value="1953">1953</option>
												<option value="1952">1952</option>
												<option value="1951">1951</option>
												<option value="1950">1950</option>
												<option value="1949">1949</option>
												<option value="1948">1948</option>
												<option value="1947">1947</option>
												<option value="1946">1946</option>
												<option value="1945">1945</option>
												<option value="1944">1944</option>
												<option value="1943">1943</option>
												<option value="1942">1942</option>
												<option value="1941">1941</option>
												<option value="1940">1940</option>
												<option value="1939">1939</option>
												<option value="1938">1938</option>
												<option value="1937">1937</option>
												<option value="1936">1936</option>
												<option value="1935">1935</option>
												<option value="1934">1934</option>
												<option value="1933">1933</option>
												<option value="1932">1932</option>
												<option value="1931">1931</option>
												<option value="1930">1930</option>
												<option value="1929">1929</option>
												<option value="1928">1928</option>
												<option value="1927">1927</option>
												<option value="1926">1926</option>
												<option value="1925">1925</option>
												<option value="1924">1924</option>
												<option value="1923">1923</option>
												<option value="1922">1922</option>
												<option value="1921">1921</option>
												<option value="1920">1920</option>
												<option value="1919">1919</option>
												<option value="1918">1918</option>
												<option value="1917">1917</option>
												<option value="1916">1916</option>
												<option value="1915">1915</option>
												<option value="1914">1914</option>
												<option value="1913">1913</option>
												<option value="1912">1912</option>
												<option value="1911">1911</option>
												<option value="1910">1910</option>
												<option value="1909">1909</option>
												<option value="1908">1908</option>
												<option value="1907">1907</option>
												<option value="1906">1906</option>
												<option value="1905">1905</option>
												<option value="1904">1904</option>
												<option value="1903">1903</option>
												<option value="1902">1902</option>
												<option value="1901">1901</option>
												<option value="1900">1900</option>
										</select> <select style="width: 80px" id="selMonth" name="month"
											title="월">
												<option value="">월</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select> <select style="width: 80px" id="selDay" name="day" title="일">
												<option value="">일</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
										</select></td>
									</tr>
									<tr>
										<th scope="row"><label for="address">주소</label></th>
										<td class="address"><input type="text" id="postcode"
											placeholder="우편번호"> <input type="button"
											class="btn add_s" onclick="searchAddress()" value="우편번호 찾기"><br>

											<input type="text" id="roadAddress" name="maddress1"
											placeholder="도로명주소" size="60"><br> <input
											type="hidden" id="jibunAddress" placeholder="지번주소" size="60">
											<span id="guide" style="color: #999; display: none"></span> <input
											type="text" id="detailAddress" name="maddress2"
											placeholder="상세주소" size="60"> <input type="hidden"
											id="extraAddress" placeholder="참고항목" size="60"> <input
											type="hidden" id="engAddress" placeholder="영문주소" size="60">
										</td>
									</tr>
								</tbody>
							</table>
						</div>


						<div class="btnwrap">
							<input type="button" value="취소" class="btn wt" id="cancleBtn">
							<input type="button" value="회원가입" class="btn gray mr0"
								id="joinBtn" onclick="join()">
						</div>
					</div>
				</fieldset>
			</div>
			<!--//sub container-->
		</div>

		<div class="layerArea email-detail-pop" style="display: none;">
			<div class="layerBg"></div>
			<div class="popwrap w_type_11">
				<div class="terms_box box_type_2">
					■ 개인정보의 수집항목 및 이용<br> <br> 더한섬닷컴은 별도의 회원가입 절차 없이 대부분의
					컨텐츠에 자유롭게 접근할 수 있습니다. 더한섬닷컴의 서비스를 이용하시는 경우 다음의 정보를 고객의 동의를 받아 수집할 수
					있으며 선택항목을 입력하지 않아도 서비스 이용에 제한은 없습니다.<br> <br> <span
						style="color: #000; display: block; margin-bottom: 12px;">회원가입
						및 주문 등 필요시점에 수집하는 개인정보의 범위</span>
					<table class="tbl_ltype">
						<caption>회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위</caption>
						<colgroup>
							<col style="width: auto">
							<col style="width: 202px;">
							<col style="width: 103px;">
							<col style="width: 254px;">
							<col style="width: auto;">
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
								<td class="frt">간편회원가입</td>
								<td><strong>신규서비스/상품안내</strong></td>
								<td>선택</td>
								<td>이메일</td>
								<td>회원 탈퇴 시 또는 동의 철회 시</td>
							</tr>
						</tbody>
					</table>
					<a href="javascript:void(0)" class="btn_close"><img
						src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
				</div>
			</div>
		</div>
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
		src="https://cr.acecounter.com/Web/AceCounter_CW.js?gc=AP6F40149814536&amp;py=0&amp;gd=dgc17&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1651473801152"
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