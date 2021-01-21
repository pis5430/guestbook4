<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>guestbook</title>
</head>
<body>



	
	<form action="${pageContext.request.contextPath}/guest/add" method="post"> <%--컨트롤러로 --%>
		
		<h2>addList 메인화면(등록 및 리스트 출력 가능)</h2>
		
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" width="60" name="name"></td>
				<td>비밀번호</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td colspan="4" ><textarea rows="5" cols="70" name="content"></textarea></td>
			</tr>	
			<tr>
				<td colspan="4"> <button type="submit">확인</button> </td>
			</tr>	
		</table>
			
		
	</form>
	
	<br><br>
		<c:forEach items="${requestScope.gList}" var="guestVo" >
			<table border = "1">
				<tr>
					<td>${guestVo.no}</td>
					<td>${guestVo.name}</td>
					<td>${guestVo.date}</td>
					<td><a href="${pageContext.request.contextPath}/guest/deform?no=${guestVo.no}">[삭제]</a></td>
				</tr>
				<tr>
					<td colspan="4">
					${guestVo.content }
					</td>
				</tr>	
			</table>
			<br>
		</c:forEach>
	



</body>
</html>