<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
<%
	String temp = request.getParameter("custno");
	MemberDao dao =MemberDao.getMemberDao();
	MemberDto dto = null;
	if(temp == null) temp = "100006";	
	dto = dao.selectOne(Integer.parseInt(temp)); 
	
	/* if(temp != null)	
	dto = dao.selectOne(Integer.parseInt(temp)); */
	
	//jsp:useBean scope="request" 와 동일한 메소드이다. 자바빈id="member"
	request.setAttribute("member", dto);
	
	//jsp:forward page="updateView.jsp" 와 동일한 메소드이다.
	pageContext.forward("updateView.jsp");
%>
</body>
</html>