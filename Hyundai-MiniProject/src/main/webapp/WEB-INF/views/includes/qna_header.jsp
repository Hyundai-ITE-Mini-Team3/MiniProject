<!-- qna 헤더 페이지 (작성자: 진영서) -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>header</title>
    <link
      rel="stylesheet"
      type="text/css"
      href="/resources/css/main.css?after"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/resources/css/swiper.css?after"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/resources/css/common.css?after"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/resources/css/layout.css?after"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/resources/css/contents.css?after"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/resources/css/popup.css?after"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/resources/css/jquery-ui.min.css?after"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="/resources/css/products.css?after"
    />
  </head>
  <body>
    <script
      type="text/javascript"
      src="/resources/js/jquery-1.11.2.min.js"
    ></script>
    <script type="text/javascript" src="/resources/js/jquery.min.js"></script>
    <script
      type="text/javascript"
      src="/resources/js/jquery-ui-1.11.2.min.js"
    ></script>

    <div id="headerWrap">
      <div class="header header_fixed header_main1903">
        <script type="text/javascript" src="/resources/js/SsoAjax.js"></script>

        <script>
          var arkQuery = $.noConflict(true);
        </script>

        <script>
          /*
           * // 챗봇 관련 스크립트
           */
          function GA_Common(action, e) {
            var eventCategory;
            var eventAction;
            var label;

            if (action == "topNav") {
              eventCategory = "공통";
              eventAction = "탑_네비게이션";
              label = escape(e.text());
            } else if (action == "news") {
              eventCategory = "공통";
              eventAction = "뉴스";
              label = escape(e.text());
            } else if (action.indexOf("commonBrand") > -1) {
              eventCategory = "공통_브랜드";
              eventAction = gaBrandType(action.split("_")[0]);
              label = e.text();
            } else if (action.indexOf("brandLike") > -1) {
              eventCategory = "공통_브랜드";
              eventAction = gaBrandType(action.split("_")[0]) + "_좋아요";
              label = e.parent().find("a").text();
            }

            GA_Event(eventCategory, eventAction, label);
          }
        </script>

        <script type="text/javascript">
          var historyDelete = "검색기록전체삭제";
          var typingWord = "검색어를 입력해주세요.";
          var gotoBrand = "브랜드바로가기";
          var noRecommendCategory = "추천 카테고리가 없습니다.";
          var noRecommendBrand = "추천 브랜드가 없습니다.";
          var noRecommendResult = "해당 단어로 시작하는 검색어가 없습니다.";
          var brandReport = "브랜드리포트";
          var graph = "그래프";
          var fold = "접기";

          var favoriteBrands = new Array();
        </script>
        <script type="text/javascript" src="/resources/js/beta.fix.js"></script>
        <script type="text/javascript" src="/resources/js/ark.js"></script>
        <script type="text/javascript" src="/resources/js/search.js"></script>
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

            $('input:checkbox[class="checkboxEvent"]').each(function () {
              if (this.checked) {
                dataValue = this.value;
                valueSplitArray = dataValue.split("#");
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
              type: "GET",
              url: "/intro/setCategoryList",
              data: {
                brandName: brandName,
                brandCode: brandCode,
                parentBrandCode: parentBrandCode,
                sortIndex: sortIndex,
              },
              success: function (data) {
                window.location.reload();
              },
              error: function (e) {
                console.log("error", e);
              },
            });
          }

          function resetCategory() {
            $('input:checkbox[class="checkboxEvent"]').each(function () {
              if (this.checked) {
                this.checked = false;
              }
            });
            applyCategory();
          }

          function ie8AlertHide() {
            setCookie("ie8AlertHideYN", "on", 365);
            $("#alertIE8").hide();
          }

          $(document).ready(function () {
            $(".gnb_nav.hscene1906 .cate_m .hscene").mouseover(function () {
              // 툴팁
              $(".gnb_nav.hscene1906 .cate_m li .delch_box").addClass("on");
            });
            $(".gnb_nav.hscene1906 .cate_m .hscene").mouseout(function () {
              $(".gnb_nav.hscene1906 .cate_m li .delch_box").removeClass("on");
            });

            var todayDate = new Date();
            var startDate = new Date("2018/05/29 00:00:01"),
              endDate = new Date("2018/06/17 23:59:59");
            if (
              todayDate.getTime() >= startDate.getTime() &&
              todayDate.getTime() <= endDate.getTime()
            ) {
              $("#athome_header_event").show();
            } else {
              $("#athome_header_org").show();
            }

            //IE8버젼 체크
            if (getCookie("ie8AlertHideYN") != "on") {
              if (
                navigator.appVersion.indexOf("MSIE 8.0") >= 0 ||
                navigator.appVersion.indexOf("Trident/4.0") >= 0
              ) {
                var html =
                  "<div style='position:relative; width: 100%; height: 30px;'><div style='position:fixed;width:100%;background:#ffffbc none repeat scroll 0% 0%; text-align: center; z-index: 999; line-height: 30px;'>";
                html +=
                  "Thehandsome.com은 인터넷 익스플로러 10 이상에 최적화되어 있습니다.";
                html +=
                  " <a href='http://windows.microsoft.com/ko-kr/windows/downloads'><strong>[브라우저 업데이트 바로가기]</strong></a>";
                html +=
                  "<a href='#' onclick='ie8AlertHide();' style='display:block;float:right;padding-right:10px'>X</a></div></div>";
                $(".loading_bar").before(
                  "<div align='center' id='alertIE8'>" + html + "</div>"
                );
              }
            }

            settingCookie = getCookie("searchSaveYN");

            if (settingCookie == "") {
              setCookie("searchSaveYN", "on", 365);
            }

            $("#gnbsearch").click(function () {
              var searchwords = $("#gnbsearchwords").val();
              searchwords = searchwords.replace(/(^\s*)|(\s*$)/g, "");

              if (searchwords != "") {
                location.href = "/ko/hssearch?searchwords=" + searchwords;
              } else {
                $("#gnbsearchwords").val("");
                alert("검색어를 입력해주세요.");
              }
            });

            $(".btn_svclose").click(function () {
              settingCookie = getCookie("searchSaveYN");
              if ($(this).children("span").text() == "끄기") {
                $(this).children("span").text("저장");
              } else {
                $(this).children("span").text("끄기");
              }
              if (settingCookie == "off") {
                $(this).children("span").attr("save", "on");
                setCookie("searchSaveYN", "on", 365);
              } else {
                $(this).children("span").attr("save", "off");
                setCookie("searchSaveYN", "off", 365);
              }
            });
            $(".favBtn").click(function () {
              words = $(this).text();
              location.href = "/ko/hssearch?searchwords=" + words;
            });
            $(".newlyBtn").click(function () {
              words = $(this).text();
              location.href = "/ko/hssearch?searchwords=" + words;
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

            var arr = [sw1, sw2, sw3, sw4, sw5];
            var arr_date = [sw1_date, sw2_date, sw3_date, sw4_date, sw5_date];

            arr_date.sort(compStringReverse);

            for (var i = 0; i < arr_date.length; i++) {
              for (var j = 0; j < arr.length; j++) {
                if (arr_date[i] != "") {
                  if (arr[j].indexOf(arr_date[i]) > 0) {
                    $("#searchWord" + (i + 1)).text(arr[j].split("_")[0]);
                    $(".searchWord" + (i + 1)).css("display", "block");

                    $("#searchWord" + (i + 1))
                      .next()
                      .attr(
                        "onclick",
                        "deletecookie('HS_Seachwords" + (j + 1) + "')"
                      );
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
              var pag = "myMainPage";

              var chkPag = [
                "svCenterMainPage",
                "noticePage",
                "manToManInquiryPage",
                "faqPage",
                "mendingPage",
                "vocProvisionPage",
                "vocInfoFormPage",
                "memberJoinGuidePage",
                "theClubInfoPage",
                "memberBenefitGuidePage",
                "pointGuidePage",
                "couponGuidePage",
                "paymentGuidePage",
                "asGuidePage",
              ];

              var vipPassCheck = "N"; // VVIP/THESTAR/STAR 등급 체크
              var timePassCheck = "N"; // 평일 0900~1800 체크

              if ("" == "VVIP" || "" == "THESTAR" || "" == "STAR") {
                vipPassCheck = "Y";
              }

              if (vipPassCheck == "N" && "PASS" == "PASS") {
                // MANIA 이하 등급, 평일 체크
                // chatbotInfo "PASS" : 등급이 VVIP/THESTAR/STAR/MANIA 이거나 평일 0900~1800
                var hour = new Date().format("HHmm");
                var weekName = new Date().format("E");
                if (
                  weekName != "일요일" &&
                  weekName != "토요일" &&
                  hour >= "0900" &&
                  hour <= "1800"
                ) {
                  $.ajax({
                    type: "POST",
                    url: "/ko/chatbot/chkholiday",
                    data: { CSRFToken: "32fb7c45-9b5c-42f3-a0cf-5925ed2feae5" },
                    async: false,
                    success: function (result) {
                      if (result == true) {
                        timePassCheck = "Y";
                      }
                    },
                    error: function (request, statuss, error) {},
                  });
                }
              }

              if (
                (vipPassCheck == "Y" || timePassCheck == "Y") &&
                "myMainPage" == "main201903Page"
              ) {
                $("#chatbotMain").show();
              } else {
                $("#chatbotMain").hide();
              }

              if (chkPag.indexOf(pag) > -1) {
                if (vipPassCheck == "Y" || timePassCheck == "Y") {
                  $("#chatbot").show();
                } else {
                  $("#chatbot").hide();
                }
              } else {
                $("#chatbot").hide();
              }
            }

            //athome
            if ("" != "") {
              // #1067 - 메인 개편

              $(".ico.athome").mouseenter(function () {
                $(".athome_info").show();
              });
              $(".athome_header").mouseleave(function () {
                $(".athome_info").hide();
              });
            }

            // ##1141 - 카테고리 개편
            outletGnbNav(); //아울렛 gnb

            // 20201214 braze 선호브랜드 추가/삭제 일괄 처리로 인한 진입시 선호브랜드 보관
            chkFavoriteBrand();
          });

          function athomeBlink() {
            $(".ico.athome").css("opacity", "0");
            setTimeout(function () {
              $(".ico.athome").css("opacity", "1");
            }, 500);
          }
          function athomeEventBlink() {
            $(".athome_event").css("opacity", "0");
            setTimeout(function () {
              $(".athome_event").css("opacity", "1");
            }, 500);
          }

          function compStringReverse(a, b) {
            if (a > b) return -1;
            if (b > a) return 1;
            return 0;
          }

          function EnterSearchHeader() {
            var searchwords = $("#gnbsearchwords").val();
            searchwords = searchwords.replace(/(^\s*)|(\s*$)/g, "");

            if (searchwords != "") {
              location.href = "/ko/hssearch?searchwords=" + searchwords;
            } else {
              $("#gnbsearchwords").val("");
              alert("검색어를 입력해주세요.");
            }
          }

          function brazeCustomAttribut(target) {
            if (favoriteBrands.length > 0) {
              // REMOVE 체크
              for (var i = 0; i < favoriteBrands.length; i++) {
                if (target.indexOf(favoriteBrands[i]) > -1) {
                  //skip
                } else {
                  appboy
                    .getUser()
                    .removeFromCustomAttributeArray(
                      "likeBrand",
                      favoriteBrands[i]
                    );
                }
              }

              // ADD 체크
              for (var j = 0; j < target.length; j++) {
                if (favoriteBrands.indexOf(target[j]) > -1) {
                  //skip
                } else {
                  appboy
                    .getUser()
                    .addToCustomAttributeArray("likeBrand", target[j]);
                }
              }
            } else {
              if (target.length > 0) {
                for (var x = 0; x < target.length; x++) {
                  appboy
                    .getUser()
                    .addToCustomAttributeArray("likeBrand", target[x]);
                }
              }
            }
          }

          //START OF 메인 검색창////////////////////////
          // #1067 - 201803 메인 개편
          $(function () {
            getNotLoginMyKeyWord($("#query").val(), 10);

            /* 
        // 내가 찾은 검색어(로그인 상태) : set, get in cookie
        getLoginMyKeyWord($("#query").val());
     */

            if (navigator.userAgent.toLowerCase().indexOf("firefox") > -1) {
              $("#searchBox").on("keypress", function (event) {
                var keyCode = event.which || event.keyCode;
              });
            }

            $("#query").click(function () {
              // 스타일 서치 아이템
              doStyleItem();
              $(".search_box_wrap").click(function () {
                if (!$(".search_box_wrap").hasClass("on")) {
                  var dataHeight = $(".data_react").height();
                  $("#transparent_mask").show();

                  GA_Event("공통", "유틸_메뉴", "검색");
                  $(".search_box_wrap").stop().animate(
                    {
                      width: "406px",
                      height: '+= dataHeight +"px"',
                      "max-height": "430px",
                      opacity: 1,
                    },
                    "fast"
                  );

                  $(".search_box_wrap").addClass("on");
                  $(".btn_search_tab").stop().show();

                  $(".data_react").stop().show();

                  $("#styleSearchSlider").hide();
                  $(".search_box .search").stop().fadeIn("fast");

                  //검색창 텝 >> style search slider
                  $(document)
                    .find("#styleSearchSlider")
                    .flexslider({
                      animation: "slide",
                      slideshow: false,
                      directionNav: true,
                      after: function (slider) {
                        $("#styleSearchSlider .slides li")
                          .not(".clone")
                          .each(function (idx) {
                            if ($(this).hasClass("flex-active-slide")) {
                              $(".ss_txt_list li a").removeClass("on");
                              $(".ss_txt_list li:eq(" + idx + ") a").addClass(
                                "on"
                              );
                            }
                          });
                      },
                    });
                  var styleTotal = $("#styleSearchSlider .slides li").size();
                  if (styleTotal <= 1) {
                    $("#styleSearchSlider .flex-direction-nav").hide();
                  }

                  //keyup 자동완성 리스트

                  //keyup 자동완성 리스트
                  $("#query").keyup(function (e) {
                    if (!$("#query").val() == "") {
                      $(".search_tab").hide();

                      $(".search_box_wrap")
                        .stop()
                        .animate({ width: "477px" }, "fast", function () {
                          $(".search_autocomplete").show();
                        });
                      $('.search_box_wrap.on .search_box input[type="search"]')
                        .stop()
                        .animate({ width: "461px" }, "fast");
                      /*  var atcRightHeight = $(".autocomplete_right").height();//자동완성리스트 높이 조절
                    var atctxtHeight = $(".autocomplete_txt").height();
                    if(atcRightHeight < atctxtHeight){
                        $(".autocomplete_right").height(atctxtHeight);
                    } */
                    } else {
                      $(".search_autocomplete").hide();
                      $(".search_tab").show();

                      $(".search_box_wrap").stop().animate({ width: "406px" });
                      $('.search_box_wrap.on .search_box input[type="search"]')
                        .stop()
                        .animate({ width: "390px" });
                    }
                    $(".autocomplete_txt li a").each(function () {
                      if (!$(this).hasClass("brand_main")) {
                        $(this).html($(this).html().replace("<strong>", ""));
                        $(this).html($(this).html().replace("</strong>", ""));

                        if (
                          $(this).html().indexOf($("#searchBox").val()) > -1
                        ) {
                          $(this).html(
                            $(this)
                              .html()
                              .replace(
                                $("#searchBox").val(),
                                "<strong>" + $("#searchBox").val() + "</strong>"
                              )
                          );
                        }
                      }
                    });
                  });

                  //검색창 click시 이미 value 값이 있을 때
                  if (!$("#query").val() == "") {
                    $(".search_box_wrap")
                      .stop()
                      .animate({ width: "477px", opacity: 1 }, "fast");
                    $('.search_box_wrap.on .search_box input[type="search"]')
                      .stop()
                      .animate({ width: "461px" }, "fast");
                  } else {
                    $('.search_box_wrap.on .search_box input[type="search"]')
                      .stop()
                      .animate({ width: "390px" }, "fast");
                  }
                }

                $("#styleSearchSlider").fadeIn();

                //close button
                $(".search_box a span.btn_close").on("click", function () {
                  $(".search_box_wrap").stop().animate({
                    width: "30px",
                    height: '-= dataHeight +"px"',
                    opacity: 0,
                  });

                  $(".data_react").stop().hide();
                  $(".btn_search_tab").stop().hide();
                  $(".search_box_wrap").removeClass("on");
                  $("#transparent_mask").hide();
                  $(".search_box .search").stop().fadeOut("fast");
                  if (!$("#query").val() == "") {
                    $("#query").val("");
                    $(".search_autocomplete").hide();
                    $(".search_tab").show();
                  }
                  return false;
                });
              });
              $("#transparent_mask").click(function () {
                if ($(".search_box_wrap").hasClass("on")) {
                  $(".search_box_wrap").stop().animate({
                    width: "30px",
                    height: '-= dataHeight +"px"',
                    opacity: 0,
                  });

                  $(".data_react").stop().hide();
                  $(".btn_search_tab").stop().hide();
                  $(".search_box_wrap").removeClass("on");
                  $("#transparent_mask").hide();
                  $(".search_box .search").stop().fadeOut("fast");
                }
              });
              //검색창 텝
              $(document).on("click", ".btn_search_tab a", function () {
                $(this).addClass("on");
                $(this).siblings().removeClass("on");
                $(".data_react .s_tab").stop().hide();
                var activeTab = $(this).attr("rel");
                $("." + activeTab)
                  .stop()
                  .show();
              });
            });
          });

          //##1141 - 카테고리 개편
          function outletGnbNav() {
            //아울렛 gnb
            $(".outlet_brand1803 .sub_menu > ul > li > ul > li > a").on(
              "mouseenter focus",
              function () {
                $(
                  ".outlet_brand1803 .sub_menu > ul > li > ul > li > a"
                ).removeClass("on");
                $(".outlet_brand1803 .sub_menu > ul > li > ul > li > div")
                  .stop()
                  .hide();
                $(this).addClass("on");
                $(this)
                  .parent("li")
                  .children("div")
                  .stop()
                  .css("display", "inline-block");
                var liWidthSumDep3 = 0;
                $(this)
                  .next("div")
                  .children("ul")
                  .children("li")
                  .each(function (idx3) {
                    var liWidth = $(this).width();
                    var liLength = $(this).length;
                    if (idx3 > 0) {
                      liWidthSumDep3 = liWidthSumDep3 + (liWidth + 25);
                    }
                    $(this).width(liWidth);
                  });
                $(this)
                  .next("div")
                  .children("ul")
                  .width(liWidthSumDep3 - 10);
              }
            );
            $(".outlet_brand1803 .sub_menu > ul > li > ul > li").on(
              "mouseleave blur",
              function () {
                $(
                  ".outlet_brand1803 .sub_menu > ul > li > ul > li > a"
                ).removeClass("on");
                $(".outlet_brand1803 .sub_menu > ul > li > ul > li > div")
                  .stop()
                  .hide();
              }
            );
          }

          function GA_search() {
            var searchForm = document.search;
            var searchwords = escape(searchForm.query.value);

            GA_Event("검색", "직접입력", searchwords);
          }

          //]]>
        </script>
        <form
          id="autologinForm"
          name="autologinForm"
          action="/ko/hp/autologin"
          method="get"
        >
          <input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com" />
        </form>
        <div class="top_nav topnav1903">
          <div class="top_nav_wrap clearfix">
            <div class="brand_menu brand_menu1903">
              <ul class="clearfix">
                <!-- 선호 브랜드 없음 -->
                <li>
                  <span class="on"
                    ><a
                      href="/"
                      onclick="GA_Event('공통','탑_네비게이션','HOME')"
                      >HOME</a
                    ></span
                  >
                </li>
                <!-- 로그인 상태 -->
                <p class="brand_menu_guide_text">
                  아래 '브랜드' 메뉴에서 좋아하는 브랜드를
                  <span style="margin-top: -1px; display: inline-block">♥</span
                  >해주세요
                </p>
                <!-- 비로그인 상태 -->
              </ul>
            </div>
            <div class="gnb_sh_wrap" style="display: none">
              <!-- search box -->
              <div class="gnb_sh_box">
                <input
                  type="text"
                  class="input"
                  id="gnbsearchwords"
                  title="검색어 입력"
                  value=""
                  onkeypress="if(event.keyCode==13) {EnterSearchHeader(); return false;}"
                />
                <a href="javascript:void(0);" id="gnbsearch">검색</a>
              </div>
              <!-- //search box -->
              <!-- search result -->
              <div class="gnb_sh_result">
                <div class="tab">
                  <a href="javascript:void(0);" class="menu on">최근검색어</a>
                  <div class="result_list on">
                    <div class="searchWord1" style="display: none">
                      <a
                        href="javascript:void(0);"
                        class="ml newlyBtn"
                        id="searchWord1"
                      ></a
                      ><a
                        href="javascript:void(0);"
                        class="close"
                        onclick="deletecookie('HS_Seachwords1')"
                        >닫기</a
                      >
                    </div>
                    <div class="searchWord2" style="display: none">
                      <a
                        href="javascript:void(0);"
                        class="ml newlyBtn"
                        id="searchWord2"
                      ></a
                      ><a
                        href="javascript:void(0);"
                        class="close"
                        onclick="deletecookie('HS_Seachwords2')"
                        >닫기</a
                      >
                    </div>
                    <div class="searchWord3" style="display: none">
                      <a
                        href="javascript:void(0);"
                        class="ml newlyBtn"
                        id="searchWord3"
                      ></a
                      ><a
                        href="javascript:void(0);"
                        class="close"
                        onclick="deletecookie('HS_Seachwords3')"
                        >닫기</a
                      >
                    </div>
                    <div class="searchWord4" style="display: none">
                      <a
                        href="javascript:void(0);"
                        class="ml newlyBtn"
                        id="searchWord4"
                      ></a
                      ><a
                        href="javascript:void(0);"
                        class="close"
                        onclick="deletecookie('HS_Seachwords4')"
                        >닫기</a
                      >
                    </div>
                    <div class="searchWord5" style="display: none">
                      <a
                        href="javascript:void(0);"
                        class="ml newlyBtn"
                        id="searchWord5"
                      ></a
                      ><a
                        href="javascript:void(0);"
                        class="close"
                        onclick="deletecookie('HS_Seachwords5')"
                        >닫기</a
                      >
                    </div>
                    <a href="javascript:void(0);" class="btn_svclose"
                      >검색어 <span id="searchSaveYN" save="on">끄기</span></a
                    >
                    <a
                      href="javascript:void(0);"
                      class="btn_allclose on"
                      onclick="searchOff()"
                      >닫기</a
                    >
                  </div>
                  <a href="javascript:void(0);" class="menu">인기검색어</a>
                  <div class="result_list">
                    <div>
                      <a href="javascript:void(0);" class="ml favBtn">jacket</a
                      ><!-- <a href="javascript:void(0);" class="close">닫기</a> -->
                    </div>
                    <div>
                      <a href="javascript:void(0);" class="ml favBtn">blouse</a
                      ><!-- <a href="javascript:void(0);" class="close">닫기</a> -->
                    </div>
                    <div>
                      <a href="javascript:void(0);" class="ml favBtn">stripe</a
                      ><!-- <a href="javascript:void(0);" class="close">닫기</a> -->
                    </div>
                    <div>
                      <a href="javascript:void(0);" class="ml favBtn">ribbon</a
                      ><!-- <a href="javascript:void(0);" class="close">닫기</a> -->
                    </div>
                    <div>
                      <a href="javascript:void(0);" class="ml favBtn">blouson</a
                      ><!-- <a href="javascript:void(0);" class="close">닫기</a> -->
                    </div>
                    <a href="javascript:void(0);" class="btn_svclose"
                      >검색어
                      <span id="searchSaveYNfame" save="on">끄기</span></a
                    >
                    <a
                      href="javascript:void(0);"
                      class="btn_allclose"
                      onclick="searchOff()"
                      >닫기</a
                    >
                  </div>
                </div>
              </div>
              <!-- //search result -->
            </div>
            <!-- 201705 search_box_wrap -->
            <div class="search_box_wrap sbw1803" id="searchBox">
              <form
                name="search"
                id="search"
                action="/ko/hssearch/searchCount"
                method="post"
                onsubmit="return false;"
              >
                <input
                  type="hidden"
                  name="CSRFToken"
                  value="32fb7c45-9b5c-42f3-a0cf-5925ed2feae5"
                />
                <input type="hidden" name="searchwords" value="" />
                <input type="hidden" name="startCount" value="" />
                <input type="hidden" name="mode" value="" />
                <input type="hidden" name="sort" value="" />
                <input type="hidden" name="collection" value="" />
                <input type="hidden" name="range" value="" />
                <input type="hidden" name="startDate" value="" />
                <input type="hidden" name="endDate" value="" />
                <input type="hidden" name="searchField" value="" />
                <input type="hidden" name="reQuery" />
                <input type="hidden" id="prefixQuery" value="" />
                <input type="hidden" id="identity" name="identity" value="" />
                <input type="hidden" id="realQuery" name="realQuery" value="" />
                <input type="hidden" id="loginState" value="loginOn" />
                <input type="hidden" id="athomeInfo" value="" />
                <input
                  type="hidden"
                  id="selectedLang"
                  name="selectedLang"
                  value="product_ko"
                />
                <input type="hidden" id="lang" name="lang" value="ko" />
                <input
                  type="hidden"
                  id="brandPageGubun"
                  name="brandPageGubun"
                  value="off"
                /><!-- 브랜드 페이지 여부 -->
                <input type="hidden" id="brand_img" name="brand_img" value="" />
                <input type="hidden" id="brand_url" name="brand_url" value="" />
                <div class="search_box">
                  <label for="query" class="hidden">search</label>
                  <input
                    type="search"
                    id="query"
                    name="query"
                    value=""
                    onkeypress="javascript:pressCheck((event),this);"
                    style="margin-top: 0.2px"
                    autocomplete="off"
                  />
                  <span class="placeholder"></span>
                  <a href="javascript:void(0);"
                    ><span class="btn_close">닫기</span></a
                  >
                  <a href="javascript:GA_search();doSearch();" class="search"
                    ><span class="ico">검색</span></a
                  >
                </div>
              </form>
              <!--검색박스 활성화 data_react -->
              <div class="data_react">
                <!-- tab 검색어 입력 전 -->
                <div class="search_tab">
                  <div class="btn_search_tab" style="display: none">
                    <a
                      href="javascript:void(0);"
                      rel="recent_search"
                      class="btn_recent_search on"
                      onclick="GA_Event('검색','최근 검색어','클릭')"
                      >최근 검색어</a
                    >
                    <a
                      href="javascript:void(0);"
                      rel="style_search"
                      class="btn_style_search"
                      id="btn_style_search"
                      >Style Search</a
                    >
                    <a
                      href="javascript:void(0);"
                      rel="popular_search"
                      class="btn_style_search"
                      id="btn_top_search"
                      style="display: none"
                      onclick="GA_Event('검색','인기검색어','클릭')"
                      >인기검색어</a
                    >
                  </div>
                  <!-- 최근 검색어 -->
                  <div class="recent_search s_tab">
                    <ul id="mykeyword">
                      <div class="clear_search_hs">
                        <a href="javascript:removeAllMyKeyword()"
                          >검색기록전체삭제</a
                        >
                      </div>
                    </ul>
                  </div>
                  <!-- style search -->
                  <form
                    id="searchStyle"
                    name="searchStyle"
                    action="/ko/hssearch/searchCount"
                    method="post"
                    onsubmit="return false;"
                  >
                    <input type="hidden" name="query" value="" />
                    <input type="hidden" name="collection" value="" />
                    <input
                      type="hidden"
                      id="CSRFToken"
                      name="CSRFToken"
                      value="32fb7c45-9b5c-42f3-a0cf-5925ed2feae5"
                    />
                    <input
                      type="hidden"
                      id="searchStyleYn"
                      name="searchStyleYn"
                      value="searchStyle"
                    />
                  </form>

                  <div class="style_search s_tab" id="stylesearch_area">
                    <p class="style_search_tlt">Style Search 2018</p>
                    <div class="ss_txt_list">
                      <ul class="style_search_arr" id="style_search_arr"></ul>
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
                  <div
                    class="popular_search s_tab"
                    id="topsearch_area"
                    style="display: none"
                  >
                    <ol class="ol_popular1" id="topsearchLeft"></ol>
                    <!-- 				                <ol class="ol_popular2" id="topsearchRight"> -->
                    <!-- 	                            </ol> -->
                  </div>
                </div>
                <!--// tab 검색어 입력 전 -->
                <!-- 검색어 입력 후 (검색어 자동완성) -->
                <div class="search_autocomplete">
                  <div class="autocomplete_txt">
                    <div id="brandView">
                      <ul></ul>
                    </div>
                    <div id="ark" style="height: 170px">
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
                        <span>"<span id="autocomplete_query">{0}</span>"</span
                        >에 대한 주요 검색 결과
                      </p>
                      <!--                                     <p><span>"<span id="autocomplete_query"></span>&#32;"</span>에 대한 주요 검색 결과</p> -->
                      <ul id="auto2"></ul>
                    </div>
                  </div>
                </div>
                <!--// 검색어 입력 후 (검색어 자동완성) -->
              </div>
              <!--//검색박스 활성화 data_react -->
            </div>
            <!--// 201705 search_box_wrap -->
            <div class="util_menu" style="display: block">
              <ul class="clearfix">
                <li>
                  <a href="/login/logout"
                    >로그아웃 [${sessionScope.member_id}님]</a
                  >
                </li>
                <li class="header_dropmemu mypage">
                  <a
                    href="/mypage/mypage"
                    class="btn"
                    onclick="GA_Event('공통','헤더_메뉴','마이페이지')"
                    >마이페이지</a
                  >
                  <div
                    class="list"
                    style="
                      display: none;
                      height: 101px;
                      padding-top: 0px;
                      margin-top: 0px;
                      padding-bottom: 0px;
                      margin-bottom: 0px;
                    "
                  >
                    <ul>
                      <li>
                        <a
                          href="/ko/mypage/order/myorders"
                          onclick="GA_Event('공통','헤더_메뉴','마이페이지_주문조회')"
                          >주문조회<!-- 주문조회 --></a
                        >
                      </li>
                      <li>
                        <a
                          href="/ko/mypage/voucher"
                          onclick="GA_Event('공통','헤더_메뉴','마이페이지_쿠폰조회')"
                          >쿠폰조회<!-- 쿠폰조회 --></a
                        >
                      </li>
                      <li>
                        <a
                          href="/ko/mypage/personInfomationChangePWCheck"
                          onclick="GA_Event('공통','헤더_메뉴','마이페이지_회원정보변경')"
                          >회원정보변경<!-- 회원정보변경 --></a
                        >
                      </li>
                      <li>
                        <a
                          href="/ko/svcenter/mantomaninquiry"
                          onclick="GA_Event('공통','헤더_메뉴','마이페이지_온라인상담')"
                          >온라인상담<!-- 온라인 상담 --></a
                        >
                      </li>
                    </ul>
                  </div>
                </li>

                <li>
                  <div class="header_dropmemu lang_switch lang_1911">
                    <a
                      href="javascript:void(0);"
                      class="btn"
                      onclick="GA_Event('공통','헤더_메뉴','LANGUAGE')"
                      >LANGUAGE</a
                    >
                    <div
                      class="list"
                      style="
                        display: none;
                        height: 87px;
                        padding-top: 0px;
                        margin-top: 0px;
                        padding-bottom: 0px;
                        margin-bottom: 0px;
                      "
                    >
                      <ul>
                        <li>
                          <a
                            href="javascript:language('ko')"
                            onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_한국어')"
                            >한국어</a
                          >
                        </li>
                        <li>
                          <a
                            href="javascript:language('en')"
                            onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_ENGLISH')"
                            >ENGLISH</a
                          >
                        </li>
                        <li>
                          <a
                            href="javascript:language('zh')"
                            onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_中文')"
                            >中文</a
                          >
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <div class="honey_talk_service1905 remove1907">
              <!-- 추가 190702 -->
              <!-- vip 채팅 서비스 -->
              <div id="chatbotMain" style="display: none">
                <!-- <div class="vip_chat_img">
	                        <span>VIP 채팅 서비스</span>
	                    </div> -->
                <!-- 200921 챗봇 이미지 변경 -->
                <a
                  href="#none"
                  class="btn_viptalk_v2 v3"
                  onclick="callChatbot();GA_Event('공통','유틸_메뉴','하니톡');"
                >
                  <img
                    src="http://cdn.thehandsome.com/_ui/desktop/common/images/main/talk-talk-chat-icon.png"
                  />
                </a>
              </div>
              <!-- //vip 채팅 서비스 -->
            </div>
          </div>
        </div>

        <!-- validation check message global -->
        <input
          type="hidden"
          id="validationCheckPwd"
          value="비밀번호를 재입력 하셔야 합니다."
        />
        <input
          type="hidden"
          id="validationCheck"
          value="필수데이터가 입력되지 않았습니다."
        />
        <input
          type="hidden"
          id="validationCheckMsg"
          value="다음 사항을 확인해 주세요."
        />
        <input
          type="hidden"
          id="validationCheckMsg1"
          value="필수데이터가 입력되지 않았습니다."
        />
        <input
          type="hidden"
          id="validationCheckMsg2"
          value="동일문자를 3번 이상 사용할 수 없습니다."
        />
        <input
          type="hidden"
          id="validationCheckMsg3"
          value="연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다."
        />
        <input
          type="hidden"
          id="validationCheckMsg4"
          value="Caps Lock 이 켜져 있습니다."
        />
        <input
          type="hidden"
          id="validationCheckMsg5"
          value="이메일 아이디의 중복 확인이 필요합니다."
        />
        <input
          type="hidden"
          id="validationCheckMsg6"
          value="이메일의 중복확인이 필요합니다."
        />
        <input type="hidden" id="deliveryOkMsg" value="확인" />
        <input type="hidden" id="deliveryCancelMsg" value="취소" />

        <form
          id="chatbotForm"
          action="https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp"
          method="post"
          target="chatwindow"
        >
          <input type="hidden" name="token" id="chatbot_token" />
          <input type="hidden" name="talkId" id="chatbot_talkId" />
          <div>
            <input
              type="hidden"
              name="CSRFToken"
              value="32fb7c45-9b5c-42f3-a0cf-5925ed2feae5"
            />
          </div>
        </form>
        <!-- //headerWrap -->
        <div class="gnbwarp new201608 clearfix">
          <h1 class="logo logo1903">
            <a href="/" onclick="GA_Event('공통', '로고', '상단');"
              >thehandsome.com</a
            >
          </h1>
          <!-- 첫번째 c:if -->

          <div id="transparent_mask"></div>
          <!-- 201803 util menu -->
          <div class="util_menu util_menu1803">
            <ul class="clearfix">
              <li>
                <a href="javascript:void(0);"
                  ><span class="ico_sh">search</span></a
                >
              </li>
              <li>
                <a
                  href="/ko/mypage/myWish"
                  onclick="GA_Event('공통','유틸_메뉴','위시리스트');"
                  ><span class="ico wishlist">wish list</span>
                  <span class="count"
                    >(<span id="wishlistCount">0</span>)</span
                  ></a
                >
              </li>
              <li>
                <a
                  href="/ko/shoppingbag"
                  onclick="GA_Event('공통','유틸_메뉴','쇼핑백');"
                  ><span class="ico cart">장바구니</span>
                  <span class="count">(<span id="cartCount">0</span>)</span></a
                >
              </li>
            </ul>
          </div>
        </div>
        <!-- //201803 util menu -->
      </div>
    </div>
  </body>

  <script
    type="text/javascript"
    src="/resources/js/html5shiv-printshiv.js"
  ></script>
  <script type="text/javascript" src="/resources/js/ui.js"></script>
  <script
    type="text/javascript"
    src="/resources/js/videojs-ie8.min.js"
  ></script>

  <script
    type="text/javascript"
    src="/resources/js/netfunnel.js"
    charset="UTF-8"
  ></script>
  <script
    type="text/javascript"
    src="/resources/js/netfunnel_skin.js"
    charset="UTF-8"
  ></script>
  <script type="text/javascript" src="/resources/js/unorm.js"></script>
  <script type="text/javascript" src="/resources/js/appboy.min.js"></script>
  <script type="text/javascript" src="/resources/js/kp.js"></script>
  <script type="text/javascript" src="/resources/js/SsoAjax.js"></script>
  <script type="text/javascript" src="/resources/js/beta.fix.js"></script>
  <script type="text/javascript" src="/resources/js/ark.js"></script>
  <script type="text/javascript" src="/resources/js/search.js"></script>
  <script type="text/javascript" src="/resources/js/fbevents.js"></script>
  <script type="text/javascript" src="/resources/js/analytics.js"></script>
  <script type="text/javascript" src="/resources/js/gtm.js"></script>
  <script type="text/javascript" src="/resources/js/conversion.js"></script>
  <script type="text/javascript" src="/resources/js/wcslog.js"></script>
  <script
    type="text/javascript"
    src="/resources/js/enp_tracker_self_hosted.min.js"
  ></script>
  <script type="text/javascript" src="/resources/js/AceCounter_CW.js"></script>
  <script type="text/javascript" src="/resources/js/trs_esc.js"></script>
  <script
    type="text/javascript"
    src="/resources/js/enp_uni_id_adver.js"
  ></script>
  <script
    type="text/javascript"
    src="/resources/js/social_sns_config_min.js"
  ></script>
</html>
