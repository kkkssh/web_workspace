<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바빈을 생성하는 액션태그이다. -->
<jsp:useBean id="dto" class="sample.dto.MyUser">
</jsp:useBean>
<!-- 위에서 생성된 자바빈에 프로퍼티(클래스의 변수) 값을 저장
	 getParameter 와 setXXXX 메소드를 실행한다.
 -->
 <!-- name="dto"는 useBean 태그의 id 값으로 정한다. -->
 <jsp:setProperty property="uname" name="dto" param = "myname"/>
 <jsp:setProperty property="age" name="dto" param = "age"/>
 <jsp:setProperty property="address" name="dto" param = "address"/>
myuser 이름 : <jsp:getProperty property="uname" name="dto"/><br>
 			  <!-- getXXXX 메소드 역할 -->
나이 : <jsp:getProperty property="age" name="dto"/><br>
주소 : <jsp:getProperty property="address" name="dto"/><br>
</body>
</html>