/**
 * 
 */

// form에 대한 값의 검증처리 메서드
function checkVal(form){
	// alert(form);	// [object HTMLFormElement]
						// DOM이라는 객체 형식으로 넘어간다!!
						
	// alert(form.subjects) // [object RadioNodeList]
	
	let cnt = 0;
	for(let i = 0; i<form.subjects.length; i++) {
		// alert(form.subjects[i].checked);	// 이렇게하면 체크박스 체크 여부를 boolean으로 반환!
		if(form.subjects[i].checked) cnt ++;
	}
	
	if(cnt > 0) {
		form.submit();
	}
	else{
		alert('최소 한 개 과목 이상 신청해야 합니다.');
	}
}