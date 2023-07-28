/*정규표현식(regExp)으로 문자열을 검사 - 기호를 이용하는 패턴 검사
  정규표현식 기호에 대한 기본적인 내용 조사
  예시 : 1) 이메일 패턴 검사	2) 패스워드를 대문자와 특수문자 1개 이상 포함하고 8글자 이상
*/
/**
 * MemberJoin.html 의 입력 폼(입력 요소)에 사용자가 입력한 값들을 검사하는 자바스크립트
 * => 유효성 검사 항목(요구사항) : 이름, 이메일은 필수 입력. 패스워드는 4글자 이상. 나이 범위는 15~99
 */
function func_join(){	/*'가입하기' 버튼의 onclick 이벤트에 대해 실행하는 함수*/
	/*자바스크립트의 변수 선언 키워드 : var, let, const. var은 예전 버전의 변수 선언 방식
	  const 는 값은 변경할 수 없고, 객체는 재할당 불가. 일반적으로 요소를 저장하는 변수 형식으로 사용
	*/
	const frm = document.forms[0]
	const name = frm.name
	const email = frm.email
	const password = frm.password
	const age = frm.age
	let pwRegExp = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/
	let emailRegExp = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i
	
	console.log(frm)
	console.log(name)
	console.log(email)
	console.log(password)
	console.log(age)
	/*let 은 값 변경 또는 객체 재할당 가능한 일반적인 변수*/
	let isValid = true		/*유효성 통과 여부를 저장하는 변수*/
	
	if(name.value == ''){	/*텍스트 입력 없으면 ''*/
		alert('이름은 필수 입력입니다.')
		name.focus()		/*name 으로 지정된 입력 요소가 focus 를 갖는다.*/
		isValid= false
	}else	
	/*if(password.value.length < 4){		//정규표현식으로 대체 해보기
		alert('패스워드는 4글자 이상입니다.')
		password.focus()
		isValid = false
	}else		*/
	if(pwRegExp.test(password)){		//정규표현식으로 대체 해보기
		alert('대문자와 특수문자 1개 이상 포함한 8글자 이상 입력하세요.')
		password.focus()
		isValid = false
	}else		
	/*if(email.value === ''){ 			//정규표현식으로 대체 해보기
		alert('이메일은 필수 입력입니다.')
		email.focus()
		isValid = false
	}*/
	if (!emailRegExp.test(email)) {
    	alert('유효한 이메일 주소를 입력해주세요.');
    	email.focus();
    	isValid = false;
	}	
	else	
	if(age.value <= 15 || age.value >= 99){
		alert('나이는 15~99 범위의 값이어야 합니다.')
		age.focus()
		isValid = false
	}
	
	/*취미를 반드시 1개 이상 선택하도록 검사 : name 이 같은 checkbox 는 요소를 가져오면 배열*/
	let cnt = 0
	/*자바스크립트는 함수를 변수에 대입시켜서 사용하는 형식이 가능. 일급함수 라고 한다.*/
	const func_hobby = function(item){		/*frm.hobby 배열 요소를 하나씩 item 변수로 저장해서 함수를 실행하기*/
			if(item.checked){
				console.log(item)
				cnt++		/*check 항목 카운트 하기*/
			}			
		}	//메소드 또는 함수의 인자로 함수가 쓰일 때 콜백함수(callback 함수라고 한다.)
	
	frm.hobby.forEach(func_hobby)	
	
	if(cnt==0){
		alert('취미는 1개 이상 선택해 주세요.')
		isValid = false
	}
		
	
	if(isValid){	//유효성 통과하여 제출합니다.
		frm.action = 'success.html'		/*action 속성이 form 태그에서 지정되어 있지 않으면 필수 작성*/
		frm.submit()			
		/*submit 버튼을 클릭하는 것과 같은 메소드 동작. 기본 버튼 type을 변경하기*/
	}else{
		alert('유효성 통과 실패!!!')
	}
	
}