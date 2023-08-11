<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 > 주문 입력</h3 > 
<hr> 
<!-- 문제1 . 위와 같은 실행결과를 위해 form 입력값 전송 방식 method = “ ” 어떻게 할까요? 
 	method="post"-->
<form action = "orderConfirm.jsp" method="post"> 
<input type = "text" name = "email" placeholder = "고객이 메일을 입력하세요." > 
<input type = "text" name = "pcode" placeholder = "상품코드 입력하세요." > 
<input type = "number" name = "quantity" placeholder = "수량을 입력하세요." > 
<button > 주문</button > 
<!-- 문제 2 . 위의 button 의 타입 설정이 생략된 것은 무엇인가요?
submit -->
<!-- 문제3 . orderConfirm.jsp 에서 전송받는 파라미터 이름은 무엇인가요? 모두 쓰세요. 
 email,pcode,quantity-->
</form >
 
<!-- 
//테이블 만들기
CREATE TABLE orders(
   email varchar2(30), 
   pcode varchar2(20) NOT NULL, 
   quantity NUMBER(3) NOT NULL, 
   orderdate DATE DEFAULT sysdate
);

insert into orders values ('ok@naver.com','JINR123',10,sysdate);
insert into orders values ('nana@gmail','IPAD091',2,sysdate);
insert into orders values ('nana@gmail','CAS120A',4,sysdate);

SELECT * FROM orders; 
-->
</body>
</html>