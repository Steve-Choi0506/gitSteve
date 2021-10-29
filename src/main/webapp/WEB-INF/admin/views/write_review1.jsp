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
<title>책리뷰 삽입</title>
</head>
<body>
	<form action="<c:url value="/addBookReview"/>" method="post">
		
		<table width="1200">
		
			<tr>
				<td>도서 번호</td>
				<td><input type="text" rows="16" cols="95" name="book_Index" value="${book_Index}"> </td>
			</tr>
			<tr>
				<td>회원 번호</td>
				<td><input type="text" rows="16" cols="95" name="hp_Index" value="${memberDto.hp_Index}"> </td>
			</tr>
			<tr>
				<td>회원 아이디</td>
				<td><input type="text" rows="16" cols="95" name="hp_ID" value="${hp_ID}"> </td>
			</tr>
			<tr>
				<td>도서 제목</td>
				<td><input type="text" rows="16" cols="95" name="book_Title" value="${book_Title}"> </td>
			</tr>
			<tr>
				<td>리뷰 내용</td>
				<td><textarea rows="16" cols="95" name="book_review" value="${book_review}"></textarea> </td>
			</tr>
			
			<tr>
				<td colspan="2"> 
					<a href="/admin/views/admin_review"><input type="submit" value="삽입"></a> 
				</td>
			</tr>
		
		</table>
	
	</form>
	
	
</body>
</html>