<%@page import="java.util.List"%>
<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 고객 주문 현황</h3> 
<hr> 
<ul> 
<% 
	OrderDao dao = OrderDao.getOrderDao(); 
	List<String> list = dao.selectOrderByEmail(); 
	for (String email : list) { 
%> 
<li><a href = "orderDetail.jsp?email=<%= email%>"><%= email%></a> 
<%-- 문제6 . (6) ? 에 공통으로 해당하는 출력 표현식을 쓰세요. 
<%= email%> 
email 파라미터를 --%>
</li> 
<% 
	} 
%> 
</ul >
</body>
</html>

