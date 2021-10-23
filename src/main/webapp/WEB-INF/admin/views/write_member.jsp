<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>회원정보 수정</title>
</head>
<body>
	<form action="<c:url value="/updateMember"/>" method="post">
		
<c:forEach var="hp_member" items="${memberlist_byIndex}">
		<table width="500">
		
		
		<tr>
			<td>번호</td>
			<td><input type="text" rows="16" cols="95" name="hp_Index" value="${hp_member.hp_Index}"></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" rows="16" cols="95" name="hp_ID" value="${hp_member.hp_ID}"> </td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" rows="16" cols="95" name="hp_Password" value="${hp_member.hp_Password}"> </td>
		</tr>
		
		
		<tr>
			<td>이름</td>
			<td><input type="text" rows="16" cols="95" name="hp_Name" value="${hp_member.hp_Name}"> </td>
		</tr>
		
		<tr>
			<td>생년월일(연)</td>
			<td><input rows="16" cols="95" name="hp_Birthday_Year" value="${hp_member.hp_Birthday_Year}"></td>
		</tr>
		<tr>
			<td>생년월일(월)</td>
			<td><input rows="16" cols="95" name="hp_Birthday_Month" value="${hp_member.hp_Birthday_Month}"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type="text" rows="16" cols="95" name="hp_Sex" value="${hp_member.hp_Sex}"></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><input type="text" rows="16" cols="95" name="hp_Email" value="${hp_member.hp_Email}"> </td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" rows="16" cols="95" name="hp_Phone" value="${hp_member.hp_Phone}"> </td>
		</tr>
		<tr>
			<td>티켓여부</td>
			<td><input type="text" rows="16" cols="95" name="hp_Ticket" value="${hp_member.hp_Ticket}"> </td>
		</tr>
		<tr>
			<td>권한 여부</td>
			<td><input type="text" rows="16" cols="95" name="hp_Auth" value="${hp_member.hp_Auth}"> </td>
		</tr>
		<tr>
			<td colspan="2"> 

				<a href="/admin/views/admin_member"><input type="submit" value="갱신"></a> 
			</td>
		</tr>
		
		</table>
	
	</c:forEach>
	</form>
	
	
</body>
</html>