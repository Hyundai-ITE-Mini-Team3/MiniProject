<!-- 로그인 페이지 (작성자: 박주영) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header_ver2 include -->
<jsp:include page="../includes/header_ver2.jsp">
    <jsp:param name="title" value="로그인"/>
</jsp:include>

<script>
	// jQuery 충돌 방지
	var arkQuery = $.noConflict(true);
</script>

<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
   
	// 아이디 저장 확인 (박주영)
    var inputId = getCookie("inputId");
    $("input[name='mid']").val(inputId);
    // 아이디 쿠키에 있다면 아이디 저장 체크 상태로 변경
    if($("input[name='mid']").val() != "") {
    	$('#id_save').attr("checked", true);
    }
    
	// 로그인 시 호출되는 함수 (박주영)
    $("#login_btn").click(function(){
        var id = $("#loginForm").find("[id='mid']").eq(0).val();
        var pw = $("#loginForm").find("[id='mpassword']").eq(0).val();
        
        // 아이디 공란 체크
        if(id==""){
            layerAlert("아이디를 입력해주세요.");
            return;
        }
        
        // 비밀번호 공란 체크
        if(pw==""){
            layerAlert("비밀번호를 입력해주세요.");
            return;
        }
        
        // ajax 통신으로 로그인 확인
        $.ajax({
            type:"POST",
            url:"/login/login",
            data: {"mid":id,"mpassword":pw},
            success:function(result){
                if(result == "false"){ // 로그인 실패 시
                	
                	var la = new layerAlert('로그인 실패! 아이디와 비밀번호를 확인하세요');
                	la.confirmAction = function(){
                        location.href='/login/loginform';
                    };
                
                } else { // 로그인 성공 시
                	
                	$("#inputId").val(id);
                    $("#loginForm").submit();
                }
            },
            error:function(e){ // ajax 통신 에러 시
            	alert("Ajax 통신 에러");
                location.href="/login/loginform";
            }
        });
    });
    
    
    //enter key event 추가
    $("#loginForm").find("#mpassword").eq(0).keypress(function( event ) {    
        if ( event.which == 13 ) {
            event.preventDefault();
            $("#login_btn").click();
            $(this).blur();
        }
    });
    
    
    // 아이디 저장 체크박수 변화 있을 때 (박주영)
    $('#id_save').change(function(){
        if($(this).is(':checked')){ // 아이디 저장 체크 시, 쿠키에 아이디 저장
            var inputId = $("input[name='mid']").val();
            setCookie("inputId", inputId);
        }else{ // 아이디 저장 체크 해제 시, 쿠키 삭제
           	deleteCookie("inputId");
        }
    });
    
    // 아이디 저장 체크한 상태에서 ID를 입력하는 경우 (박주영)
    $("input[name='mid']").keyup(function() {
    	if($("#id_save").is(':checked')) {
    		var inputId = $("input[name='mid']").val();
            setCookie("inputId", inputId);
    	}
    })
    
});
	
	// 회원가입 (박주영)
	function easyMemJoin() {
		var lc = new layerConfirm("<span style='color:red;'>간편회원으로 가입</span>하실 경우,<br> <span style='color:red;'>한섬마일리지 및 H.Point 적립이 불가</span>하며,<br><span style='color:red;'>한섬 온라인 멤버십 서비스 ‘THE 클럽’의 혜택을 받으실 수 없습니다.<br></span> 간편회원 가입을 진행하시겠습니까?", "간편회원 가입", "취소");
	    // 회원가입 페이지로 이동
		lc.confirmAction = function(){
	        location.href = "/join/joinprovision";
	    };
	    return;
	}
	
	// 아이디 쿠키에 저장
	function setCookie(cname, value) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + 1); // 1일간 쿠키 저장
		var cookie = escape(value) + ("; expires=" + exdate.toGMTString());
		document.cookie = cname + "=" + cookie;
		
	}
	
	// 아이디 쿠키 삭제
	function deleteCookie(cname) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() - 1);
		document.cookie = cname + "=" + "; expires=" + exdate.toGMTString();
	}

	// 아이디 쿠키 확인
	function getCookie(cname) {
		cname = cname + "=";
		var cookie = document.cookie;
		var start = cookie.indexOf(cname);
		var cookieValue = '';
		if(start != -1) {
			start += cname.length;
			var end = cookie.indexOf(';', start);
			if(end == -1) end = cookie.length;
			cookieValue = cookie.substring(start, end);
		}
		
		return unescape(cookieValue);
	}
	

//]]>
</script>
	<div id="bodyWrap" class="login">
		<h3 class="cnts_title">
			<span>로그인</span>
		</h3>
		<div class="sub_container">
			<div id="handsomeCust" class="login_wrap box_type_1 renewal1904">
				<div class="border_box1">
					<div class="inner_box">
						<div class="title_wrap">
							<h4>회원</h4>
						</div>
						<div id="hpIPLogin">
							<!-- 로그인 폼  -->
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
								<div class="login1905">
									<div>
										<a href="#;" id="otpShow" class="otp">OTP
											인증번호 로그인</a>
									</div>
									<div>
										<a href="#">비회원
											주문조회</a>
									</div>
								</div>
							</form>
						</div>

						<div class="section_bottom">
							<p class="mb0">
								<span class="bul_sty01">한섬 회원 아이디 / 비밀번호를 잊으셨나요?</span> <a
									href="/" class="btn add_ss">한섬
									회원 아이디 / 비밀번호 찾기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="border_box2">
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
							<a onclick="easyMemJoin()"
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

	<!-- footer include -->
	<%@include file="../includes/footer.jsp"%>
</body>
</html>