<!-- 장바구니 페이지 (작성자: 박주영) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- header_ver2 include -->
<jsp:include page="../includes/header_ver2.jsp">
    <jsp:param name="title" value="쇼핑백"/>
</jsp:include>
<script>
	// jQuery 충돌 방지
	var arkQuery = $.noConflict(true);
</script>

<script type="text/javascript">
//<![CDATA[

$(document).ready(function(){

	// 수량 증가 눌렀을 때
    $(document).on("click", '.right', function(){
        var qty = $(this).parents('.qty_sel').find('.mr0');
        
        qty.val(Number(qty.val()) + 1);
        
        
    });
	// 수량 감소 눌렀을 때
	$(document).on("click", '.left', function(){
        var qty = $(this).parents('.qty_sel').find('.mr0');
        
        // 최소수량은 1개ㄴ
        if (qty.val() == 1) {
            return ;
        }
        qty.val(Number(qty.val()) - 1);
    });
	
	// 버튼 눌렸을 때 실행되는 함수
    $(document).on("click", '.btn', function(){
        var prodid = $(this).prop('id').split("_");
        
        // 변경 적용 버튼 눌렀을 때
        if(prodid[0] == 'QuantityProduct'){
            var form = $('#updateCartForm' + prodid[1]);
            var productCode = form.find('input[name=pid]').val(); 
            var initialCartQuantity = form.find('input[name=oldpamount]').val();
            var newCartQuantity = form.find('input[name=pamount]').val();
            var price = form.find('input[name=pprice]').val();
            
            // 변경이 있을 경우 update
            if(initialCartQuantity != newCartQuantity)
            {
                form.submit();
            }
        }
        
        // 삭제 버튼 눌렀을 때
        if(prodid[0] == 'RemoveProduct'){
            var form = $('#deleteCartForm' + prodid[1]);
            form.submit();
        }
    });
   
    // 총 합계 계산
    function calcPrice() {
    	var total = 0;
    	// 선택된 상품들의 가격만 더해서 총 합 계산
        $("input[name=cartlist]").each(function() {
        	if ( $(this).prop("checked") ) {
        		var form = $('#updateCartForm' + $(this).val());
                var price = form.find('input[name=pprice]').val();
        		total += Number(price);	
        	}
        });
        $("#cartDataSubtotal").text("₩"+total.toLocaleString());
		$("#cartDataTotalPrice").text("₩"+total.toLocaleString());
    }
    
    
	// 전체 선택시
	$(document).on("click", "#entryCheckAll" ,function() {
		var eachName = $(this).val();
		eachName = "input[name="+eachName+"]";
		
		var checkProp = $(this).prop("checked");
		$(eachName).each(function(){
			if($(this).prop("disabled") == false) {
				$(this).prop("checked", checkProp);
			}
		});
		
		// 총 합 계산
		calcPrice();
	});
	
	// 개별 선택시
	$(document).on("click", "input[name='cartlist']" ,function() {
	    var obj = this;
	    var isCartListCheckPrice = true;
		if($("input:checkbox[name='cartlist']:checked").length > 0){
			$("[class^=shopping_cart_tab]").find("[name=cartDivision]").each(function(){
			    if($(this).attr("data-division") == "store"){
			        if($(this).hasClass("active")){
			        	("input:checkbox[name='cartlist']").prop("disabled", false);
			        }
			    }
			});
		}else{
		    if($("#ordersheetCartDivision").val() != ""){
		        $("input:checkbox[name='cartlist']").prop("disabled", false);
		    }
		}
		
		// 총 합 계산
		calcPrice();
		
	});	
	
	var cartDivisionActiveYn = false;
	$("a[name='cartDivision']").each(function() {
		if($(this).data('division') == ""){
			$(this).prop("class", "active");
			cartDivisionActiveYn = true;
		} else {
			$(this).prop("class", "");
		}
	});
	
	if(!cartDivisionActiveYn) {
		if($("a[name='cartDivision']").length > 0) {
			$("a[name='cartDivision']").eq(0).prop("class", "active");
		}
	}
});




//주문하기 버튼 눌렀을 때
function checkoutPage() {	
 	var form_contents ='';
	var orderNumber = 0;
	
 	// 체크된 상품을 orderForm에 input hidden 태그로 정보 추가
	$("input:checkbox[name='cartlist']:checked").each(function(){
		
		var form = $('#updateCartForm' + $(this).val());
		var pid = form.find('input[name=pid]').val(); 
        var pamount = form.find('input[name=oldpamount]').val();
        
		orderNumber = $(this).val();
					
		var pid_input = "<input name='pid" + orderNumber + "' type='hidden' value='" + pid + "'>";
		form_contents += pid_input;
		var pcolor_input = "<input name='ccolorcode" + orderNumber + "' type='hidden' value=' '>";
		form_contents += pcolor_input;
		var psize_input = "<input name='ssize" + orderNumber + "' type='hidden' value='FR'>";
		form_contents += psize_input;
		var pamount_input = "<input name='oamount" + orderNumber + "' type='hidden' value='" + pamount + "'>";
		form_contents += pamount_input;
		
		
	});
 	// 총 개수 추가로 전달
	var pid_count = "<input name='pcount' type='hidden' value='" + orderNumber + "'>";
	form_contents += pid_count;
	
	// 선택된 상품이 없을 경우
	if(orderNumber == 0) {
		layerAlert("주문하실 상품을 선택해주세요.");
		return false;
	}
	
	var lc = new layerConfirm("주문하시겠습니까?", "YES", "NO");
    lc.confirmAction = function(){
    	// html에 추가
    	$(".orderForm").html(form_contents);
    	$(".orderForm").submit();
    };
	
}

//]]>
</script>

<!-- bodyWrap -->
<div id="bodyWrap">
	<!--title-->
	<h3 class="cnts_title cnts_tlt1807">
		<span>쇼핑백</span>
	</h3>
	<!--//title-->

	<span id="shoppingbagCartView">
	<!--sub_container-->
		<div class="sub_container ">
			<!--order wrap-->
			<div class="shopping_cart_tab1807 tab_a">
				<!-- 장바구니개편 -->
				<ul class="tab3">
					<li><a href="#;" name="cartDivision" data-division=""
						onclick="GA_Event('쇼핑백', '탭', '택배');" class="active"><span
							class="delt_ico"></span>택배 </a></li>
					<li><a href="#;" name="cartDivision" data-division="store"
						onclick="GA_Event('쇼핑백', '탭', '매장수령');" class=""><span
							class="spt_ico"></span>매장수령 </a></li>
					<li><a href="#;" name="cartDivision" data-division="quick"
						onclick="GA_Event('쇼핑백', '탭', '퀵배송                                           ');"
						class=""><span class="quk_ico"></span>퀵배송 </a></li>
				</ul>
				<!-- //장바구니개편 -->
			</div>

			<div class="orderwrap1807">
				<div class="tbl_info_wrap">
					<p class="cart_top_text"></p>

					<div class="fourpm_pd_ck">
						<div class="input_wrap"></div>
					</div>
				</div>
				<!--shoppingback table-->
				<div class="tblwrap">
					<table class="tbl_ltype">
						<caption>쇼핑백</caption>
						<colgroup>
							<col style="width: 10px;">
							<col>
							<col style="width: 120px">
							<col style="width: 105px">
							<col style="width: 140px">
							<col style="width: 110px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">
									<!-- 2019.11.07 쇼핑백 진입 시 선택 상품 없도록 수정 --> <input
									type="checkbox" id="entryCheckAll" value="cartlist">
								</th>
								<th scope="col">상품정보</th>
								<th scope="col">수량</th>
								<th scope="col">판매가</th>
								<th scope="col">적립율</th>
								<th scope="col">선택</th>
							</tr>
						</thead>
						<!-- 장바구니 상품 유무에 따라 다르게 출력 (박주영) -->
						<!-- 장바구니에 없을 경우 -->
						<c:if test="${empty cartList}">
							<tbody>
								<tr>
									<td colspan="6" class="no_data frt">쇼핑백에 담긴 상품이 없습니다.</td>
								</tr>
							</tbody>
						</c:if>

						<!-- 장바구니에 있을 경우 -->
						<c:if test="${not empty cartList }">
							<tbody>
								<c:forEach var="cart" items="${cartList}" varStatus="cartS">
									<tr name="entryProductInfo">
										<td class="frt">
											<input type="checkbox" name="cartlist" value="${cartS.count}">
										</td>
										<td class="pt_list_wrap">
											<!-- pt_list_all -->
											<div class="pt_list_all">
												<a href="/product/${cart.pid}">
													<img src="/resources/img/product/${cart.csmall}/${cart.pid}.jpg">
												</a>
												<div class="tlt_wrap">
													<a href="/product/${cart.pid}" class="basket_tlt">
														<span class="tlt">${cart.bname}</span>
														<span class="sb_tlt"> ${cart.pname}</span>
													</a>

													<p class="color_op">
														size : ${cart.psize}
													</p>

													<div class="option_wrap">
														<a href="#none" class="btn_option">옵션변경</a>
													</div>
												</div>
											</div> <!-- //pt_list_all-->
										</td>
										<td class="al_middle">
											<!-- 상품 정보 업데이트 form (박주영) -->
											<form id="updateCartForm${cartS.count}" action="/cart/update" method="post">
												<input type="hidden" name="pid" value="${cart.pid}">
												<input type="hidden" name="oldpamount" value="${cart.pamount}">
												<input type="hidden" name="psize" value="${cart.psize}">
												<input type="hidden" name="pprice" value="${cart.pprice * cart.pamount}">
												<!-- qty_sel -->
												<span class="qty_sel num">
													<a href="#none" class="left">이전 버튼</a>
													<input id="quantity${cartS.count}" name="pamount" type="text" class="mr0" value="${cart.pamount}">
													<a href="#none" class="right">다음버튼</a>
												</span>
												<!-- //qty_sel -->
												<!-- 수량 변경 버튼 -->
												<a href="#none" id="QuantityProduct_${cartS.count}"
													class="btn wt_ss qty_w mr0">변경</a>
											</form>
										</td>
										<td class="al_middle">
											<!-- Price -->
											<div class="price_wrap">
												<span>₩ <fmt:formatNumber value="${cart.pprice * cart.pamount}" pattern="#,###" />
												</span>
											</div> <!-- //Price -->
										</td>
										<td class="al_middle"><span class="earn">5%
												(한섬마일리지)</span> <br> <span class="earn">0.1% (H.Point)</span></td>
										<td class="al_middle">
											<form id="deleteCartForm${cartS.count}" action="/cart/delete" method="post">
												<input type="hidden" name="pid" value="${cart.pid}">
												<div class="btn_wrap">
													<a href="#none" class="btn wt_ss">위시리스트</a>
													<!-- 삭제 버튼 -->
													<a href="#none" id="RemoveProduct_${cartS.count}" class="btn wt_ss">삭제</a>
												</div>
											</form>
										</td>
									</tr>

								</c:forEach>
							</tbody>
						</c:if>
					</table>
				</div>
				<!--// shoppingback table-->
				<!--Total wrap-->
				<div class="total_wrap">
					<!-- total -->
					<div class="total_price_wrap">
						<dl>
							<dt>상품 합계</dt>
							<dd>
								<span id="cartDataSubtotal">₩0</span>
							</dd>
							<dt class="delch_wrap">
								<p class="tlt_ship">배송비</p>
							</dt>
							<dd>
								<span id="cartDataDeliveryCost">₩0</span>
							</dd>
						</dl>
						<dl class="total ">
							<dt>합계</dt>
							<dd>
								<span id="cartDataTotalPrice">₩0</span>
							</dd>
						</dl>
					</div>
					<div class="total_count1807">
						<p>
							총 <span id="selectProductCount">${cartList.size()}</span>개 상품
						</p>
					</div>
					<!-- //total -->
				</div>
				<!--//Total wrap-->
				<!--button wrap-->
				<div class="btnwrap order" id="checkout_btn_wrap">
					<!-- 주문하기 버튼 -->
					<a href="#;" onclick="checkoutPage();">
						<input value="선택상품 주문하기" class="btn gray mr0" type="button">
					</a>
				</div>
				<!--//button wrap-->
				
				<!-- 주문 form(동적으로 input태그 추가) -->
				<form action="/order/order" method="post" class="orderForm">
				
				</form>
				
				<!-- 프로모션 -->
				<div class="promotion_wrap mt60" id="freeGiftPromotion">
					<dl class="promotion_list"
						style="border-top: 1px solid #ebebeb; padding: 60px 20px 18px 20px">
						<dt class="promotion_tit">PROMOTION 혜택</dt>
						<dd class="promotion_con1">
							<strong>혜택 1 / 구매하신 고객님께 사은품을 드립니다. </strong>
							<ul class="bul_sty01_li promotion_img">
								<li class="img"><img
									src="/resources/img/cart/cart_promotion1.jpg"></li>
								<li>사은품 : 마인뷰티_캔버스립파우치</li>
								<li>기간 내 마인 립제품 (MN2C5HCO002W) 구매 고객에게 캔버스 립 파우치를 1개를 드립니다.
									<br> 사은품은 주문하신 배송지로 상품과 함께 발송됩니다.<br>기간 : 5월 3일~
									5월31일 (소진 시 종료), 반품 시 사은품 동봉 필수<br>사은품은 주문 당 1 개 제공
								</li>
							</ul>
						</dd>
						<dd class="promotion_con2">
							<strong>혜택 2 / 구매하신 고객님께 사은품을 드립니다. </strong>
							<ul class="bul_sty01_li promotion_img">
								<li class="img"><img
									src="/resources/img/cart/cart_promotion2.jpg"></li>
								<li>사은품 : 마인 뷰티_블리스터</li>
								<li>마인 비건 뷰티 아이템 첫 런칭 기념, 기간 내 마인 정상 구매 고객에게 뷰티 체험 가능한
									"블리스터"를 드립니다. (쿠션 21호 와 레브르 듀 마뜨 4컬러)<br> 블리스터 내 QR을 스캔하면
									배우 박규영과 함께한 마인 뷰티 화보를 볼 수 있습니다. <br> 기간 :05/03~ 05/31 (소진
									시 종료)<br> 블리스터는 주문 1 건 당 1 개 증정, 반품 시 사은품 동봉 필수
								</li>
							</ul>
						</dd>
						<dd class="promotion_con1">
							<strong>혜택 3 / 구매하신 고객님께 사은품을 드립니다. </strong>
							<ul class="bul_sty01_li promotion_img">
								<li class="img"><img
									src="/resources/img/cart/cart_promotion3.jpg"></li>
								<li>사은품 : 오에라_쇼핑백, 감사카드</li>
								<li>가정의 달을 맞아 기간 내 오에라 [5월 스페셜세트] 구매 고객님께 "오에라 쇼핑백 &amp;
									감사카드"를 드립니다.<br>사은품은 주문하신 배송지로 상품과 함께 발송됩니다. <br>기간 :
									5월 1일 ~ 5월 31일까지 (선착순 증정)
								</li>
							</ul>
						</dd>
						<dd class="promotion_con2">
							<strong>혜택 4 / 구매하신 고객님께 사은품을 드립니다. </strong>
							<ul class="bul_sty01_li promotion_img">
								<li class="img"><img
									src="/resources/img/cart/cart_promotion4.jpg"></li>
								<li>사은품 : Liquides 시그니처 기프트 박스</li>
								<li>기간 내 리퀴드 퍼퓸바 향수 구매 고객님께 시그니처 기프트 박스를 사은품으로 드립니다.<br>주문
									1건당 박스는 1개 제공되며, 사이즈는 구매하신 향수 갯수에 따라 제공됩니다. (S/M/L 선택 불가) 사은품은
									주문하신 배송지로 상품과 함께 발송됩니다. <br>- 기간 : 5월 2일 ~ 5월 20일까지 (선착순
									증정)
								</li>
							</ul>
						</dd>
						<dd class="promotion_con1">
							<strong>혜택 5 / 400,000원 이상 구매하신 고객님께 사은품을 드립니다. </strong>
							<ul class="bul_sty01_li promotion_img">
								<li class="img"><img
									src="/resources/img/cart/cart_promotion5.jpg"></li>
								<li>사은품 : 더한섬닷컴 GIFT_켈리박 3단 우산</li>
								<li>기간 내 정상 40만원 이상 구매 고객님께 구매 사은품으로 더한섬닷컴 X<br>켈리박
									작가와 함께한 3단 우산을 드립니다.<br>추가로 해당 기간 내 선착순 1명에게는 직접 드로잉 한 양산,
									구매금액 BEST 고객 1명에게는 레더백이 함께 발송될 예정입니다. (실 결제금액 기준, 아울렛 상품 구매 금액
									제외)<br> - 기간 : 5월 2일 ~ 소진시 까지 (선착순 증정)<br>사은품은 이벤트 종료
									후, 취소 및 반품을 고려하여 5월 31일 이후 일괄 발송 예정입니다. (1~3일 지연 가능)
								</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
			<!--//order wrap-->
		</div> <!--//sub_container-->
	</span>
	<!-- // 장바구니개편 -->

	<!--추천상품 리스트 -->
	<div class="rmd_pb_list_wrap">
		<div class="rmd_pb_list">
			<h4>고객님을 위한 추천상품</h4>
			<!-- 고객님을 위한 추천상품 -->
			<img
				src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/ico_quest.png"
				alt="추천상품이란?" class="tlt" onmouseover="onMouseOverRecommend();"
				onmouseout="onMouseOutRecommend();">
			<div class="rmd_pb_popup" style="display: none;">
				<p>이 상품을 구매한 고객들이 함께 구매한 상품입니다.</p>
				<!-- 이 상품을 구매한 고객들이 함께 구매한 상품입니다. -->
				<span class="box_arr"></span>
			</div>

			<div class="hidden_wrap">
				<ul class="clearfix productSlide" style="width: 1000%;">
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2B1HKF002LOC', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2B1HKF002LOC&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[THE ORGANIC COMPANY] 키친 앤 워시 클로스');javascript:setEcommerceData('0', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2B/SS/FL2B1HKF002LOC_LG_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[THE
								ORGANIC COMPANY] 키친 앤 워시 클로스</span> <span class="price"> ₩15,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2B1HBA010LSW', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2B1HBA010LSW&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[SASAWASHI] 샤워 타올');javascript:setEcommerceData('1', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2B/SS/FL2B1HBA010LSW_NL_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[SASAWASHI]
								샤워 타올</span> <span class="price"> ₩18,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2A7HTW010LKO', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2A7HTW010LKO&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[KONTEX] 워시 클로스');javascript:setEcommerceData('2', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2A/FW/FL2A7HTW010LKO_IV_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[KONTEX]
								워시 클로스</span> <span class="price"> ₩15,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2C1HTW007LMD', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2C1HTW007LMD&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[METTE DITMER] 부두아 타월 2세트');javascript:setEcommerceData('3', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2C/SS/FL2C1HTW007LMD_LG_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[METTE
								DITMER] 부두아 타월 2세트</span> <span class="price"> ₩45,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('CM2C1WSC352WM1', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=CM2C1WSC352WM1&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','봉제 라인 플리츠 스커트');javascript:setEcommerceData('4', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/CM/2C/SS/CM2C1WSC352WM1_CO_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">봉제
								라인 플리츠 스커트</span> <span class="price"> ₩395,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('TM2C4KTOS63W', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=TM2C4KTOS63W&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','슬리브리스 니트 탑');javascript:setEcommerceData('5', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/TM/2C/SS/TM2C4KTOS63W_BK_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR01">TIME</span> <span class="title">슬리브리스
								니트 탑</span> <span class="price"> ₩345,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('TG2B3HCA002LLY', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=TG2B3HCA002LLY&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[LYDIA] 조이 센티드 캔들');javascript:setEcommerceData('6', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/TG/2B/SS/TG2B3HCA002LLY_IV_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR15">TOM GREYHOUND</span> <span class="title">[LYDIA]
								조이 센티드 캔들</span> <span class="price"> ₩38,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2B7HBA012LHE', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2B7HBA012LHE&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[HYDREA LONDON] 컴비네이션 마사지 브러쉬');javascript:setEcommerceData('7', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2B/FW/FL2B7HBA012LHE_NL_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[HYDREA
								LONDON] 컴비네이션 마사지 브러쉬</span> <span class="price"> ₩23,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('YN2C3TDR454N', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=YN2C3TDR454N&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[palette] 슬릿 헴 하프 슬리브 드레스');javascript:setEcommerceData('8', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/YN/2C/SS/YN2C3TDR454N_BK_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR35">FOURM THE STORE</span> <span
								class="title">[palette] 슬릿 헴 하프 슬리브 드레스</span> <span
								class="price"> ₩138,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('CM2C5AJW955NS', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=CM2C5AJW955NS&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[GUANABANA] 글리터링 팔찌');javascript:setEcommerceData('9', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/CM/2C/SS/CM2C5AJW955NS_CH_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[GUANABANA]
								글리터링 팔찌</span> <span class="price"> ₩39,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('TG2C3TTS002W73', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=TG2C3TTS002W73&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[TSPTR] 프린팅 후드 티셔츠');javascript:setEcommerceData('10', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/TG/2C/SS/TG2C3TTS002W73_NY_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR15">TOM GREYHOUND</span> <span class="title">[TSPTR]
								프린팅 후드 티셔츠</span> <span class="price"> ₩265,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('MN2C5HCO002W', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=MN2C5HCO002W&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[BEAUTY] 레브르 듀 마뜨_나뛰렐 로즈');javascript:setEcommerceData('11', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/MN/2C/SS/MN2C5HCO002W_LL_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR02">MINE</span> <span class="title">[BEAUTY]
								레브르 듀 마뜨_나뛰렐 로즈</span> <span class="price"> ₩32,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2B7HKF004LHH', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2B7HKF004LHH&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[HARMONY TEXTILE] 플레이스 매트');javascript:setEcommerceData('12', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2B/FW/FL2B7HKF004LHH_BZ_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[HARMONY
								TEXTILE] 플레이스 매트</span> <span class="price"> ₩15,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('CM2C5ASZ825CS', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=CM2C5ASZ825CS&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[MEDUSE] 위빙 샌들');javascript:setEcommerceData('13', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/CM/2C/SS/CM2C5ASZ825CS_BR_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[MEDUSE]
								위빙 샌들</span> <span class="price"> ₩35,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('LP2C1102004QOB', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=LP2C1102004QOB&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[OBVIOUS] 로즈 오드퍼퓸 100ml');javascript:setEcommerceData('14', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/LP/2C/SS/LP2C1102004QOB_XX_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR62">Liquides Perfume Bar</span> <span
								class="title">[OBVIOUS] 로즈 오드퍼퓸 100ml</span> <span class="price">
								₩179,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2A7HKF001LOC', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2A7HKF001LOC&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[THE ORGANIC COMPANY] 냅킨 세트');javascript:setEcommerceData('15', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2A/FW/FL2A7HKF001LOC_ML_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[THE
								ORGANIC COMPANY] 냅킨 세트</span> <span class="price"> ₩39,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2C1HTW004LMD', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2C1HTW004LMD&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[METTE DITMER] 부두아 워시 클로스');javascript:setEcommerceData('16', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2C/SS/FL2C1HTW004LMD_WT_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[METTE
								DITMER] 부두아 워시 클로스</span> <span class="price"> ₩12,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('OB2C4WOP527W', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=OB2C4WOP527W&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[YACHTIE] 엠보 크링클 드레스 &amp; 플리츠 점퍼');javascript:setEcommerceData('17', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/OB/2C/SS/OB2C4WOP527W_KE_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR43">OBZEE</span> <span class="title">[YACHTIE]
								엠보 크링클 드레스 &amp; 플리츠 점퍼</span> <span class="price"> ₩945,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('YS2B7HBM004WCS', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=YS2B7HBM004WCS&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[COOL SMILE CLUB] 스마일 체크 쿠션 커버');javascript:setEcommerceData('18', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/YS/2B/FW/YS2B7HBM004WCS_BL_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR35">FOURM THE STORE</span> <span
								class="title">[COOL SMILE CLUB] 스마일 체크 쿠션 커버</span> <span
								class="price"> ₩38,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('TG2C3TTS001W73', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=TG2C3TTS001W73&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[TSPTR] 프린팅 후드 집업 점퍼');javascript:setEcommerceData('19', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/TG/2C/SS/TG2C3TTS001W73_GY_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR15">TOM GREYHOUND</span> <span class="title">[TSPTR]
								프린팅 후드 집업 점퍼</span> <span class="price"> ₩285,000</span>
						</div></li>
					<li style="padding: 0px; width: 201px; margin-right: 0px;"><a
						href="javascript:goDetailPage('FL2C3HBA005LHE', 'https://lc.recopick.com/1/banner/1919/pick?uid=72898407.1644420232656&amp;source=&amp;pick=FL2C3HBA005LHE&amp;method=25&amp;channel=cart&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22FL2B1HKF002LOC%22%2C%22FL2B1HBA010LSW%22%2C%22FL2A7HTW010LKO%22%2C%22FL2C1HTW007LMD%22%2C%22CM2C1WSC352WM1%22%2C%22TM2C4KTOS63W%22%2C%22TG2B3HCA002LLY%22%2C%22FL2B7HBA012LHE%22%2C%22YN2C3TDR454N%22%2C%22CM2C5AJW955NS%22%2C%22TG2C3TTS002W73%22%2C%22MN2C5HCO002W%22%2C%22FL2B7HKF004LHH%22%2C%22CM2C5ASZ825CS%22%2C%22LP2C1102004QOB%22%2C%22FL2A7HKF001LOC%22%2C%22FL2C1HTW004LMD%22%2C%22OB2C4WOP527W%22%2C%22YS2B7HBM004WCS%22%2C%22TG2C3TTS001W73%22%2C%22FL2C3HBA005LHE%22%2C%22FL2C1HBU016LGG%22%2C%22TM2C4KOP363W%22%2C%22FL2B7HCY005LMM%22%2C%22TG2C7ANC017WM5%22%2C%22FL1J7HSY017LTK%22%2C%22FL2B1HVS012LHO%22%2C%22OB2C4NJC623W%22%2C%22TG2B7HBF004LHC%22%2C%22CS2C3ABG018WCT%22%5D&amp;tag=D');"
						onclick="GA_Event('쇼핑백','고객님을위한추천상품','[HYDREA LONDON] 풋 파일');javascript:setEcommerceData('20', 'Click RECOMMEND');">
							<img
							src="http://newmedia.thehandsome.com/FL/2C/SS/FL2C3HBA005LHE_NL_S01.jpg"
							alt="추천상품" class="respon_image"
							onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img2.jpg'"
							style="width: 96%; padding: 0px 2%;">
					</a>
						<div>
							<span class="brand BR08">the CASHMERE</span> <span class="title">[HYDREA
								LONDON] 풋 파일</span> <span class="price"> ₩35,000</span>
						</div></li>
				</ul>
			</div>
		</div>
	</div>
	<!--//추천상품 리스트 -->

	<!--Guide table-->
	<div class="gd_wrap mt60">
		<dl class="shoppingbag_list">
			<dt>쇼핑백 이용안내</dt>
			<dd class="shoppingbag_list_text">
				<ul class="bul_sty01_li">
					<li id="infoAddN1">4PM 상품은 오후 4시 이전에 주문 하셔야 다음날 배송이 가능하며 재고가
						소진될 경우 일반택배로 주문하실 수 있습니다.</li>
					<li id="infoAddN2">3만원 구매 시 무료 배송됩니다. 3만원 미만 구매 시 배송비 2,500원이
						추가되며, 도서산간 지역으로 배송을 원하실 경우<br>배송비가 추가될 수 있습니다.
					</li>
					<li>쇼핑백에 담긴 상품은 30일 동안 보관됩니다. 30일이 지난 상품 자동 삭제됩니다.<br>더
						오래 보관하고 싶은 상품은 위시리스트에 담아주세요.
					</li>
					<li>쇼핑백에 최대 50개까지 상품 보관이 가능하며, 실제 구매 시에는 가격이나 혜택이 변동될 수 있습니다.</li>

					<li>쇼핑백에 담은 상품이 판매종료가 되었을 경우 자동 삭제 됩니다.</li>
					<li>쿠폰은 배송&amp;결제정보 화면에서 입력 할 수 있습니다.</li>
					<li>상품별 지급율에 따라 한섬마일리지 및 H.POINT가 적립됩니다. 배송완료 10일 이후 적립되며 실
						결제금액기준입니다.</li>
					<li>해외 배송을 원할 경우 더한섬닷컴의 영문 혹은 중문 서비스를 이용해 주시기 바랍니다.</li>
					<li></li>
				</ul>
			</dd>
		</dl>
		<dl class="gd_list">
			<dt>카드행사 혜택</dt>
			<dd>
				<ul class="gd_btn1807">
					<li><a href="#;" rel="benefit_wrap1807">
							<p>무이자 할부</p> <span>자세히 보기 &gt;</span>
					</a></li>
					<li style="display: none;"><a href="#;"
						rel="benefit2_wrap1807">
							<p>청구할인</p> <span>자세히 보기 &gt;</span>
					</a></li>
					<li style="display: none;"><a href="#;"
						rel="benefit3_wrap1807">
							<p>즉시할인</p> <span>자세히 보기 &gt;</span>
					</a></li>
				</ul>
			</dd>
		</dl>
	</div>
	<!--//Guide table-->

</div>

<!-- footer.jsp include -->
<%@include file="../includes/footer.jsp"%>

</body>
</html>