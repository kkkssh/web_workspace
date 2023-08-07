<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정(외부평가)</title>
<link rel="stylesheet" href="../hrd/Layout.css?v=3">
<link rel="stylesheet" href="../hrd/Table.css?v=3">

</head>
<body>
<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 한다. custno 즉 PK 값으로
	 db에서 select 한 결과를 화면에 표시하는 코드가 필요하다.-->
<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장하고 value에서 출력하기 -->
<%
	String custno = request.getParameter("custno");	//parameter는 무조건 String타입
	MemberDao dao = MemberDao.getMemberDao();
	MemberDto dto = null;
	if(custno != null){	/* 수정할 데이터를 가져오기. (custno 가 테이블의 PK값) */
		dto = dao.selectOne(Integer.parseInt(custno));		
	}
%>
	<header>
		<h2>쇼핑몰 회원관리 ver1.0</h2>
	</header>
	
	<nav>		
		<ul>
			<li><a href = "./MemberRegister.html">회원등록</a></li>
			<li><a href = "./MemberList.html">회원목록조회/수정</a></li>
			<li><a href = "./MemberSales.html">회원매출조회</a></li>
			<li><a href = "./Layout.html">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h2>홈쇼핑 회원 정보 수정</h2>
		<!-- action 은 input 데이터를 전달받고 처리할 url 이다. 
			 MemberSave.jsp를 만들고 전달받은 파라미터로 update 실행하기.
				ㄴ 이 파일에는 자바코드만 작성하고 태그는 필요 없다. 	
			 MemberUpdate.jsp에서 보내는 파라미터 이름은 input 태그의 name 속성이다.
		-->
		<form action="MemberSave.jsp" method = "post">
			<table>
				<tr>
					<th><label for="lblNum">회원번호(자동발생)</label></th>
					<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장하고 value에서 출력하기 -->
					<td><input type="text" id="lblNum" name="Num" value = "<%= custno %>"></td>
				</tr>
				<tr>
					<th><label for="lblName">회원성명</label></th>
					<td><input type="text" id="lblName" name="name" value = "<%= dto.getCustname() %>"></td>
					<!-- disabled로 설정된 것은 파라미터 전달이 안된다. readonly로 바꾸기 -->
				</tr>
				<tr>
					<th><label for="lblPhone">회원전화</label></th>
					<td><input type="text" id="lblPhone" name="phone" value = "<%= dto.getPhone() %>"></td>
				</tr>
				<tr>
					<th><label for="lblAddr">회원주소</label></th>
					<td><input type="text" id="lblAddr" name="address" value = "<%= dto.getAddress() %>"></td>
				</tr>
				<tr>
					<th><label for="lblDate">가입일자</label></th>
					<td><input type="text" id="lblDate" name="join-date" value = "<%= dto.getJoindate() %>">
					</td>
				</tr>
				<tr>
					<th><label for="lblLevel">고객등급[A:VIP,B:일반,C:직원]</label></th>
					<td><input type="text" id="lblLevel" name="level" value = "<%= dto.getGrade() %>"></td>
				</tr>
				<tr>
					<th><label for="lblCity">도시코드</label></th>
					<td><input type="text" id="lblCity" name="citycode" value = "<%= dto.getCity() %>"></td>
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