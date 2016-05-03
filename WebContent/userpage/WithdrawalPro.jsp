<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<center>
<c:if test="${check!=1}">
<script>
alert("비밀번호가 맞지 않습니다.");
history.go(-1);
</script>
</c:if>
<c:if test="${check==1}">
<form method="post" action="Main.hash">
<table>
<tr>
<td align="center">
<b>회원탈퇴가 완료되었습니다.</b></td>
</tr>
<tr>
<td align="center">
<p>잠시후 메인페이지로 이동합니다.</p>
<meta http-equiv="Refresh" content="2;url=/INTERHASH/Main.hash" >
</td>
</tr>
<tr>
<td align="center">
<input type="submit" value="확인">
</td>
</tr>
</table>
</form>
</c:if>

</body>
</html>