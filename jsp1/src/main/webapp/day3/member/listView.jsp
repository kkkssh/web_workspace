<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 외부라이브러리로 지원되는 태그를 사용하기 위한 import 이다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listView.jsp - 화면 출력 페이지</title>
</head>
<body>
${list}

<hr>
<!-- request.getAttribute("list") 실행 + List<MemberDto> 타입변환 + 출력 -->
<!-- 출력을 반복해서 테이블 tr 태그에 넣기 : jstl
								   애트리뷰트(자바빈)은 자바for로는 못함 -->
<ul>
<c:forEach items="${list }" var="vo">
	<li><c:out value="${vo }"/></li>
</c:forEach>
</ul>
								   
<hr>

<ul>	<!-- list 애트리뷰트는 컬렉션이므로 하나씩 가져와서 vo 에 저장 -->
<c:forEach items="${list }" var="vo">
	<li><c:out value="${vo.custno }"/></li>	<!-- vo.getCustno() -->
	<li><c:out value="${vo.custname }"/></li>
	<li><c:out value="${vo.phone }"/></li>
	<li><c:out value="${vo.address }"/></li>
	<!-- 아래 코드는 없는 필드이므로 오류 -->
	<%-- <li>${vo.citycode }</li>--%>
</c:forEach>
</ul>

</body>
</html>