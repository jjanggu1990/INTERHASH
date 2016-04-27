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
hash : ${hash}<br>
session.memID : ${sessionScope.memId}<br>
session.nickName : ${sessionScope.nickName}<br>
<input type="button" value="글쓰기" onClick="window.location.href='ContentInputForm.hash';"/><br>
<input type="button" value="로그아웃" onClick="window.location.replace('Logout.hash')"/><br>
<input type="button" value="정보수정" onClick="window.location.href='UserInfoModifyForm.hash';"/><br>
<input type="button" value="글보기" onClick="window.location.href='ContentView.hash';"/><br>
</body>
</html>