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
<title>1:1 삭제</title>
<style>
  #hidden {
    display: none;
  }
</style>
</head>
<body>
	<form action="<c:url value="/deleteQnA"/>" method="post">

	<c:forEach var="hp_Qna" items="${qnabyIndex}">
		<table width="500">
		
		<tr>
			<td>공지사항 번호</td>
			<td><input type="text" rows="16" cols="95" name="qna_Index" value="${hp_Qna.qna_Index}"></td>
		</tr>
		<tr id="hidden">
			<td>번호</td>
			<td><input type="hidden" name="hp_Index" value="${hp_Qna.hp_Index}"> </td>
		</tr>
		<tr id="hidden">
			<td>작성자</td>
			<td><input type="hidden" name="hp_ID" value="${hp_Qna.hp_ID}"> </td>
		</tr>
	  <tr>
			<td>제목</td>
			<td><input type="text" name="qna_Title" value="${hp_Qna.qna_Title}"> </td>
		</tr>
    <tr>
			<td>날짜</td>
			<td><input name="qna_Date" value="${hp_Qna.qna_Date}"> </td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="16" cols="95" name="qna_Content">${hp_Qna.qna_Content}</textarea> </td>
		</tr>
		<tr id="hidden">
			<td>답변확인</td>
			<td><input type="hidden" name="answer_Check" value="${hp_Qna.answer_Check}"> </td>
		</tr>
		<tr>
			<td colspan="2"> 

				<a href="/admin/views/admin_qna"><input type="submit" value="삭제"></a> 
			</td>
		</tr>
		
		</table>
	</c:forEach>
	
	</form>
	
	
</body>
</html>