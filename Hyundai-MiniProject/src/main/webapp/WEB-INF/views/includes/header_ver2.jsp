<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<head>
<title> <%= request.getParameter("title") %> | 더한섬닷컴</title>
<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/_ui/desktop/common/images/common/thehandsome_ic_16x16.ico">
<link rel="stylesheet" type="text/css" href="/resources/css/font_80.css"
	media="all">
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

<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-RPZ82BN53C&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript"
	src="https://js.appboycdn.com/web-sdk/2.7/appboy.min.js" async=""></script>
<script async="" defer=""
	src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-5PCJDFJ"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://connect.facebook.net/signals/config/1947530058811697?v=2.9.58&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script async="" charset="utf-8"
	src="//static.recopick.com/dist/production.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.vticker.js"></script>

<script type="text/javascript">
	var handsomeContextPath = "/ko";
</script>

<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="/resources/js/html5shiv-printshiv.js"></script>
<script type="text/javascript" src="/resources/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="/resources/js/ui.js?20211105"></script>
<script type="text/javascript" src="/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript"
	src="/resources/js/common_function.js?20220411"></script>
<script type="text/javascript" src="/resources/js/videojs-ie8.min.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery-ui-1.11.2.min.js"></script>

<!-- <script type="text/javascript" src="/resources/js/instagramAPI.js"></script> -->
<script type="text/javascript" src="/resources/js/makePCookie.js"></script>

<script type="text/javascript" src="/resources/js/jquery.min.js"></script>

<script type="text/javascript" src="/resources/js/netfunnel.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="/resources/js/netfunnel_skin.js"
	charset="UTF-8"></script>

<script type="text/javascript" src="/resources/js/unorm.js"></script>

<script type="text/javascript" src="/resources/js/appboy.min.js"></script>
<script type="text/javascript">

	if (!String.prototype.endsWith) {
		String.prototype.endsWith = function(searchString, position) {
			var subjectString = this.toString();
			if (typeof position !== 'number' || !isFinite(position)
					|| Math.floor(position) !== position
					|| position > subjectString.length) {
				position = subjectString.length;
			}
			position -= searchString.length;
			var lastIndex = subjectString.indexOf(searchString, position);
			return lastIndex !== -1 && lastIndex === position;
		};
	}

	function GA_Event(Category, Action, Label) {

		Label = unescape(Label).replace(/\&#039;/gi, "'");

		var v_Label = Label;
		var v_Category = Category;
		var v_Action = Action;
		//공백처리을  _ 처리
		if (Category != null) {
			v_Category = Category.replace(/\s{2,}/gi, ' ').trim().replace(
					/\s/gi, '_');
		}
		if (Action != null) {
			v_Action = Action.replace(/\s{2,}/gi, ' ').trim().replace(/\s/gi,
					'_');
		}
		if (Label != null) {
			v_Label = Label.replace(/\s{2,}/gi, ' ').trim()
					.replace(/\s/gi, '_');
		}
		ga('gp.send', 'event', v_Category, v_Action, v_Label);
	}
</script>

<script>
	/**
	 * 2020.03.31 hmk
	 *
	 * 입력하려는 productId가 배열에 있는지 확인해서
	 * 있을 경우에는 해당 배열 항목 삭제하고 입력하려는 
	 * productId가 key인 js object 생성하여 삽입. (한마디로 replace)
	 * value : 신규 항목일 때
	 * oldValue : 기존 항목이 있어서 교체할 때
	 */
	function mapSet(array, key, value, oldValue) {
		var isKeyExist = false;
		for (var i; i < array.length; i++) {
			if (array[i].key === key) {
				array.splice(i, 1);
				array.push({
					key : key,
					value : oldValue
				});
				isKeyExist = true;
			}
		}
		// 키 존재 여부가 false인 경우는 상기 로직이 수행되지 않았다는 의미 == 새로운 항목
		// 이므로 배열에 그냥 입력
		if (!isKeyExist) {
			array.push({
				key : key,
				value : value
			});
		}
	}

	function setCategoryNameInKO(targetCateCode, defaultCateName) {
		var cates = "AS|잡화^AS01|여성슈즈^AS011|부츠^AS012|로퍼/블로퍼^AS013|스니커즈^AS014|플랫^AS015|힐/슬링백^AS016|샌들/슬라이드^AS017|기타 슈즈^AS02|남성슈즈^AS021|부츠^AS022|포멀슈즈^AS023|스니커즈^AS024|샌들/슬라이드^AS025|기타 슈즈^AS031|토트백^AS032|숄더/크로스바디백^AS033|클러치 백^AS034|기타 백^AS041|토트백^AS042|숄더/크로스바디백^AS043|클러치 백^AS044|기타 백^AS051|머플러^AS052|스카프^AS061|이어링/커프^AS062|목걸이^AS063|팔찌^AS064|반지^AS065|기타 주얼리^AS07|기타 ACC^AS071|모자^AS072|양말^AS073|장갑^AS074|벨트^AS075|지갑^AS076|헤어ACC^AS077|테크ACC^AS078|기타소품^BE011|토너/에멀전/크림^BE012|세럼/앰플/오일/밤^BE013|클렌징/스크럽/마스크^BE031|핸드·바디로션/크림/오일^BE032|핸드·바디워시/스크럽^BE033|샴푸/컨디셔너^BE034|트리트먼트/오일/스프레이^BE035|기타 바디/헤어케어^BE041|향수^EG02|감사^LS|라이프스타일^LS011|패브릭^LS012|프래그런스^LS013|데코레이션^LS014|기타소품^LS021|스킨케어^LS022|욕실용품^LS031|그릇^LS032|보드/트레이^LS033|커트러리^LS034|커피/티^LS035|패브릭/냅킨^LS036|기타소품^LS041|문구^LS042|책^LS043|기타소품^LS051|패션^LS052|기타소품^LS061|의류^LS062|잡화^ME011|티셔츠^ME012|셔츠^ME013|니트^ME014|스웨터^ME015|가디건/베스트^ME021|루즈/테이퍼드^ME022|데님^ME023|쇼츠^ME025|슬림/스트레이트^ME028|조거/트랙^ME031|재킷^ME032|점퍼^ME033|트렌치코트^ME034|코트^ME035|다운/패딩^ME041|드레스셔츠^ME042|수트재킷^ME044|수트팬츠^ME095|TIME HOMME : ONLINE EXCLUSIVE^WE011|티셔츠^WE012|블라우스^WE013|셔츠^WE014|니트^WE015|가디건/베스트^WE021|캐주얼^WE022|포멀^WE023|데님^WE024|쇼츠^WE031|미니 스커트^WE032|펜슬 스커트^WE033|플레어 스커트^WE034|롱/맥시 스커트^WE041|미니 드레스^WE042|미디 드레스^WE043|롱/맥시 드레스^WE051|재킷^WE052|점퍼^WE053|트렌치 코트^WE054|코트^WE055|다운/패딩^WE091|OBZEE : ICONIC OBZEE^WE092|TIME : SIGNATURE SUIT^WE093|SYSTEM : JEANS^WE095|FOURM THE STORE : PALETTE^WE096|FOURM STUDIO : RE:STUDIO^WE098|SYSTEM : PARIS PRESENTATION^WE09B|O'2nd : 25th Anniv. Marie Assenat ^WE09Q|LATT : with 신민아"; //WE011|티셔츠^WE012|블라우스^...
		var cateArr = null;
		var returnCateName = "";
		if (targetCateCode != "") {
			if (cates != "") {
				cateArr = cates.split("^");
				if (cateArr.length > 0) {
					$(cateArr)
							.each(
									function(idx) {
										if (cateArr[idx] != "") { // WE011|티셔츠
											var compareCate = cateArr[idx]
													.split("|");
											if (compareCate.length == 2) { // code | name
												var compareCateCode = compareCate[0]; //WE011
												if (compareCateCode
														.toUpperCase() == targetCateCode
														.toUpperCase()) {
													returnCateName = compareCate[1]; //티셔츠
												}
											}
										}
									});
				}
			}

			// 한글 카테고리명이 없을경우 defaultCateName로 재설정
			if (returnCateName == "") {
				returnCateName = defaultCateName;
			}
		}
		return returnCateName;
	}
</script>
</head>

<body oncontextmenu="return false">

	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<script type="text/javascript" src="/resources/js/SsoAjax.js"></script>

			

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
<!-- 			<script type="text/javascript" src="/resources/js/beta.fix.js"></script>
			<script type="text/javascript" src="/resources/js/ark.js"></script>
			<script type="text/javascript" src="/resources/js/search.js"></script> -->
			<script type="text/javascript">
				//<![CDATA[
				// #1067 - 201803 메인 개편
				function applyCategory() {

					var brandNameArray = new Array();
					var brandCodeArray = new Array();
					var parentBrandCodeArray = new Array();
					var sortIndexArray = new Array();
					var valueSplitArray = new Array();
					var dataValue = "";

					$("input:checkbox[class=\"checkboxEvent\"]").each(
							function() {
								if (this.checked) {
									dataValue = this.value;
									valueSplitArray = dataValue.split('#');
									brandNameArray.push(this.title);
									parentBrandCodeArray
											.push(valueSplitArray[0]);
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
						type : "GET",
						url : "/intro/setCategoryList",
						data : {
							"brandName" : brandName,
							"brandCode" : brandCode,
							"parentBrandCode" : parentBrandCode,
							"sortIndex" : sortIndex
						},
						success : function(data) {
							window.location.reload();
						},
						error : function(e) {
							console.log("error", e);
						}
					});

				}

				function resetCategory() {

					$("input:checkbox[class=\"checkboxEvent\"]").each(
							function() {
								if (this.checked) {
									this.checked = false;
								}
							});
					applyCategory();
				}

				function searchOn() {
					searchInit();
					$('div.gnb_sh_wrap').css("display", "block");
					$('div.util_menu').css("display", "none");
					$('div.gnb_sh_result').css("display", "block");

				}

				function searchOff() {

					$('div.util_menu').css("display", "block");
					$('div.gnb_sh_wrap').css("display", "none");

				}

				function showTab() {

					$('div.gnb_sh_result').css("display", "block");

				}

				// 쿠키 생성
				function setCookie(cName, cValue, cDay) {
					var expire = new Date();
					expire.setDate(expire.getDate() + cDay);
					cookies = cName + '=' + escape(cValue) + '; path=/ ';
					if (typeof cDay != 'undefined')
						cookies += ';expires=' + expire.toGMTString() + ';';
					document.cookie = cookies;
				}
				//쿠키 생성 (00시 제거)
				function setOneDayCookie(cName, cValue, cDay) {
					var currentDate = new Date();
					var expire = new Date(currentDate.getFullYear(),
							currentDate.getMonth(), currentDate.getDate()
									+ cDay, 0, 0, 0);
					cookies = cName + '=' + escape(cValue) + '; path=/ ';
					if (typeof cDay != 'undefined')
						cookies += ';expires=' + expire.toGMTString() + ';';
					document.cookie = cookies;
				}

				// 쿠키 가져오기
				function getCookie(cName) {
					cName = cName + '=';
					var cookieData = document.cookie;
					var start = cookieData.indexOf(cName);
					var cValue = '';
					if (start != -1) {
						start += cName.length;
						var end = cookieData.indexOf(';', start);
						if (end == -1)
							end = cookieData.length;
						cValue = cookieData.substring(start, end);
					}
					return unescape(cValue);
				}

				//쿠키 삭제
				function deletecookie(name) {
					var today = new Date();
					var path = "/ko/";
					var lastIndex = path.lastIndexOf('/');
					path = path.substring(0, lastIndex);
					today.setDate(today.getDate() + -1);
					document.cookie = name + "=; path=" + path + "; expires="
							+ today.toGMTString() + ";";
				}

				function deletecookiePath(name, path) {
					var today = new Date();

					if (path == "") {
						path = "/";
					}

					today.setDate(today.getDate() + -1);
					document.cookie = name + "=; path=" + path + "; expires="
							+ today.toGMTString() + ";";
				}

				function searchInit() {
					var settingCookie = getCookie("searchSaveYN");
					if (settingCookie == "on") {

						$('#searchSaveYN').text("끄기");
						$('#searchSaveYNfame').text("끄기");

					} else {
						$('#searchSaveYN').text("저장");
						$('#searchSaveYNfame').text("저장");

					}
				}

				function ie8AlertHide() {
					setCookie("ie8AlertHideYN", "on", 365);
					$("#alertIE8").hide();
				}

				$(document)
						.ready(
								function() {

									$('.gnb_nav.hscene1906 .cate_m .hscene')
											.mouseover(
													function() { // 툴팁
														$(
																'.gnb_nav.hscene1906 .cate_m li .delch_box')
																.addClass('on');
													});
									$('.gnb_nav.hscene1906 .cate_m .hscene')
											.mouseout(
													function() {
														$(
																'.gnb_nav.hscene1906 .cate_m li .delch_box')
																.removeClass(
																		'on');
													});

									var todayDate = new Date();
									var startDate = new Date(
											'2018/05/29 00:00:01'), endDate = new Date(
											'2018/06/17 23:59:59');
									if (todayDate.getTime() >= startDate
											.getTime()
											&& todayDate.getTime() <= endDate
													.getTime()) {
										$("#athome_header_event").show();
									} else {
										$("#athome_header_org").show();
									}

									//IE8버젼 체크
									if (getCookie("ie8AlertHideYN") != "on") {
										if (navigator.appVersion
												.indexOf('MSIE 8.0') >= 0
												|| navigator.appVersion
														.indexOf('Trident/4.0') >= 0) {
											var html = "<div style='position:relative; width: 100%; height: 30px;'><div style='position:fixed;width:100%;background:#ffffbc none repeat scroll 0% 0%; text-align: center; z-index: 999; line-height: 30px;'>";
											html += "Thehandsome.com은 인터넷 익스플로러 10 이상에 최적화되어 있습니다.";
											html += " <a href='http://windows.microsoft.com/ko-kr/windows/downloads'><strong>[브라우저 업데이트 바로가기]</strong></a>";
											html += "<a href='#' onclick='ie8AlertHide();' style='display:block;float:right;padding-right:10px'>X</a></div></div>";
											$(".loading_bar").before(
													"<div align='center' id='alertIE8'>"
															+ html + "</div>");
										}
									}

									settingCookie = getCookie("searchSaveYN");

									if (settingCookie == "") {
										setCookie("searchSaveYN", "on", 365);
									}

									$('#gnbsearch')
											.click(
													function() {
														var searchwords = $(
																'#gnbsearchwords')
																.val();
														searchwords = searchwords
																.replace(
																		/(^\s*)|(\s*$)/g,
																		"");

														if (searchwords != "") {
															location.href = "/ko/hssearch?searchwords="
																	+ searchwords;
														} else {
															$('#gnbsearchwords')
																	.val("");
															alert("검색어를 입력해주세요.");
														}
													});

									$('.btn_svclose')
											.click(
													function() {
														settingCookie = getCookie("searchSaveYN");
														if ($(this).children(
																'span').text() == "끄기") {
															$(this).children(
																	'span')
																	.text("저장");
														} else {
															$(this).children(
																	'span')
																	.text("끄기");
														}
														if (settingCookie == "off") {
															$(this)
																	.children(
																			'span')
																	.attr(
																			"save",
																			"on");
															setCookie(
																	"searchSaveYN",
																	"on", 365);
														} else {
															$(this)
																	.children(
																			'span')
																	.attr(
																			"save",
																			"off");
															setCookie(
																	"searchSaveYN",
																	"off", 365);
														}

													});
									$('.favBtn')
											.click(
													function() {

														words = $(this).text();
														location.href = "/ko/hssearch?searchwords="
																+ words;

													});
									$('.newlyBtn')
											.click(
													function() {

														words = $(this).text();
														location.href = "/ko/hssearch?searchwords="
																+ words;

													});

									var sw1 = decodeURIComponent(escape(getCookie("HS_Seachwords1")));
									var sw2 = decodeURIComponent(escape(getCookie("HS_Seachwords2")));
									var sw3 = decodeURIComponent(escape(getCookie("HS_Seachwords3")));
									var sw4 = decodeURIComponent(escape(getCookie("HS_Seachwords4")));
									var sw5 = decodeURIComponent(escape(getCookie("HS_Seachwords5")));

									var sw1_date = sw1 != "" ? sw1.split("_")[1]
											: "";
									var sw2_date = sw2 != "" ? sw2.split("_")[1]
											: "";
									var sw3_date = sw3 != "" ? sw3.split("_")[1]
											: "";
									var sw4_date = sw4 != "" ? sw4.split("_")[1]
											: "";
									var sw5_date = sw5 != "" ? sw5.split("_")[1]
											: "";

									var arr = [ sw1, sw2, sw3, sw4, sw5 ];
									var arr_date = [ sw1_date, sw2_date,
											sw3_date, sw4_date, sw5_date ];

									arr_date.sort(compStringReverse);

									for (var i = 0; i < arr_date.length; i++) {
										for (var j = 0; j < arr.length; j++) {
											if (arr_date[i] != "") {
												if (arr[j].indexOf(arr_date[i]) > 0) {
													$("#searchWord" + (i + 1))
															.text(
																	arr[j]
																			.split("_")[0]);
													$('.searchWord' + (i + 1))
															.css("display",
																	"block");

													$("#searchWord" + (i + 1))
															.next()
															.attr(
																	"onclick",
																	"deletecookie('HS_Seachwords"
																			+ (j + 1)
																			+ "')");
												}
											}
										}

										if (arr_date[i] == "") {
											$("#searchWord" + (i + 1)).text("");
										}
									}

									deletecookie("memberGb");

									//자동로그인

									//vip 채팅 서비스
									if ("PASS" != "") {
										var pag = "cartPage";

										var chkPag = [ "svCenterMainPage",
												"noticePage",
												"manToManInquiryPage",
												"faqPage", "mendingPage",
												"vocProvisionPage",
												"vocInfoFormPage",
												"memberJoinGuidePage",
												"theClubInfoPage",
												"memberBenefitGuidePage",
												"pointGuidePage",
												"couponGuidePage",
												"paymentGuidePage",
												"asGuidePage" ];

										var vipPassCheck = "N"; // VVIP/THESTAR/STAR 등급 체크
										var timePassCheck = "N"; // 평일 0900~1800 체크

										if ("" == "VVIP"
												|| ("" == "THESTAR" || "" == "STAR")) {
											vipPassCheck = "Y";
										}

										if (vipPassCheck == "N"
												&& "PASS" == "PASS") { // MANIA 이하 등급, 평일 체크 
											// chatbotInfo "PASS" : 등급이 VVIP/THESTAR/STAR/MANIA 이거나 평일 0900~1800
											var hour = new Date()
													.format("HHmm");
											var weekName = new Date()
													.format("E");
											if (weekName != "일요일"
													&& weekName != "토요일"
													&& hour >= "0900"
													&& hour <= "1800") {
												$
														.ajax({
															type : "POST",
															url : "/ko/chatbot/chkholiday",
															data : {
																"CSRFToken" : "c0571cac-d559-4d66-8ddf-bd6bbf64b486"
															},
															async : false,
															success : function(
																	result) {
																if (result == true) {
																	timePassCheck = "Y";
																}
															},
															error : function(
																	request,
																	statuss,
																	error) {
																;
															}
														});
											}
										}

										if ((vipPassCheck == "Y" || timePassCheck == "Y")
												&& "cartPage" == "main201903Page") {
											$('#chatbotMain').show();
										} else {
											$('#chatbotMain').hide();
										}

										if (chkPag.indexOf(pag) > -1) {
											if (vipPassCheck == "Y"
													|| timePassCheck == "Y") {
												$('#chatbot').show();
											} else {
												$('#chatbot').hide();
											}
										} else {
											$('#chatbot').hide();
										}
									}

									//athome
									if ("" != "") {
										// #1067 - 메인 개편

										$('.ico.athome').mouseenter(function() {
											$('.athome_info').show();
										});
										$('.athome_header').mouseleave(
												function() {
													$('.athome_info').hide();
												});
									}

									// ##1141 - 카테고리 개편
									outletGnbNav();//아울렛 gnb

									// 20201214 braze 선호브랜드 추가/삭제 일괄 처리로 인한 진입시 선호브랜드 보관
									chkFavoriteBrand();
								});

				function athomeBlink() {
					$('.ico.athome').css('opacity', '0');
					setTimeout(function() {
						$('.ico.athome').css('opacity', '1');
					}, 500);
				}
				function athomeEventBlink() {
					$('.athome_event').css('opacity', '0');
					setTimeout(function() {
						$('.athome_event').css('opacity', '1');
					}, 500);
				}

				function hpAutoLogin(data) {
					//console.log("data.succYn:"+data.succYn);
					if (data.succYn == "Y") {
						$.ajax({
							type : "GET",
							url : "/ko/hpoint/simpleJoinMember",
							data : {
								"mcustNo" : data.mcustNo
							},
							success : function(data) {
								if (data.resultCode == "L") {
									$("#hcid").val(data.uid);
									$("#autologinForm").submit();
								}
							},
							error : function(e) {
							}
						});
					}
				}

				function compStringReverse(a, b) {
					if (a > b)
						return -1;
					if (b > a)
						return 1;
					return 0;
				}

				function EnterSearchHeader() {

					var searchwords = $('#gnbsearchwords').val();
					searchwords = searchwords.replace(/(^\s*)|(\s*$)/g, "");

					if (searchwords != "") {
						location.href = "/ko/hssearch?searchwords="
								+ searchwords;
					} else {
						$('#gnbsearchwords').val("");
						alert("검색어를 입력해주세요.");
					}

				}

				function language(isoCode) {
					if (location.href.indexOf("/handsome/") > -1) {

						$.ajax({
							type : "post",
							url : "/ko/logout?" + getCSRFToken(),
							error : function(request, status, error) {
								//console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
								$.ajax({
									type : "post",
									url : "/ko/_s/language" + "?" + "code="
											+ isoCode,
									dataType : "json",
									error : function(request, status, error) {
										console.log("code:" + request.status
												+ "\n" + "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(result) {
										location.href = "/ko/";
									}
								});
							},
							success : function(result) {

								$.ajax({
									type : "post",
									url : "/ko/_s/language" + "?" + "code="
											+ isoCode,
									dataType : "json",
									error : function(request, status, error) {
										console.log("code:" + request.status
												+ "\n" + "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(result) {
										location.href = "/ko/";
									}
								});
							}
						});

					} else {
						location.href = "/" + isoCode;
					}
				}

				function getCSRFToken() {
					return "CSRFToken="
							+ $("#CSRFForm [name='CSRFToken']").first().val();
				}

				function setLogout() {
					deletecookie("UID");
					deletecookie("criteoEmail");
					deletecookie("memberGb");
					location.href = "/ko/logout";
				}

				function chkFavoriteBrand() {

				}

				function brazeCustomAttribut(target) {
					if (favoriteBrands.length > 0) {
						// REMOVE 체크
						for (var i = 0; i < favoriteBrands.length; i++) {
							if (target.indexOf(favoriteBrands[i]) > -1) {
								//skip
							} else {
								appboy.getUser()
										.removeFromCustomAttributeArray(
												"likeBrand", favoriteBrands[i]);
							}
						}

						// ADD 체크
						for (var j = 0; j < target.length; j++) {
							if (favoriteBrands.indexOf(target[j]) > -1) {
								//skip
							} else {
								appboy.getUser().addToCustomAttributeArray(
										"likeBrand", target[j]);
							}
						}
					} else {
						if (target.length > 0) {
							for (var x = 0; x < target.length; x++) {
								appboy.getUser().addToCustomAttributeArray(
										"likeBrand", target[x]);
							}
						}
					}
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
							<li><span class="on"><a href="/"
									onclick="GA_Event('공통','탑_네비게이션','HOME')">HOME</a></span></li>
							
							<!-- 비로그인 상태 -->
							<c:if test="${empty sessionScope.member_id }">
								<p class="brand_menu_guide_text">
									로그인 후 아래 '브랜드' 메뉴에서 좋아하는 브랜드를 <span
										style="margin-top: -1px; display: inline-block;">♥</span>해주세요
								</p>
							</c:if>
							<!-- 비로그인 상태 -->
							<c:if test="${not empty sessionScope.member_id }">
								<p class="brand_menu_guide_text">
									아래 '브랜드' 메뉴에서 좋아하는 브랜드를 <span
										style="margin-top: -1px; display: inline-block;">♥</span>해주세요
								</p>
							</c:if>
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
							<!-- 로그인 여부에 따라 로그인/로그아웃 표시 (박주영) -->
							<c:choose>
								<c:when test="${empty sessionScope.member_id }">
									<li><a href="/login/loginform">로그인</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/login/logout">로그아웃
											[${sessionScope.member_id}님]</a></li>
								</c:otherwise>
							</c:choose>
							<li class="header_dropmemu mypage"><c:choose>
									<c:when test="${empty sessionScope.member_id }">
										<a href="/login/loginform" class="btn">마이페이지</a>
									</c:when>
									<c:otherwise>
										<a href="/mypage/mypage" class="btn">마이페이지</a>
									</c:otherwise>
								</c:choose>
								<div class="list">
									<ul>
										<li><a href="/mypage/mypage"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_주문조회')">주문조회<!-- 주문조회 --></a></li>
										<li><a href="/mypage/mypage"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_나의회원등급')">나의회원등급<!-- 온라인등급 --></a></li>
										<li><a href="/mypage/mypage"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_쿠폰조회')">쿠폰조회<!-- 쿠폰조회 --></a></li>
										<li><a href="/mypage/mypage"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_마일리지조회')">마일리지조회<!-- 포인트조회 --></a></li>
										<li><a href="/mypage/mypage"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_e-Gift Card')">e-Gift
												Card<!-- e-Gfit Card -->
										</a></li>
										<li><a href="/mypage/mypage"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_회원정보변경')">회원정보변경<!-- 회원정보변경 --></a></li>
										<li><a href="/mypage/mypage"
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
					<a href="/">thehandsome.com</a>
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
						<li><a href="/cart/cartList"
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
