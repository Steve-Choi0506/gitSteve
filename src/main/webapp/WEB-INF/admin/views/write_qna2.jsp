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
				<td colspan="2"> 
					<a href="/admin/views/admin_qna"><input type="submit" value="삭제"></a> 
				</td>
			</table>
		</c:forEach>
	</form>
	
	
</body>
</html>