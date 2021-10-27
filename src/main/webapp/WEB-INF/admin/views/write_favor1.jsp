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
<title>즐겨찾기 목록 추가</title>
</head>
<body>
	<form action="<c:url value="/addfavor"/>" method="post" enctype="multipart/form-data">
		
		<table width="500">
	
		<tr>
			<td>번호</td>
			<td><input type="text" rows="16" cols="95" name="hp_Index" value="${hp_Index}"> </td>
		</tr>
		<tr>
			<td>책번호</td>
			<td><input type="text" rows="16" cols="95" name="book_Index" value="${book_Index}"> </td>
		</tr>
		
		
		<tr>
			<td>제목</td>
			<td><input type="text" rows="16" cols="95" name="book_Title" value="${book_Title}"> </td>
		</tr>
		
		<tr>
			<td>저자</td>
			<td><input type="text" rows="16" cols="95" name="book_Writer" value="${book_Writer}"></td>
		</tr>
		
		<tr>
			<td>이미지</td>
			<td><input type="file" rows="16" cols="95" name="book_Image" value="${book_Image}"></td>
		</tr>
		
		
		<tr>
			<td colspan="2"> 

				<a href="/admin/views/admin_favor"><input type="submit" value="삽입"></a> 
			</td>
		</tr>
		
		</table>
	
	
	</form>
	
	
</body>
</html>