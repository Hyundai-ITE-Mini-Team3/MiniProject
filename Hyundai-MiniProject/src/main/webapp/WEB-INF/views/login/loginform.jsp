<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<title>한섬로그인 | 더한섬닷컴</title>

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


<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-RPZ82BN53C&amp;l=dataLayer&amp;cx=c"></script>
<script async="" defer=""
	src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
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
        var referer = "http://www.thehandsome.com/";
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
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/943253288/?random=1651469363075&amp;cv=9&amp;fst=1651469363075&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.thehandsome.com%2Fko%2Fmember%2Flogin&amp;ref=http%3A%2F%2Fwww.thehandsome.com%2F&amp;tiba=%ED%95%9C%EC%84%AC%EB%A1%9C%EA%B7%B8%EC%9D%B8%20%7C%20%EB%8D%94%ED%95%9C%EC%84%AC%EB%8B%B7%EC%BB%B4&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script>
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

	<form id="CSRFForm" action="/login/login" method="post">
		<div>
			<input type="hidden" name="CSRFToken"
				value="3de79005-1c21-4d79-b349-ed8970177823">
		</div>
	</form>
	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">


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
            data: {"CSRFToken":"3de79005-1c21-4d79-b349-ed8970177823"},
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
	    var pag = "hsLoginPage";

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
	                data: {"CSRFToken":"3de79005-1c21-4d79-b349-ed8970177823"},
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
    
	    if ((vipPassCheck == "Y" || timePassCheck == "Y") && "hsLoginPage" == "main201903Page") {
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
								value="3de79005-1c21-4d79-b349-ed8970177823"> <input
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
										value="3de79005-1c21-4d79-b349-ed8970177823"> <input
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
										style="height: 87px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px; display: none;">
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
						value="3de79005-1c21-4d79-b349-ed8970177823">
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
var tempData = "";
$(document).ready(function(){
	var egiftParam = "";
    
    if(egiftParam != "") {
    	$("#eg_block").addClass("close1812");
    	$("#eg_block").find("a").removeAttr("onclick");
    }
    
    // #1130 로그인 입력창 탭위치변경
    var loginLayer = document.getElementById("loginLayer");
    var loginError = "";
    isShow('h');
//     if( loginError == "true" && loginLayer.value == "E"){
//         isShow('');
//     //isShow('');
//     } else {
//         isShow('h');
//     }

    
    var ssoUrl = "https://sso.h-point.co.kr:29865" + "/co/setSsoReqJSONP.hd";
    gfnSsoReqAjax(ssoUrl, ssoTokenSuc);
     
    

	//로그인 오류횟수 관련
	if("" != "") {
		if("" == "true") {
			layerAlert("잘못된 비밀번호를 5회 입력하셨습니다.<br/>비밀번호가 보호조치되었으니, 고객센터로 문의하시길 바랍니다.");
		} else {
			
				if(Number("") == 3 || Number("") == 4 || Number("") == 5) {
					layerAlert("잘못된 비밀번호를 {0}회 입력하셨습니다.<br/>5회 이상 입력시 로그인은 제한됩니다.");	
				}
			
		}
	}
    
	// 여기
	// 로그인 시 호출되는 함수
    $("#login_btn").click(function(){
        var id = $("#loginForm").find("[id='mid']").eq(0).val();
        var pw = $("#loginForm").find("[id='mpassword']").eq(0).val();
        /* var id_save = $('#id_save:checked').val();
        var remember_me = $('#remember-me:checked').val();
        
        if(id_save == 'on') {
        	
        } else {
        	
        }
        
        if(rememeber_me == 'on') {
        	
        } else {
        	
        } */
        
        document.getElementById("loginLayer").value = "E";

        // 공란 체크
        if(id==""){
            layerAlert("아이디를 입력해주세요.");
            return;
        }
        
        if(pw==""){
            layerAlert("비밀번호를 입력해주세요.");
            return;
        }
        
        $.ajax({
            type:"POST",
            url:"/login/login",
            data: {"mid":id,"mpassword":pw},
            success:function(result){
                if(result == "false"){
                    var la = new layerAlert('로그인 실패! 아이디와 비밀번호를 확인하세요');
    	            
    	            la.confirmAction = function(){
    	                location.href='/login/loginform';
    	            };
                    
                } else {
                	$("#inputId").val(id);
                    $("#loginForm").submit();
                }
            },
            error:function(e){
            	alert("에러");
                location.href="/login/loginform";
            }
        });
    });
    
    
    //enter key event 추가
    $("#loginForm").find("#password").eq(0).keypress(function( event ) {    
        if ( event.which == 13 ) {
            event.preventDefault();
            $("#login_btn").click();
            $(this).blur();
        }
    });
    
    $("#hpPw").keypress(function( event ) {
        if ( event.which == 13 ) {
            event.preventDefault();
            $("#hplogin").click();
            $(this).blur();
        }
    });
    
    $("#otpNo").keypress(function( event ) {
        if ( event.which == 13 ) {
            event.preventDefault();
            $("#otplogin").click();
            $(this).blur();
        }
    });
    
     
    
    //통합맴버십 회원가입 요청
    $("#hpoinJoinBtn").click(function(){
        hpoinJoin();
    });

    //통합맴버십 회원가입 요청    
    $("#hpoinJoinBtn2").click(function(){
        hpoinJoin();
    });
    
    function hpLogin(id, pw){
//         var id = $("#hpId").val();
//         var pw = $("#hpPw").val();
        
//         document.getElementById("loginLayer").value = "H";
        
        pw = pw.replace(/#/g,"[({})]");
        pw = pw.replace(/>/g,"{[()]}");
        pw = pw.replace(/</g,"({[]})");
        $.ajax({
            type:"POST",
            url:"/ko/member/isUnionMember",
            data: {"uid":id,"upw":pw,"CSRFToken":"3de79005-1c21-4d79-b349-ed8970177823"},
            success:function(data){
                if(data.resultCode == "S"){
                    if(data.dormCode == "L002"){
                        hpDorm(data, "h");
                    }else if(data.dormCode == "L004"){
                        if(data.login == "Y"){
                            hpoinPwChange(data);
                        }else if(data.login == "N"){
                            hpoinPwChange2(data);
                        }
                    }else if(data.dormCode == "L999"){
                    	GA_Event('로그인', '로그인', '로그인');
                        $("#hpointLoginForm").find("#username").val(data.otpId);
                        $("#hpointLoginForm").submit(); 
//                         $("#hpointLogin").submit(); 
                    }else if(data.dormCode == "L003"){
                        layerAlert("로그인 할 수 없습니다.<br/>H.Point 고객센터(1800-2800)로<br/>문의해주세요.");
                    }else if(data.dormCode == "0000"){
                        if(data.login == "Y"){
                            $("#hpointLoginForm").find("#username").val(data.otpId);
		                    gfnReqSSoToknIssuAjax(data.hpMcustNo, data.hpSsoAuthCd, 'https://sso.h-point.co.kr:29865', hpSsoSuccess);
                        }else if(data.login == "N"){
                            $("#ssoMcustNo").val(data.hpMcustNo);
                            layerPopup('open'); 
                        }
                    }
                }else if(data.resultCode == "M"){
                    layerAlert(data.resultMessage);
//                     isShow('');
                }else if(data.resultCode == "R"){
                    /* if(data.dormCode == "L004"){
                        hpoinPwChange2();
                    } */
                    layerAlert("탈퇴 후 90일 전에는 로그인 및 재가입 하실 수 없습니다.");
                }else if(data.resultCode == "E"){
                    document.getElementById("hpErrMsg").textContent=data.resultMessage;
                }
            },
            error:function(e){
                layerAlert("로그인 처리 중 오류가 발생했습니다.");
            }
        });
    }
    
    $("#otplogin").click(function(){
        var otp = $("#otpNo").val();

        document.getElementById("loginLayer").value = "H";

        if(otp==""){
            layerAlert("OTP번호를 입력해 주십시요."); 
            return;
        }
        
        $.ajax({
            type:"GET",
            url:"/ko/member/otpMember",
            data: {"otp":otp},
            success:function(data){
                if(data.resultCode == "S"){
                    if(data.dormCode == "L002"){
                        hpDorm(data, "");
                    }else if(data.dormCode == "L004"){
                        if(data.login == "Y"){
                            hpoinPwChange(data);
                        }else if(data.login == "N"){
                            hpoinPwChange2(data);
                        }
                    }else if(data.dormCode == "L003"){
                        layerAlert("로그인 할 수 없습니다.<br/>H.Point 고객센터(1800-2800)로<br/>문의해주세요.");
                    }else if(data.dormCode == "0000"){
	                    if(data.login == "Y"){
	                        $("#hpointLoginForm").find("#username").val(data.otpId);
// 	                        $("[id='username']").eq(1).val(data.otpId);
	                        gfnReqSSoToknIssuAjax(data.hpMcustNo, data.hpSsoAuthCd, 'https://sso.h-point.co.kr:29865', hpSsoSuccess);
                        }else if(data.login == "N"){
//                             $("#ssoMcustNo").val(data.hpMcustNo);
//                             layerPopup('open'); 
                            location.href="/ko/member/login?error=true";
                        }
                    }
                }else if(data.resultCode == "M"){
                    layerAlert(data.resultMessage);
//                     isShow('');
                }else if(data.resultCode == "R"){
                    /* if(data.dormCode == "L004"){
                        hpoinPwChange2();
                    } */
                    layerAlert("탈퇴 후 90일 전에는 로그인 및 재가입 하실 수 없습니다.");
                }else{
                    document.getElementById("otpErrMsg").textContent=data.resultMessage;
                }
            },
            error:function(e){
                layerAlert("로그인 처리 중 오류가 발생했습니다.");
            }
        });
    });    

    $("#otpShow").click(function(){
        $("#handsomeCust .inner_box .title_wrap:first").html("<h4>OTP 인증번호</h4>");
        
        $('#hpIPLogin').hide();
        $('#hpOtpLogin').show(); 
        $('#isOtp').hide();
        $("#otpNo").focus(); 
        
        try{
            ga('gp.send','pageview',{
                'title':'로그인>OTP 인증번호 로그인', //가상페이지 화면명
                'location':window.location.protocol + '//' + window.location.host + decodeURI(window.location.pathname) + '/otplogin' //가상페이지URL
            });
        }catch(e) {
            console.log(e);
        }
    });

    $("#idShow").click(function(){
        $("#handsomeCust .inner_box .title_wrap:first").html("<h4>회원</h4>");
        $("#loginForm").find("input[name='username']").focus();
        
        $('#hpIPLogin').show();
        $('#hpOtpLogin').hide(); 
        $('#isOtp').show();
    });
    
    $('#id_save').click(function(){
        if($(this).is(':checked')){
            $("#hpIdSave2").val("Y"); 
        }else{
            $("#hpIdSave2").val(""); 
        }
    }); 
});

function isShow(custType){
    if(custType=='h'){
        $('#handsomeCust').show();
        $("#loginForm").find("input[name='username']").focus();
        $('#isOtp').show();
        
    }else{
        $('#handsomeCust').hide();
        $('#isOtp').hide();
        
        
    }
}

function ssoTokenSuc(data){
    if (data.succYn == "Y") {
        $.ajax({
            type:"GET",
            url:"/ko/member/hpAutoLogin",
            data: {"mcustNo":data.mcustNo},
            success:function(data){
                if(data.resultCode == "S"){
                    $("#hpointLoginForm").find("#username").val(data.tempId);
                    //$("[id='password']").eq(1).val(data.tempPw);
//                     $("#hpointLogin").submit(); 
                    hpSsoSuccess();
                }
            },
            error:function(e){
            }
        });
    }
}
function simpJoin(){
    var hdUrl = "https://www.h-point.co.kr/cu/join/simpJoinStart.nhd";
    window.open(hdUrl,"simpStart_window");
    
    document.getElementById("ptcoReqnMdaInf").value = "pc";
    $("#simpJoinForm").attr("action", hdUrl);
    $("#simpJoinForm").submit();
    $("#simpJoinLayer").hide();  
}

//가입 유도 팝업    
function layerPopup(division) {
    if(division == "open") {
        $("#simpJoinLayer").show();
    } else {
        $("#simpJoinLayer").hide();  
    }   
}

function easyMemJoin() {
	var lc = new layerConfirm("<span style='color:red;'>간편회원으로 가입</span>하실 경우,<br> <span style='color:red;'>한섬마일리지 및 H.Point 적립이 불가</span>하며,<br><span style='color:red;'>한섬 온라인 멤버십 서비스 ‘THE 클럽’의 혜택을 받으실 수 없습니다.<br></span> 간편회원 가입을 진행하시겠습니까?", "간편회원 가입", "취소");
    lc.confirmAction = function(){
        location.href = "/join/joinprovision";
    };
    return;
}

//]]>
</script>
	<form id="kakaoForm" name="kakaoForm" method="post" action=""
		target="hpKkoLogin">
		<input type="hidden" name="prtnrId" value="D080"> <input
			type="hidden" name="chnnlId" value="1705"> <input
			type="hidden" name="kkoRetUrl" id="kkoRetUrl"
			value="https://www.thehandsome.com:443/ko/member/isKakaoMember">
	</form>
	<form id="hpointLoginForm" name="hpointLoginForm"
		action="/ko/j_spring_security_check" method="post">
		<input type="hidden" id="password" name="password" value="sso">
		<input type="hidden" id="username" name="username"> <input
			type="hidden" id="hpPwChange" name="hpPwChange" value=""> <input
			type="hidden" id="hpIdSave2" name="hpIdSave2" value="">
	</form>
	<form id="hpointHiddenForm" method="post" action=""
		target="joinStart_window">
		<input type="hidden" name="prtnrReqGb" value="02"> <input
			type="hidden" name="prtnrId" value="D080"> <input
			type="hidden" name="chnnlId" value="1705"> <input
			type="hidden" name="ptcoReqnMdaInf" id="ptcoReqnMdaInf">
	</form>
	<form id="simpJoinForm" method="post" action=""
		target="simpStart_window">
		<input type="hidden" name="prtnrId" value="D080"> <input
			type="hidden" name="chnnlId" value="1705"> <input
			type="hidden" name="ssoMcustNo" id="ssoMcustNo" value=""> <input
			type="hidden" name="ptcoReqnMdaInf" id="ptcoReqnMdaInf">
	</form>
	<form id="dormMcustForm" action="/ko/member/login" method="post">
		<input type="hidden" name="mcustNo" id="mcustNoD" value=""> <input
			type="hidden" name="otpId" id="otpIdD" value="">
		<div>
			<input type="hidden" name="CSRFToken"
				value="3de79005-1c21-4d79-b349-ed8970177823">
		</div>
	</form>
	<!-- 다국어 한국에서만 사용 -->
	<input type="hidden" name="loginLayer" id="loginLayer" value="E">
	<div id="bodyWrap" class="login">
		<h3 class="cnts_title">
			<span>로그인</span>
		</h3>
		<div class="sub_container">
			<div id="handsomeCust" class="login_wrap box_type_1 renewal1904">
				<div class="border_box1">
					<!-- 추가 190417 -->
					<div class="inner_box">
						<div class="title_wrap">
							<h4>회원</h4>
						</div>
						<div id="hpIPLogin">
							<!-- 여기 -->
							<form id="loginForm" name="loginForm" action="/" method="post">
								<input type="hidden" name="inputId" id="inputId" value="">
								<fieldset>
									<legend>로그인 입력항목</legend>
									<div class="login_section">

										<p class="login_err_txt" id="hpErrMsg"
											style="margin-left: 0px;"></p>
										<div>
											<div>
												<input type="text" id="mid" name="mid"
													placeholder="아이디 / 이메일을 입력하세요." title="아이디" value="">
											</div>
											<div>
												<input type="password" id="mpassword" name="mpassword"
													placeholder="비밀번호를 입력하세요." title="비밀번호">
											</div>
										</div>
										<a href="javascript:void(0);" class="btn_login" id="login_btn">로그인</a>
										<div class="id_save">
											<input type="checkbox" id="id_save" name="id_save" value="Y">
											<label for="id_save">아이디 저장</label> <input type="checkbox"
												id="remember-me" name="remember-me" value="Y"> <label
												for="remember-me">자동 로그인</label>
										</div>
									</div>
								</fieldset>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />

								<div class="login1905">
									<div>
										<a href="#;" id="otpShow" class="otp"
											onclick="GA_Event('로그인', '로그인', 'OTP_인증번호_로그인');">OTP
											인증번호 로그인</a>
									</div>
									<div>
										<a href="#" onclick="GA_Event('로그인', '로그인', '비회원_주문조회');">비회원
											주문조회</a>
									</div>
								</div>
							</form>
						</div>

						<div id="hpOtpLogin" style="display: none">
							<div class="login_section otp190424">
								<p class="login_err_txt" id="otpErrMsg"></p>
								<div>
									<div>
										<input type="text" id="otpNo" name="otpNo"
											placeholder="OTP 인증번호를 입력하세요.">
									</div>
								</div>
								<a href="javascript:void(0);" class="btn_login" id="otplogin">로그인</a>
								<p class="login_sub_txt">
									H.Point 모바일앱 실행 &gt; 설정메뉴 &gt; ’OTP인증번호발급메뉴’ 를 통해<br>
									OTP인증번호를 발급하고 발행된 인증번호를 입력해 주세요.
								</p>
							</div>
							<div class="login1905" id="idId">
								<div>
									<a href="#;" id="idShow"
										onclick="GA_Event('로그인', '로그인', '아이디/비밀번호 로그인');">아이디 /
										비밀번호 로그인</a>
								</div>
								<div>
									<a href="/ko/member/nonMemberLogin"
										onclick="GA_Event('로그인', '로그인', '비회원_주문조회');">비회원 주문조회</a>
								</div>
							</div>
						</div>


						<div class="section_bottom">
							<p class="mb0">
								<span class="bul_sty01">한섬 회원 아이디 / 비밀번호를 잊으셨나요?</span> <a
									href="/ko/member/findIdPwPage" class="btn add_ss"
									onclick="GA_Event('로그인', '간편회원_찾기', '한섬회원_아이디/비밀번호_찾기');">한섬
									회원 아이디 / 비밀번호 찾기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="border_box2">
					<!-- 추가 190417 -->
					<div class="inner_box step2">
						<div class="title_wrap">
							<h4 class="tlt_typ1">더한섬닷컴 간편회원 가입</h4>
							<p class="txt" style="line-height: 1.5;">
								본인인증 절차 없이, 더한섬닷컴에서 제공하는 서비스만 제한적으로<br>이용할 수 있는 ID를 만듭니다.
							</p>
							<p class="join_txt2 mt10">
								더한섬닷컴에서 사용 가능하며, 오프라인 매장에서는 사용할 수 없습니다.<br> <span>한섬마일리지와
									현대백화점그룹 H.Point 혜택, 한섬의 온라인 멤버십 서비스<br>‘THE 클럽’의 혜택은 제공되지
									않습니다.
								</span>
							</p>
						</div>
						<div class="title_wrap hide" id="eg_block">
							<a onclick="easyMemJoin();GA_Event('로그인', '가입', '간편회원_가입');"
								class="btn add_ss join" style="width: 366px">간편회원 가입</a>
							<p class="join_txt2 mt20">
								<span>※ 간편회원은 e-Gift Card 구매 및 등록이 불가능합니다.<br>통합회원
									가입 후 이용해 주세요.
								</span>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--//login wrap-->
		</div>
		<!--//sub_container-->
	</div>

	<div class="layerArea" id="simpJoinLayer" style="display: none;">
		<div class="layerBg" style="display: block;" tabindex="-1"></div>
		<div class="popwrap w_type_8" id=""
			style="position: absolute; z-index: 201; display: block;"
			tabindex="-1">
			<div class="pop_tltwrap3">
				<h3>더한섬닷컴 회원가입</h3>
			</div>
			<div class="pop_cnt">
				<div class="hpoint">
					<p class="img">
						<img src="/_ui/desktop/common/images/popup/join_pop_icon.jpg"
							style="vertical-align: top">
					</p>
					<p class="txt">
						H.Point통합회원 정보로 더한섬닷컴에 회원가입이 가능합니다.<br> 단, 더한섬닷컴 가입확인을 위해 아래의
						정보로 조회가 진행됩니다.<br> 동의하시면 회원가입 해주세요.<br> <span>※
							조회정보 : 이름, 생년월일, 휴대폰번호</span>
					</p>
					<div class="btnwrap mt30">
						<input class="btn gray" value="더한섬닷컴 가입" type="button"
							style="width: 200px" onclick="simpJoin();">
					</div>
				</div>
			</div>
			<a href="/join/joinprovision" class="btn_close" id="closeLayerPop"
				onclick="layerPopup('close');"><img
				src="/_ui/desktop/common/images/popup/ico_close.png"></a>
		</div>
	</div>


	<!-- 다국어 한국 이외의 언어에서 사용 -->
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

</body>
</html>