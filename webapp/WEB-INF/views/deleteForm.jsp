<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${pageContext.request.contextPath}/guest/delete" method="post">
		
		비밀번호 : <input type="text" name="password">
		<button type="submit">확인</button>
		<br>
		<a href="http://localhost:8088/${pageContext.request.contextPath}/guest/addList">메인으로 돌아가기</a>
		<%-- hidden--%>
		<input type="hidden" name="no" value="${param.no}">

		<!-- password값 말고 다른값으로 시도해보기 -->
		<c:if test="${param.count == 0}">
			<p>비밀번호가 틀립니다. 다시입력해주세요</p>
		</c:if>
	
	</form>
	


</body>
</html>