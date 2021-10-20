<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>

<form action="/uploadOk" method="post" enctype="multipart/form-data">

       
         제목 :     <input type="text"  name="book_Title">
         저자 :     <input type="text"  name="book_Writer">
         출판사 :    <input type="text"   name="book_Company">
         이미지 :    <input type="file"   name="book_Image">
         내용 :     <input type="text"  name="book_Content">
         소개 :     <input type="text"  name="book_Introduce">
         목록 :     <input type="text" name="book_Category">
         
         <input type="submit" value="File Upload">
</form>
</body>
</html>