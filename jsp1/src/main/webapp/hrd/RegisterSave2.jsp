<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//메소드 방식이 post 일 때는 인코딩이 꼭 필요합니다.
request.setCharacterEncoding("UTF-8");
%>	

<jsp:useBean id="dto" class="sample.dto.MemberDto"/>

<jsp:setProperty property="*" name="dto"/>
<hr>
<jsp:setProperty property="custno" name="dto"/>
<jsp:setProperty property="custname" name="dto"/>
<jsp:setProperty property="phone" name="dto"/>
<jsp:setProperty property="address" name="dto"/>
<jsp:setProperty property="grade" name="dto"/>
<jsp:setProperty property="city" name="dto"/>

<% 
	MemberDao dao = MemberDao.getMemberDao();
	dao.insert(dto);
%>




