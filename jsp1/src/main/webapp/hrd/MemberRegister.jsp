<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록(외부평가)</title>
<link rel="stylesheet" href="../hrd/Layout.css?v=3">
<link rel="stylesheet" href="../hrd/Table.css?v=3">

</head>
<body>
	<header>
		<h2>쇼핑몰 회원관리 ver1.0</h2>
	</header>
	
	<nav>		
		<ul>
			<li><a href = "./MemberRegister.jsp">회원등록</a></li>
			<li><a href = "./MemberList.jsp">회원목록조회/수정</a></li>
			<li><a href = "./MemberSales.html">회원매출조회</a></li>
			<li><a href = "./Layout.html">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h2>홈쇼핑 회원 등록</h2>
		<!-- <form action="RegisterSave.jsp" method = "post"> -->
		<form action="RegisterSave2.jsp" method = "post">
			<table>
				<tr>
					<th><label for="lblNum">회원번호(자동발생)</label></th>
					<td><input type="text" id="lblNum" name="custno"></td>
				</tr>
				<tr>
					<th><label for="lblName">회원성명</label></th>
					<td><input type="text" id="lblName" name="custname"></td>
				</tr>
				<tr>
					<th><label for="lblPhone">회원전화</label></th>
					<td><input type="text" id="lblPhone" name="phone"></td>
				</tr>
				<tr>
					<th><label for="lblAddr">회원주소</label></th>
					<td><input type="text" id="lblAddr" name="address"></td>
				</tr>
				<tr>
					<th><label for="lblDate">가입일자</label></th>
					<td><input type="text" id="lblDate" name="joindate" disabled="disabled">
					</td>
				</tr>
				<tr>
					<th><label for="lblLevel">고객등급[A:VIP,B:일반,C:직원]</label></th>
					<td><input type="text" id="lblLevel" name="grade"></td>
				</tr>
				<tr>
					<th><label for="lblCity">도시코드</label></th>
					<td><input type="text" id="lblCity" name="city"></td>
				</tr>
				<tr>
					<th colspan="2">
						<button onclick="alert('회원등록이 완료되었습니다!')">등록</button>
						<!-- button type = 'submit' : 폼 태그 안에 있을 때 type 생략 -->
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