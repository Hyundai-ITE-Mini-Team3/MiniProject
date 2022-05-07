<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- header_ver2 include -->
<jsp:include page="../includes/header_ver2.jsp">
    <jsp:param name="title" value="마이페이지"/>
</jsp:include>

<script>
	// jQuery 충돌 방지
	var arkQuery = $.noConflict(true);
</script>
<div id="bodyWrap">
	<h3 class="cnts_title">
		<span id="menuTitle">마이페이지</span>
	</h3>
	<div class="" style="position:relative;width:834px;height:0;display:block;left:50%;margin-left:-338px;">
		<div class="delch_box tooltip1907" id="store_delbox" style="display: none;">
			<span class="arr">위치아이콘</span>
			작성 가능한 상품평 확인하시고,<br>
			상품평 작성해서 추가 마일리지 적립하세요.
		</div>
	</div>
	<div class="sub_container">
		<!-- lnb -->
		<div class="lnb_wrap">
			<h4><a href="/mypage/mypage">마이페이지<!-- 마이페이지 --></a></h4>
			<div class="lnb">
						<dl>
							<dt>주문조회</dt>
							<dd><a href="/mypage/mypage" onclick="GA_Event('마이페이지','LNB','주문/배송/반품/취소');">주문/배송/반품/취소</a></dd>
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
							<dd><a href="/qna/list" onclick="GA_Event('마이페이지','LNB','상품 Q&amp;A');">상품 Q&amp;A</a></dd>
							<dd><a href="" onclick="GA_Event('마이페이지','LNB','1:1 문의');">1:1 문의</a></dd>
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
			

    <!-- 회원정보 -->
    <div class="profile_info1 clearfix review_betterment1905">
            <div class="name type2">
                    <span class="ico_grade">${user.mname }&nbsp;<span>님</span></span>
                    <span class="grade_txt"></span>
                </div>              
                <div class="point" style="border:0; padding-left:0; width:95px">
                    <p class="title">COUPON</p>
                    <a class="count" href="/ko/mypage/voucher" onclick="GA_Event('마이페이지','회원정보','COUPON');">0&nbsp;<span>장</span></a>
                </div>
                <div class="point review">
                    <p class="title">상품평</p>
                    <a href="/mypage/myreview" class="count" onclick="GA_Event('마이페이지','회원정보','상품평');">0&nbsp;<span>개</span></a>
                </div>
                <div class="point type2">
                   <p class="title2">간편회원은 H.Point / 한섬마일리지 적립과 사용이 불가합니다. <br>혜택을 받으시려면, H.Point 통합회원으로 가입해주세요.</p>
                   <a href="javascript:void(0);" id="hpoinJoin" class="btn" onclick="GA_Event('마이페이지','회원정보','H.POINT 회원가입');">H.Point 회원가입</a>
               </div>
            </div>
    <!-- 회원정보 -->
    <!-- 최근주문 -->
    <div class="title_wrap">
        <h4 class="float_left">최근주문<!-- 최근주문 --></h4>
        <p class="txt_line">최근 주문하신 내역입니다.<!-- 최근 주문하신 내역 입니다. --></p>
        <div class="btn_wrap">
            <a href="/" class="btn add_ss">전체보기<!-- 전체보기 --></a>
        </div>
    </div>
    <!-- table -->
    <div class="tblwrap lncl1812"><!-- 클래스추가 181204 -->
        <table class="tbl_ltype review_betterment1905">
            <caption>상품평 리스트</caption>
            <colgroup class="interval1812"><!-- 수정 181204 -->
                <col style="width:80px">
                <col>
                <col style="width:60px">
                <col style="width:107px">
                <col style="width:108px">
                <col>
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">번호<!-- 주문번호 --></th>
                    <th scope="col">상품정보<!-- 상품정보 --></th>
                    <th scope="col" style="padding:15px 0">수량<!-- 수량 --></th><!-- 스타일추가 181204 -->
                    <th scope="col">결제금액<!-- 결제금액 --></th>
                    <th scope="col">주문상태<!-- 주문상태 --></th>
                    <th scope="col">주문일자<!-- 주문일자 --></th>
                </tr>
            </thead>
            <!-- 주문내역 조회 (박주영) -->
            <tbody id="listBody">
            	<c:if test="${empty orders}">
                <tr>
                    <td colspan="6" class="no_data">최근 주문내역이 없습니다.<!-- 최근 한 달간 주문내역이 없습니다. --></td>
                </tr>
                </c:if>
                <c:if test="${not empty orders}">
                	<c:forEach var="order" items="${orders}" varStatus="orderS">
                		<tr>
                			<td>${order.oid}</td>
                			<td>${order.pname}</td>
                			<td>${order.oamount}</td>
                			<td>₩<fmt:formatNumber value="${order.pprice}" pattern="#,###" /></td>
                			<td>주문완료</td>
                			<td><fmt:formatDate value="${order.odate}" pattern="yyyy-MM-dd kk:mm:ss"/></td>
                		</tr>
                	</c:forEach>
                </c:if>
            </tbody>
        </table>
    </div>
    <!-- table -->
    <!-- 위시리스트 -->
    <div class="title_wrap line mt50">
        <h4>위시리스트<!-- 위시리스트 --></h4>
        <div class="btn_wrap">
            <a href="/ko/mypage/myWish" class="btn add_ss" onclick="GA_Event('마이페이지','위시리스트','전체보기');">전체보기<!-- 전체보기 --></a>
        </div>
    </div>
    <ul class="wish_wrap">
        <li class="no_data">
                위시리스트에 저장된 상품이 없습니다.<!-- 위시리스트에 저장된 상품이 없습니다. -->
            </li>
        </ul>

</div>
		<!-- //cnts -->
	</div>
</div>
<!-- footer.jsp include -->
<%@include file="../../views/includes/qna_footer.jsp"%>
</body>
</html>