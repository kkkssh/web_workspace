<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16jstlSample.jsp</title>
</head>
<body>
	<h3>일반 변수 테스트</h3>
	<%
	String name = "김땡땡";
	%>
	${name }
	<!-- 일반 자바변수는 애트리뷰트가 아니므로 출력이 안된다. -->
	<h3>core 태그(c로 시작하는 태그) 예시</h3>
	<!-- page scope 의 애트리뷰트 저장 -->
	<c:set var="age" value="10" />
	age : ${age}
	<br>
	<!-- 일반적으로 el 출력은 c:out 태그로 한다. (보안(웹취약성) 문제를 없애기 위해)-->
	<hr>
	<!-- c:if 조건은 test 에서 el 로 작성한다. -->
	<c:if test="${age<20 }">
		<div style="color: green;">청소년입니다.</div>
	</c:if>
	<hr>
	<h4>if ~ else 형식 : else 해당하는 태그가 없습니다.</h4>
	<c:set var="age" value="24" />
	<!-- test 조건식이 거짓이므로 div 태그 출력 안함 -->
	<c:if test="${age<20 }">
		<div style="color: green;">청소년입니다.</div>
	</c:if>
	<c:if test="${age>=20 }">
		<div style="color: blue;">성인입니다.</div>
	</c:if>
	<!-- else 해당하는 태그가 없다. c:choose 와 비슷한 동작을 한다.
	 아래 c:choose 와 위의 c:if 2개는 같은 동작을 한다.
 -->
	<c:choose>
		<c:when test="${age<20}">
			<!-- if -->
			<div style="color: green;">청소년입니다.</div>
		</c:when>
		<c:otherwise>
			<!-- else -->
			<div style="color: blue;">성인입니다.</div>
		</c:otherwise>
	</c:choose>
	<!-- 스크립트릿에서 for문을 작성하는 것 대신 사용 -->
	<hr>
	<h4>for each</h4>
	<c:forEach var="i" begin="1" end="10" varStatus="status" step="2">
		<!-- for시작값은 1, 마지막값은 10, 변수명은 var로 지정. step은 증가값.기본값은 1 -->
		<c:out value="${i*10 }" />
		<br>
		<c:out value="${status.index }" />
		<br>
		<!-- 몇번째 값인지를 나타내는 index 출력,
	 varStatus 는 for 동작의 상태(시작값,마지막값,step,현재순서)를 참조할 변수명 -->
	</c:forEach>
	<!-- 배열과 컬렉션을 다루는 forEach -->
	<h4>배열과 컬렉션을 다루는 forEach</h4>
	<c:forEach items="${list }" var="vo" varStatus="status">
		<c:out value="vo" />
		<br>
		<c:out value="${status.index }" />
		<br>
	</c:forEach>

	<hr>

	<!-- fmt -->
	<h3>fmt 서식 태그</h3>
	<!-- formatNumber는 바로 서식 있는 출력과 저장 , value에는 값을 직접 또는 el -->
	<fmt:formatNumber value="9999999" />
	<br>
	<!-- fmt:parseNumber는 변수에 저장.  -->
	<fmt:parseNumber var="test" value="8888888" />
	test : ${test }
	<br>
	<!-- 서식 없는 출력 -->
	<!-- 현재 locale : ko_kr 표기는 언어_국가 형식-->
	<fmt:formatNumber value="9999999" type="currency" />
	<br>
	<!--  locale 변경 : en_us -->
	<fmt:setLocale value="en_us" />
	<fmt:formatNumber value="9999999" type="currency" />
	<br>
	<!-- type: 화폐단위 또는 퍼센트(percent) 등 표시 , 
   		pattern : 직접 소수점 이하, 전체 자리수 지정-->
	<!-- 789,789.123 기본패턴:소수점 최대 3자리 -->
	<fmt:formatNumber value="789789.12345" />
	<br>
	<!-- 789,789.12 -->
	<fmt:formatNumber value="789789.12345" pattern="#,###.##" />
	<br>
	<!-- 0,000,789,789.12300 -->
	<fmt:formatNumber value="789789.123" pattern="0000,000,000.00000" />
	<br>

	<!-- 날짜 패턴에 대소문자 유의 : 일 dd, 월 MM , 분 mm , 시(12) hh , 시(24) HH -->
	<fmt:formatDate value="${now }" />
	<br>
	<!-- Jan 20, 2023 *formatDate 도 var 로 변수 저장 -->
	<!-- parseDate의 pattern은 value 값의 형식을 알려줍니다. 문자열을 날짜 타입으로 캐스팅 -->
	<fmt:parseDate value="2022-11-03 20:14" var="datetime1"
		pattern="yyyy-MM-dd HH:mm" />
	현재시간과 날짜 : ${datetime1 }
	<br>
	<!-- 출력결과 : Thu Nov 03 00:00:00 KST 2022 -->
	<fmt:formatDate value="${datetime1 }" type="date" />
	<br>
	<!-- Nov 3, 2022 -->
	<fmt:formatDate value="${datetime1 }" type="time" />
	<br>
	<!-- 8:14:00 PM -->
	<fmt:formatDate value="${datetime1 }" type="both" />
	<br>
	<!-- Nov 3, 2022, 8:14:00 PM -->
	<fmt:formatDate value="${datetime1 }" pattern="yyyy-MM-dd HH:mm:ss" />
	<br>
	<!-- 2022-11-03 20:14:00   시간이 24시 기준(HH)-->
	<fmt:formatDate value="${datetime1 }" pattern="yyyy-MM-dd a hh:MM:ss" />
	<br>
	<!-- 2022-11-03 08:14:00   시간이 12시 기준(hh). a는 오전/오후 표시 -->

<hr>

	<h3>문자열 메소드를 함수형태로 사용하기 : fn</h3>
	(태그가 아니며 el과 함께 사용한다. 자바의 문자열 메소드와 상당부분 일치)
	<br>
	<c:set var="msg" value="i am spring!!" />
	length : ${fn:length(msg) }
	<br>
	<!-- 예상 : 13 -->
	indexOf : ${fn:indexOf(msg,"am") }
	<br>
	<!-- 예상 : 2 -->
	replace : ${fn:replace(msg,"spring","java") }
	<br>
	<!-- 특수문자 출력을 위해 사용. < &lt; &gt; 와 같이 기능이정해진 문자를 출력 -->
	escapeXml : ${fn:escapeXml("<strong>테스트</strong>") }
	<!-- fn 함수 결과로 c:if의 조건식으로 사용할 수 있다. -->


</body>
</html>