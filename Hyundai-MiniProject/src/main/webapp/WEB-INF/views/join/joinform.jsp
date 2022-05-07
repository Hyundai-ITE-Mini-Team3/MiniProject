<!-- 회원가입 정보 입력폼 페이지 (작성자: 박주영) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header_ver2 include -->
<jsp:include page="../includes/header_ver2.jsp">
    <jsp:param name="title" value="회원가입 -회원정보입력"/>
</jsp:include>
<!-- 주소 API include -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
var arkQuery = $.noConflict(true);
</script>


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

    $("#mpassword").keypress(function(event){

        if(capsLock(event)){
            $("#pwcapsLockMsg").text("<Caps Lock>이 켜져 있습니다.");
        } else {
            $("#pwcapsLockMsg").text("");
        }
        
     });
     
     
     $("#mpassword").blur(function(){
    	 $("#pwTypeChk").val("Y");   
         $("#pwMsg").text("");
         $("#pwcMsg").text("");
         $("#pwConfirmChk").val("");
     });
     
     $("#pwc").keypress(function(event){
         
        if(capsLock(event)){
            $("#pwcCapsLockMsg").text("<Caps Lock>이 켜져 있습니다.");
        } else {
            $("#pwcCapsLockMsg").text("");
        }
        
         
     });
          
     $("#pwc").blur(function(){
        if($("#mpassword").val()!=$("#pwc").val()){
            $("#pwcMsg").text("비밀번호가 일치하지 않습니다");
            $("#pwConfirmChk").val("");
            //$("#pwc").val("");
            return true;
        }
        if($("#mpassword").val()!= ""){
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

});

// 아이디 중복 체크 (박주영)
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
            success:function(data){
                if(data == "true"){
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

// 회원가입 버튼 누를시 호출, 정보 확인 후 submit (박주영)
function join() {
	var mid = $("#mid").val();
    var mpw = $("#mpassword").val();
	var mpwc = $("#pwc").val();
	var mname = $("#mname").val();
	var memail = $("#memail").val()+"@"+$("#memailDomain").val();
	var idDuplChk = $("#idDuplChk").val();
	 
	// 필수 값 모두 입력됐는지 확인
	if(mid == "" || mpw == "" || mpwc == "" || mname == "" || memail == "") {
		layerAlert("필수값들을 입력해주세요.");
		return;
	}
	 
	// 아이디 중복체크 됐는지 확인
	if(idDuplChk != "Y") {
		layerAlert("아이디 중복확인이 되지 않았습니다.");
		return;
	}
	 
	// 비밀번호 확인
	if($("#pwConfirmChk").val() != "Y") {
		layerAlert("비밀번호가 일치하지 않습니다.");
		return;
	}
	 
	$("#cancleBtn").attr("disabled", true);
	$("#joinBtn").attr("disabled", true);
	  
	// 폼 submit
	$("#memberJoinForm").attr("action", "/join/joincomplete");
	$("#memberJoinForm").submit();
}

// 주소 찾기 함수
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
	<!-- 회원가입 정보를 담은 폼 (POST 방식으로 submit) -->
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
					<li class="step01">step01 이메일 인증</li>
					<li class="step02">step02 회원약관동의</li>
					<li class="step03 on">step03 회원정보 입력</li>
					<li class="step04">step04 가입완료</li>
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
											type="button" class="btn add_s" id="idDubChkBtn" value="중복확인"
											onclick="dupCheck()"> <span class="guide_comment"
											id="idMsg"></span></td>
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
											name="memail" id="memail"> <span class="andmail">@</span>
											<select id="memailDomainSel" name="memaildomain"
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
										<th scope="row"><label
											for="birth">생년월일</label></th>
										<td><select style="width: 80px" id="selYear" name="year"
											title="년도">
												<option value="">년</option>
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

	</form>
	
	<!-- footer.jsp include -->
	<%@include file="../includes/footer.jsp"%>
	
</body>
</html>