<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정(외부평가)</title>
<link rel="stylesheet" href="../../css/Layout.css?v=3">
<link rel="stylesheet" href="../../css/Table.css?v=3">

</head>
<body>
	<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 한다. custno 즉 PK 값으로
	 db에서 select 한 결과를 화면에 표시하는 코드가 필요하다.-->
	<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장하고 value에서 출력하기 -->
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
		<h2>홈쇼핑 회원 정보 수정</h2>
		<%-- el ${}을 쓰면 getAttribute() 역할을 한다. --%>		
		<%-- <jsp:useBean id="member" class="sample.dto.MemberDto" scope="request"/> --%>
		<form action="UpdateSave.jsp" method="post">
			<table>
				<tr>
					<th><label for="lblNum">회원번호(자동발생)</label></th>
					<!-- param 은 getParameter() 동작의 el 에서 사용하는 객체이다. -->
					<td><input type="text" id="lblNum" value="${member.custno }"	> 
						<input type="hidden" name="custno" value="${param.custno }"></td>
				</tr>
				<tr>
					<th><label for="lblName">회원성명</label></th>
					<td><input type="text" id="lblName" name="custname"
						value="${member.custname}"></td>

				</tr>
				<tr>
					<th><label for="lblPhone">회원전화</label></th>
					<td><input type="text" id="lblPhone" name="phone"
						value="${member.phone}"></td>
				</tr>
				<tr>
					<th><label for="lblAddr">회원주소</label></th>
					<td><input type="text" id="lblAddr" name="address"
						value="${member.address}"></td>
				</tr>
				<tr>
					<th><label for="lblDate">가입일자</label></th>
					<td><input type="text" id="lblDate" name="joindate"
						value="${member.joindate}" ></td>
				</tr>
				<tr>
					<th><label for="lblLevel">고객등급[A:VIP,B:일반,C:직원]</label></th>
					<td><input type="text" id="lblLevel" name="grade"
						value="${member.grade}"></td>
				</tr>
				<tr>
					<th><label for="lblCity">도시코드</label></th>
					<td><input type="text" id="lblCity" name="city"
						value="${member.city}"></td>
				</tr>
				<tr>
					<th colspan="2">
						<button>수정</button>
						<button type="button" onclick="location.href = 'MemberList.jsp'">조회</button>
					</th>
				</tr>
			</table>
		</form>
	</section>
	<footer>
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human
			Resources Development Service of Korea.</h4>
	</footer>
</body>
</html>