<%@page import="java.net.InetAddress"%>
<%@page import="org.iclass.dto.BookUser"%>
<%@page import="org.iclass.dto.Community"%>
<%@page import="org.iclass.dao.CommunityDao"%>
<%@page import='java.sql.Timestamp' %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	BookUser writer = (BookUser) session.getAttribute("user");
// 아래 작성자는 문제점을 발견하기 위한 추가 사항이고 나중에는 삭제합니다.	아래와 같이하면 세션 비교 코드 필요하다.
//	String writer = request.getParameter("writer");
	String ip = request.getRemoteAddr();	//클라이언트 ip 가져오기		
	String title = request.getParameter("title");
	String content = request.getParameter("content");	
	
	CommunityDao dao = CommunityDao.getInstance();
	
	long idx = dao.insert(Community.builder()
									.writer(writer.getId())
//									.writer(writer)
									.title(title)
									.content(content)
									.ip(ip)
									.build());	

%>	
<script type="text/javascript">
	alert('글 등록이 완료되었습니다.')
	location.href = 'list.jsp'
</script>
</body>
</html>