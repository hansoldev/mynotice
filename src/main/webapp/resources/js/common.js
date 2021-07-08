
/* 모달 open 함수 */
 /*
	url : ajax 보낼 url
	modalID : 모달 id
	param : object 형식 파람 (modalid 외 파라미터)
	methodType : GET/POST (false는 GET)
*/
function opendModal(url, modalID, param, methodType){
	const paramData = Object.assign({id : modalID}, param);
	
	let type = methodType ? "POST" : "GET";
	jQuery.ajax({ 
		type: type, 
		url: url, //실행 결과 페이지
		data: paramData,
		success: function(result) {
			const $id = $("#"+modalID);
			$id.html(result); //실행 결과 페이지 부모페이지에 삽입
			$id.find(".modal").addClass("is-active");
	
	      //document.getElementById("resultson").innerHTML(result); //innerHTML방식
		},
		error: function(result) {
			alert("에러가 발생하였습니다."); //실패시 실행부분
		}
	});
}

/* 모달 닫기 함수 */	
const deleteModal = (id) => {
	$('#'+id+' .modal').removeClass("is-active");
}
