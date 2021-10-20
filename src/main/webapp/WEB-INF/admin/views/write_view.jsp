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
<title>갱신</title>
</head>
<body>
	<form action="<c:url value="/updateBook"/>" method="post" enctype="multipart/form-data">
		<c:forEach var="hp_book" items="${booklistbyIndex}">
		<table width="500">
		
		<tr>
			<td>번호</td>
			<td><input type="text" rows="16" cols="95" name="book_Index" value="${hp_book.book_Index}"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" rows="16" cols="95" name="book_Title" value="${hp_book.book_Title}"> </td>
		</tr>
		<tr>
			<td>저자</td>
			<td><input type="text" rows="16" cols="95" name="book_Writer" value="${hp_book.book_Writer}"> </td>
		</tr>
		
		
		<tr>
			<td>출판사</td>
			<td><input type="text" rows="16" cols="95" name="book_Company" value="${hp_book.book_Company}"> </td>
		</tr>
		
		<tr>
			<td>이미지</td>
			<td><input type="file" rows="16" cols="95" name="book_Image" value="${hp_book.book_Image}"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="16" cols="95" name="book_Content">${hp_book.book_Content}</textarea> </td>
		</tr>
		<tr>
			<td>소개</td>
			<td><textarea rows="16" cols="95" name="book_Introduce">${hp_book.book_Introduce}</textarea> </td>
		</tr>
		
		<tr>
			<td>목록 여부</td>
			<td><input type="text" rows="16" cols="95" name="book_Category" value="${hp_book.book_Category}"> </td>
		</tr>
		<tr>
			<td colspan="2"> 

				<a href="/admin/views/admin_book"><input type="submit" value="갱신"></a> 
			</td>
		</tr>
		
		</table>
	</c:forEach>
	
	</form>
	
	
</body>
</html>