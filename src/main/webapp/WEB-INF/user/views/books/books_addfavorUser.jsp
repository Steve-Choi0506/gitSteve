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
<title>addfavorUser</title>
</head>
<body>

    <h1>즐겨찾기에 추가하시겠습니까?</h1>
    
   <form action="/addfavorUser" method="post" enctype="multipart/form-data">
   
   <c:forEach var="hp_book" items="${booklistbyIndex}">
	
			<tr>
			
				<td><input type="hidden" rows="16" cols="95" name="hp_Index" value="${hp_book.hp_Index}"> </td>
			</tr>
			<tr>
			    <td><input type="hidden" rows="16" cols="95" name="hp_ID" value="${hp_book.hp_ID}"></td>
			</tr>
			<tr>

				<td><input type="hidden" rows="16" cols="95" name="book_Index" value="${hp_book.book_Index}"> </td>
			</tr>
			<tr>

				<td><input type="hidden" rows="16" cols="95" name="book_Title" value="${hp_book.book_Title}"> </td>
			</tr>
			<tr>

				<td><input type="hidden" rows="16" cols="95" name="book_Writer" value="${hp_book.book_Writer}"></td>
			</tr>
			<tr>
		
				<td><input type="hidden" rows="16" cols="95" name="book_Image" value="${hp_book.book_Image}"></td>
			</tr>
		
</c:forEach>
			
		       <a href="/user/views/member/favorites"><input type="submit" class="button-favor" name="즐겨찾기에 추가" value="즐겨찾기에 추가"></a>
	
	
			</form>
</body>
</html>