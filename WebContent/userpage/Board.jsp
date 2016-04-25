<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
메인 게시판
id : ${email}<br>
password : ${passwd}<br>
session.memID : ${sessionScope.memId}<br>
session.nickName : ${sessionScope.nickName}<br>
<input type="button" value="로그아웃" onClick="window.location.replace('Logout.hash')"/><br>
</body>
</html>