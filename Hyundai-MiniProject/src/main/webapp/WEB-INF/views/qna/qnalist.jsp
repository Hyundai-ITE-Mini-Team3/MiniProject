<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<link rel="stylesheet" type="text/css"
	href="/resources/css/main.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/swiper.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/common.css?after">
<link rel="stylesheet" type="text/css"
	href="/resources/css/layout.css?after">
	<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css?after">
</head>
<%@include file="../../views/includes/qna_header.jsp"%>

<div id="bodyWrap">
	<h3 class="cnts_title">
		<span id="menuTitle">1:1 문의</span>
	</h3>
	<div class="sub_container">
		<!-- lnb -->
		<div class="lnb_wrap">
			<h4><a href="/ko/mypage">마이페이지<!-- 마이페이지 --></a></h4>
			<div class="lnb">
						<dl>
							<dt>주문조회</dt>
							<dd><a href="/ko/mypage/order/myorders" onclick="GA_Event('마이페이지','LNB','주문/배송/반품/취소');">주문/배송/반품/취소</a></dd>
							</dl>
						<dl>
							<dt>혜택관리</dt>
							<dd><a href="/ko/mypage/voucher" onclick="GA_Event('마이페이지','LNB','나의 쿠폰');">나의 쿠폰<!-- 쿠폰함 --></a></dd>
							</dl>
						<dl>
							<dt>나의 상품관리</dt>
							<dd><a href="/ko/mypage/myWish" onclick="GA_Event('마이페이지','LNB','위시리스트');">위시리스트<!-- 위시리스트 --></a></dd>
							<dd><a href="/ko/mypage/rsalarm" onclick="GA_Event('마이페이지','LNB','재입고 알림');">재입고 알림<!-- 재입고알림 --></a></dd>
							</dl>
						<dl>
							<dt>나의 정보관리</dt>
							<dd><a href="/ko/mypage/personInfomationChangePWCheck" onclick="GA_Event('마이페이지','LNB','개인정보 변경/탈퇴');">개인정보 변경/탈퇴</a></dd>
							<dd><a href="/ko/mypage/shoppingAddressPWCheck" onclick="GA_Event('마이페이지','LNB','배송지 관리');">배송지 관리</a></dd>
							<dd><a href="/ko/mypage/oneClick" onclick="GA_Event('마이페이지','LNB','원클릭 결제 관리');">원클릭 결제 관리</a></dd>
							</dl>
						<dl>
							<dt>나의 활동관리</dt>
							<!-- <dd><a href="#">회원등급</a></dd> -->
							<dd><a href="/ko/mypage/myreview" onclick="GA_Event('마이페이지','LNB','내 상품평');">내 상품평</a></dd>
							<dd><a href="/ko/mypage/myqna" onclick="GA_Event('마이페이지','LNB','상품 Q&amp;A');">상품 Q&amp;A</a></dd>
							<dd><a href="/ko/mypage/mymantomaninquiry" onclick="GA_Event('마이페이지','LNB','1:1 문의');">1:1 문의</a></dd>
							<!-- <dd><a href="#">이벤트 참여현황</a></dd> -->
						</dl>
						</div>
					<!-- ph_guide -->
					<div class="ph_guide">
						<p class="tlt">고객센터 운영 안내</p>
						<p class="phone">1800-5700<span style="color:#c69c6d;" class="txt">(유료)</span></p>
						<p class="txt">평일(월~금)<br>am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span></p>
						<a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com</a>
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
<script type="text/javascript">

$(document).ready(function(){
    $("#menuTitle").text("1:1 문의");
	   $( "#sterm, #eterm" ).datepicker({
			showOn:"button",
			dateFormat: "yy-mm-dd"
		});

		$('button.ui-datepicker-trigger').addClass('ico_cld');

		$('#setDateBtn1').click(function(){
			var today = new Date();
			var endDate = today.format("yyyy-MM-dd");	
			$('#eterm').val(endDate);
			var startDate = today;
			startDate.setDate(today.getDate()-7);
			startDate = startDate.format("yyyy-MM-dd");
			$('#sterm').val(startDate);
			
		});
		$('#setDateBtn1').click();

		$('#setDateBtn2').click(function(){
			var today = new Date();
			var endDate = today.format("yyyy-MM-dd");
			$('#eterm').val(endDate);
			var startDate = today;
			startDate.setMonth(today.getMonth()-1);
			startDate = startDate.format("yyyy-MM-dd");
			$('#sterm').val(startDate);
			
		});

		$('#setDateBtn3').click(function(){
			var today = new Date();
			var endDate = today.format("yyyy-MM-dd");
			$('#eterm').val(endDate);
			var startDate = today;
			startDate.setMonth(today.getMonth()-3);
			startDate = startDate.format("yyyy-MM-dd");
			$('#sterm').val(startDate);
			
		});


	 var mymantomaninquirylist = new BoardListController('mantomaninquiryListForm', '#listBody', '.paging', 10, 'searchBtn');
	 mymantomaninquirylist.setRowHtml = function(results){
	    
	 	var rows = "";
	 	var currentPage = 0;  
	 	var numberOfPages = 0; 
	 	var pageSize = 0;  
	 	var totalNumberOfResults = 0; 
	 	var pageNum = 0; 
	    var num = 0;
	    var totNum=0;
 	 	
	    currentPage=mymantomaninquirylist.PARAMS.jsonObjectData.pagination.currentPage; 
	 	numberOfPages=mymantomaninquirylist.PARAMS.jsonObjectData.pagination.numberOfPages; 
	 	pageSize=mymantomaninquirylist.PARAMS.jsonObjectData.pagination.pageSize; 
	 	totalNumberOfResults=mymantomaninquirylist.PARAMS.jsonObjectData.pagination.totalNumberOfResults; 
	 	
	 	if(results.length < 1) {
	 	  // totalNumberOfResults--;
           //totNum = (totalNumberOfResults - (currentPage * pageSize )) + 1 ; 
           var listTag = "";  
           listTag += "<tr>";
           listTag +=     "<td colspan='4' class='no_data'>";
           listTag +=     '등록된 게시글이 없습니다.';
           listTag +=     "</td>";
           listTag += "</tr>";
           rows +=listTag;
	 	} else {
	 	   $.each(results, function(){
	 	       var processStatus = this.processStatus;
	 	       if(processStatus=="신청완료"){processStatus = "접수완료";}
	            totalNumberOfResults--;
	            totNum = (totalNumberOfResults - (currentPage * pageSize )) + 1 ; 
	            //console.log("this.pk", this);
	            var listTag = "";
	            if(this.manToManProductInfo != null && this.manToManProductInfo != '') {
	                var cdList = this.productCdList;
                    listTag +=    '<tr class="al_middle" id="clickme'+totNum+'" cdList="'+this.manToManProductInfo+'" pk="'+this.pkInquiry+'" onClick="show1('+totNum+',this)">';
                }else{
		            listTag +=    "<tr class=\"al_middle\" id=\"clickme"+ totNum +  "\" onClick=\"show1("+totNum +")\">";  
                }
	            listTag +=      "<td class=\"frt\">" + this.creationTime + "</td>"; 
	            listTag +=      "<td>"+ this.largeClassificationCode + "</td>";
	            var subject1 = this.subject.replace(/&amp;/g,'&');
	            listTag +=      "<td class=\"al_left\"><a href=\"javascript:void(0);\">" + subject1 + "</a></td>";
	            listTag +=      "<td>[" + processStatus + "]</td>"; 
	            listTag +=    "</tr>";
	            listTag +=    "<tr class=\"info3\" style=\"display:none\" id=\"hideme"+ totNum +  "\">";
	            listTag +=    "Q&A";
	            listTag +=    "<td class=\"qna_wrap\"  colspan=\"4\">";
	            listTag +=    "<div class=\"qna_box ch\">";
	            
	            if (this.attachingImageName == null || this.attachingImage == null) {
                    listTag +=    '<p></p>';
                } else {
                    var imgUrl = this.attachingImageUrl;
                    listTag +=    "<div class=\"qna_thing rev\">";
                    listTag +=    "    <ul>";
                    listTag +=    "        <li>";
                    listTag +=    "            <img src=\""+ this.attachingImage +"\">";
                    listTag +=    "        </li>";
                    listTag +=    "    </ul>";
                    listTag +=    "</div>";
                } 
	            
	            listTag +=    "<div class=\"qt\">"; 
	            listTag +=    "<span class=\"ico\">quest</span>"; 
	            listTag +=    "<div class=\"txt\">"; 
	            if (this.contents == null || this.contents == "") {
	                listTag +=    "<p></p>"; 
	            } else {
	                var contents =  this.contents;
	                var contents1 = contents.replace(/&amp;/g,'&');
	                contents1 = contents1.replace(/&lt;/g,'&lt');
	                contents1 = contents1.replace(/&gt;/g,'&gt');
	                //XSS필터로 인한 특수문자 치환
	                contents1 = contents1.replace(/&#40;/gim,'(');
	                contents1 = contents1.replace(/&#41;/gim,')');
	                contents1 = contents1.replace(/&#39;/gim,'\'');
	                contents1 = contents1.replace(/<script>/gim,'');
	                contents1 = contents1.replace(/<\/script>/gim,'');
	                listTag +=    "<p style=\"word-wrap:break-word\">" + contents1 + "</p>"; 
	            }
	            
	            listTag +=    "</div>"; 
	            listTag +=    "</div>"; 
	            listTag +=    "<div class=\"an\">"; 
	            listTag +=    "<span class=\"ico\">answer</span>"; 
	            listTag +=    "<div class=\"txt\">"; 
	            
	            // 답변 등록 전 수정/삭제 허용
	            if (this.replyContent == null || this.replyContent == "") {
	                listTag += "<div class=\"btnwrap mt40\" style=\"text-align:right\">";
	                listTag += "    <a href=\"javascript:fn_manToManInquiryEdit('E','"+ this.pkInquiry +"');\" id=\"qnaWriteSend\">수정</a> ";
	                listTag += "    <a href=\"javascript:fn_manToManInquiryEdit('D','"+ this.pkInquiry +"');\" id=\"qnaCancle\">삭제</a>";                
	                listTag += "</div>";
	            } else {
	                var replyContext =  this.replyContent;
	                var replyContext1 = replyContext.replace(/&lt;/g,'<').replace(/&gt;/g,'>').replace(/&amp;/g,'&');
	                //XSS필터로 인한 특수문자 치환
	                replyContext1 = replyContext1.replace(/&#40;/gim,'(');
	                replyContext1 = replyContext1.replace(/&#41;/gim,')');
	                replyContext1 = replyContext1.replace(/&#39;/gim,'\'');
	                replyContext1 = replyContext1.replace(/<script>/gim,'');
	                replyContext1 = replyContext1.replace(/<\/script>/gim,'');
	                listTag +=    "<p style=\" word-wrap: break-word\">" +  replyContext1 + "<br/></p>";   
	            }  
	            if (this.replyDate == null || this.replyDate == "") {
	                listTag +=    "<p class=\"date\"></p>";  
	            } else {
	                listTag +=    "<p class=\"date\">답변일 : " + this.replyDate + "</p>";  
	            }  
	            listTag +=    "</div>"; 
	            listTag +=    "</div>"; 
	            listTag +=    "</div>"; 
	            listTag +=    "</td>"; 
	            listTag +=    "</tr>"; 
	            
	            rows +=listTag;
	        });
	 	}
	 	
	 	return rows;
	 };
	 mymantomaninquirylist.doWork();

/* 	 $("#subject").focus();  */
/* 	 $("#sterm").val('');
	 $("#eterm").val(''); */
   });
	
	// 수정/삭제하기
	function fn_manToManInquiryEdit(act, pkInquiry)
	{
		//로그인이 되어 있는지 확인한다.
		
		// 수정하기
		if (act === "E") {
			var lc = new layerConfirm("해당 글을 수정하시겠습니까?", "확인", "취소");
			lc.confirmAction = function() {
				$("#pkInquiry").val(pkInquiry);
				$("#mantomaninquiryForm").submit();
			};
		// 삭제하기
		} else if (act === "D") {
			var lc = new layerConfirm("해당 글을 삭제하시겠습니까?", "확인", "취소");
			lc.confirmAction = function() {
				$.ajax({
					url: '/ko/mypage/manTomanInquiryDelete?pkInquiry='+pkInquiry,
					type: "GET",
					success: function(data){
						location.href = "/ko/mypage/mymantomaninquiry";
					},
					error: function(xhr, Status, error) {
						var la = new layerAlert(error);
						la.confirmAction = function(){
							return;
						};
					}
				});
			};
		}
	}

    /*    $('#subject').keypress(function(event){
     var keycode = (event.keyCode ? event.keyCode : event.which);
     if(keycode == '13'){
     $("#mantomaninquiryListForm").attr("action", "/ko/mypage/mymantomaninquiry");
     $("#mantomaninquiryListForm").submit(); 
     }
     event.stopPropagation();
     }); */
    $(document).keypress(function(event)
    {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            $("#mantomaninquiryListForm").attr("action", "/ko/mypage/mymantomaninquiry");
            $("#mantomaninquiryListForm").submit();
        }
        event.stopPropagation();
    });

    /* 	function show1(id){
     $('#hideme' + id).toggle();
     return false;   
     }  */
    function show1(id,target)
    {
        $('#listBody').each(function()
        {
            $('#listBody').find(".info3").not('#hideme' + id).css("display", "none");
        });
        var $this = $(target);
        var pk = $this.attr("pk");
        if($this.next().find(".prod_list").length > 0 ||  typeof($this.attr("cdList")) == 'undefined'  || pk == "") {
            $('#hideme' + id).slideToggle();
            return;
        } else {
            $.ajax({
                url: '/ko/mypage/mymantomaninquiryProductList.ajax?productListString='+pk,
                type: "GET",
                success: function(data){
                      if (data != null  && data.length > 0) {
                       var prdList = "";
                       prdList +=    "<div class=\"qna_thing prod_list\">";
                       prdList +=    "    <ul>";
                       for(var i=0; i<data.length; i++) {
                           prdList +=    "        <li>";
                           for(j in data[i].productImages) {
                               if(data[i].productImages[j].imageDivisionCode.code == "S01") {
                                   prdList += '<img src="'+data[i].productImages[j].image.url+'" alt="'+data[i].productImages[j].image.altText+'">';
                               }
                           }
                           prdList +=    "            <p>";
                           prdList +=    "                <span>"+data[i].brandName+"</span><br>"+data[i].name+"";
                           prdList +=    "            </p>";
                           prdList +=    "        </li>";
                       }
                       prdList +=    "    </ul>";
                       prdList +=    "</div>";
                   }
                   
                   $this.next().find(".prod_list").remove();
                   $this.next().find(".qt").before(prdList);
                },
                error: function(xhr, Status, error) {
//                     var la = new layerAlert(error);
//                        la.confirmAction = function(){
//                            return;
//                        };
                }
           });
            $('#hideme' + id).slideToggle();
        }
        
       

        return;
    }
    function close1(id)
    {
        $('#hideme' + id).hide();
        return false;
    }
    function close2(id)
    {
        $('#hidemeTop' + id).hide();
        return false;
    }
    function openImgWindows(imgUrl)
    {
        window.open(imgUrl, '첨부파일', 'width=557, height=500');
    }
    function replaceAll(str, target, replacement)
    {
        return str.split(target).join(replacement);
    };
    function convert(str)
    {
        str = str.replace(/&amp/g, "&");
        str = str.replace(/&quot/g, "\"");
        str = str.replace(/&gt/g, ">");
        str = str.replace(/&lt/g, "<");
        return str;
    }
</script>

<!-- //lnbWrap -->

	<form id="mantomaninquiryForm" action="/ko/svcenter/mantomaninquiry">
		<input type="hidden" name="pkInquiry" id="pkInquiry">
		</form>
    <form id="mantomaninquiryListForm" action="/ko/mypage/mymantomaninquirylist">
    	
	    <!-- search1 -->
	    <div class="search_wrap">
		<!-- cnd -->
			<ul>
				<li>
					<p class="bul_sty01"><label for="term">조회기간</label></p>
					<div class="calendar_wrap mr5"> <!-- readonly -->
						<input type="text" class="input_date hasDatepicker" title="기간 입력" id="sterm" name="sterm" value="" readonly=""><button type="button" class="ui-datepicker-trigger ico_cld">...</button>
						<div class="form_hyphen pl5">-</div>
						<input type="text" class="input_date hasDatepicker" title="기간 입력" id="eterm" name="eterm" value="" readonly=""><button type="button" class="ui-datepicker-trigger ico_cld">...</button>
					</div>
					<div class="tab_c">
						<ul class="clearfix">
							<li><a href="javascript:void(0);" id="setDateBtn1" class="on">
							1주일</a>
							</li>
							<li><a href="javascript:void(0);" id="setDateBtn2">
							1개월</a>
							</li>
							<li><a href="javascript:void(0);" id="setDateBtn3">
							3개월</a>
							</li>
						</ul>
					</div>
				</li>
		        </ul>
			<!-- //cnd -->
			<input type="button" class="btn_search none" id="searchBtn" value="조회하기">
		</div>
	</form>
	<!-- //search1 -->
	<div class="title_wrap mt50">
		<h4 class="float_left">나의 1:1 문의</h4>
		<p class="txt_line">고객님의 문의를 등록하시면 빠른 시일 내 답변 드리겠습니다.</p>
		<div class="btn_wrap">
			<a href="/ko/svcenter/mantomaninquiry?refererUrl=" class="btn add_ss mr0">문의하기</a>
		</div>
	</div>
	<!-- Table -->
	<div class="tblwrap">
		<table class="tbl_ltype">
		<caption>&gt;나의 1:1 문의 목록</caption>
		<colgroup>
			<col style="width:100px">
			<col style="width:140px">
			<col>
			<col style="width:100px">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">등록일</th>
				<th scope="col">상담유형</th>
				<th scope="col">내용</th>
				<th scope="col">처리상태</th>
			</tr>
		</thead>
		<tbody id="listBody"><tr><td colspan="4" class="no_data">등록된 게시글이 없습니다.</td></tr></tbody>
		</table>
	</div>
		<!-- //Table -->
		<!--paging-->
		<div class="paging"></div>
	    <!--//paging-->


</div>
		<!-- //cnts -->
	</div>
</div>
<body>














</body>
</html>