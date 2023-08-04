
//대여일자 초기화
	let today = new Date()
	document.getElementById('lblStart').value = dateFormat(today, '-')
			
			
//반납기한일자
	let endDate = new Date()
	endDate.setDate(today.getDate()+14)
	document.getElementById('lblEnd').value = dateFormat(endDate, '-')		
		
	function dateFormat(vdate) {
		let year = vdate.getFullYear()
		let month = (vdate.getMonth() + 1).toString().padStart(2, '0')				
		let dates = vdate.getDate().toString().padStart(2, '0')
		let result = [ year, month, dates ].join('-')
		return result
	}
	

//대여 버튼	
	document.getElementById('btn').addEventListener('click',sayHello)
	
	function sayHello(){
 		var id = document.getElementById("lblNum")  //텍스트의 id값을 받는다
 		var code = document.getElementById("lblCode") 
 		var date = document.getElementById("lblEnd") 
 		alert(id.value + "회원님. 대여 도서 [" + code.value + "] 의 반납 기한 날짜는 "+ date.value + " 입니다.")
 	
}				