<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//메소드 방식이 post 일 때는 인코딩이 꼭 필요합니다.
request.setCharacterEncoding("UTF-8");
%>	

<jsp:useBean id="dto" class="sample.dto.MemberDto"/>

<!-- 전체 지정 -->
<jsp:setProperty property="*" name="dto"/>	<!-- 모든 것 가져오기 -->

<!-- 위와 아래 중 둘 중 하나만 있어도 된다. -->

<!-- 각자 지정 -->
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
<script type="text/javascript">
	alert('회원 등록이 완료되었습니다.')
	location.href = 'MemberList.jsp'
</script>



