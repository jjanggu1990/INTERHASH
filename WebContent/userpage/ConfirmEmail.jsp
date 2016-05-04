<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Email</title>
<style>
*{
color:#7A7A7A;
}
</style>
</head>
<body>
<c:if test="${check!=-1}">
<table>
  <tr>
    <p><td align="center">${email}은 이미 사용중인 이메일입니다.</p>
    <p>다른 이메일을 사용해주세요.</p>
    <input type="button" value="닫기" onclick="self.close()">
    </td>
    
  </tr>
</table>
</c:if>
<c:if test="${check==-1}">
<form method="post" action="SendEmail.hash">
<table>
  <tr>
    <td align="center">
      <p>사용할수 있는 이메일입니다. </p>
      <input type="submit" value="인증번호 전송" >
    </td>
  </tr>
</table>
</form>
</c:if>
</body>
</html>
