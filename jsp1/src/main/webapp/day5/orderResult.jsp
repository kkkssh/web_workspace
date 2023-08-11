<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 주문 확인</h3> 
<hr> 
<ul> 
<li> 고객 이메일 : ${order.email} </li> 
<li> 상품코드 : ${order.pcode } </li> 
<li> 주문수량 : ${order.quantity } </li> 
</ul> 
<hr> 
<button onclick = "#'" > 추가 주문</button> 
<script type = "text/javascript"> alert( '주문완료 되었습니다.' ) </script > 


<!-- 문제10. <jsp:forward page="orderResult.jsp"/> 를 설명하세요.
orderConfirm2.jsp 가 받은 요청을 orderResult.jsp 에게 전달한다. 
-->

<!-- 문제11. ${order.email} 를 설명하세요.
el을 사용해서 자바코드를 사용하지 않고 order의 email 속성을 출력한다.
 -->
</body>
</html>
