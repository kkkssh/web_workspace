<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파라미터 가져오기
	request.setCharacterEncoding("UTF-8");
	
	String temp = request.getParameter("custno");
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");	
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	int custno = 0;
	if(temp != null)
		custno = Integer.parseInt(temp);	
	//integer로 바꿔야하는 것만 String 변수명을 temp로 주고 밑에서 바꾼다.
	
	//파라미터 값으로 dto 객체 생성
	MemberDao dao = MemberDao.getMemberDao();
	MemberDto dto = 
			new MemberDto(custno,custname,phone,address,null,grade,city);
	dao.insert(dto);		//db 테이블에 반영된 것 확인하세요.
%>
<script type="text/javascript">
	alert('테스트')
</script>