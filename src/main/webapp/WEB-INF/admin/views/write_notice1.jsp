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
<title>공지사항 추가</title>
</head>
<body>
	<form action="<c:url value="/addNotice"/>" method="post">
		
		<table width="500">
		
			<tr>
				<td>제목</td>
				<td><textarea rows="16" cols="95" name="notice_Title" value="${notice_Title}"></textarea> </td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="16" cols="95" name="notice_Content" value="${notice_Content}"></textarea> </td>
			</tr>
		
			<tr>
				<td colspan="2"> 
	
					<a href="/admin/views/admin_notice"><input type="submit" value="추가"></a> 
				</td>
			</tr>
		
		</table>
	
	
	</form>
	
	
</body>
</html>