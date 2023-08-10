<%@page import="sample.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록조회(외부평가)</title>
<!-- 아래 href 의 주소는 애플리케이션이름(context) 를 기준으로 하는 절대 주소이다. -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Layout.css?v=3">
<!-- el로 표기할 때에는 현재 페이지의 request 를 가져와야 한다. (pageContext.request)-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/MemberList.css?v=3">
</head>
<body>

	<header>
		<h2>쇼핑몰 회원관리 ver1.0</h2>
	</header>

	<nav>
		<ul>
			<li><a href="./MemberRegister.jsp">회원등록</a></li>
			<li><a href="./MemberList.jsp">회원목록조회/수정</a></li>
			<li><a href="./MemberSales.html">회원매출조회</a></li>
			<li><a href="./Layout.html">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h2>회원목록 조회/수정</h2>
		<table>
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
			</tr>
<c:forEach items="${list }" var="dto">
			<tr>
				<td><a href="./MemberUpdate.jsp?custno=${dto.custno}">
					<c:out value="${dto.custno}"/></a>
				</td>						
				<td><c:out value="${dto.custname }"/></td>		
				<td><c:out value="${dto.phone }"/></td>		
				<td><c:out value="${dto.address }"/></td>		
				<td><c:out value="${dto.joindate }"/></td>	
				<!-- 문자열 메소드 연산은 fn을 이용해서 해야한다. 
					 동등비교는 eq 또는 ne 연산으로 할 수 있다. -->	
				<c:if test="${dto.grade eq 'VIP'}">	
					<td>
						<span style='color: red;'>VIP</span>
					</td>
				</c:if>	
				<c:if test="${dto.grade ne 'VIP'}">	
					<td>
					<c:out value="${dto.grade }"></c:out>
					</td>					
				</c:if>	
				<td><c:out value="${dto.city}"/></td>							
			</tr>
	</c:forEach>
	</table>
	</section>
	<footer>	
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service
			of Korea.</h4>
	</footer>
</body>
</html>