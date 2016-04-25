<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
게시물 작성
<form action='ContentInputPro.hash'>
	<input type ="hidden" name="email" value="${sessionScope.email}">
	<input type="hidden" name="nickname" value="${sessionScope.nickname}"></input>
	<textarea name='content' cols="20" rows="10"></textarea><br>
	<input type="submit"/>	
</form>

</body>
</html>