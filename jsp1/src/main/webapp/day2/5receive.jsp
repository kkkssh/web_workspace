<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5receive.jsp</title>
</head>
<body>
<h3>받은 파라미터를 확인한다.</h3>
<%
	///readonly
	String name = request.getParameter("name");
	out.print(name); out.print("<br>");
	String age = request.getParameter("age");
	out.print(age); out.print("<br>");
	///disabled 와 hidden
	String pname = request.getParameter("pname");
	out.print(pname); out.print("<br>");
	String pcode = request.getParameter("pcode");
	out.print(pcode); out.print("<br>");
	//변수명은 파라미터 이름과 다르게 해서 테스트
	String pnum = request.getParameter("pno");
	out.print(pnum); out.print("<br>");
%>
</body>
</html>