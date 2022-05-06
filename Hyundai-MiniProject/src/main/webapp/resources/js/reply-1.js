console.log("reply-1");
if (typeof jQuery == 'undefined') {
    var script = document.createElement('script');
    script.type = "text/javascript";
    script.src = "https://code.jquery.com/jquery-3.5.1.min.js";
    document.getElementsByTagName('head')[0].appendChild(script);
} else {
    console.log("jQuery Ready");
}


( function($) {
    // 여기서 "$"를 jQuery로 참조
    $(function() { console.log("test"); });
} ) ( jQuery );

//jQuery(document).ready(function() {
//	//댓글 처리 시
//	console.log('댓글테스트1');
//	var qidValue ='<c:out value="${qna.qid}"/>';
//	var replyUL = $(".chat");	
//	showList();	
//	
//});
////
//$(function(){
//	//댓글 처리 시
//	console.log('댓글테스트1');
//	var qidValue ='<c:out value="${qna.qid}"/>';
//	var replyUL = $(".chat");	
//	showList();	
//	
//	
//
//	
//});//end ready