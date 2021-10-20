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
<title>공지사항 갱신</title>
</head>
<body>
	<form action="<c:url value="/updateNotice"/>" method="post">
		<c:forEach var="hp_Notice" items="${noticebyIndex}">
		<table width="500">
		
		<tr>
			<td>공지사항 번호</td>
			<td><input type="text" rows="16" cols="95" name="notice_Index" value="${hp_Notice.notice_Index}"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><textarea rows="16" cols="95" name="notice_Title">${hp_Notice.notice_Title}</textarea> </td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="16" cols="95" name="notice_Content">${hp_Notice.notice_Content}</textarea> </td>
		</tr>
	    <tr>
			<td>날짜</td>
			<td><input type="hidden" rows="16" cols="95" name="notice_Date" value="${hp_Notice.notice_Date}"> </td>
		</tr>
		<tr>
			<td>조회수</td>
			<td><input type="text" rows="16" cols="95" name="notice_Count" value="${hp_Notice.notice_Count}"> </td>
		</tr>
		
		
		<tr>
			<td colspan="2"> 

				<a href="/admin/views/admin_notice"><input type="submit" value="갱신"></a> 
			</td>
		</tr>
		
		</table>
	
	</c:forEach>
	</form>
	
	
</body>
</html>