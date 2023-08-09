<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13forward.jsp</title>
</head>
<body>
<jsp:useBean id="reqDto" class ="sample.dto.MyUser" scope="request"/>
<jsp:setProperty property="*" name="reqDto"/>
<!-- A.jsp가 받은 요청을 B.jsp에게 전달해주는 동작이 forward 이다. -->
<h3>요청을 받아서 전달하기</h3>
<p>13forward.jsp 가 전달을 보내는 페이지이다.</p>
<jsp:forward page="14beanForward.jsp"></jsp:forward>
</body>
</html>