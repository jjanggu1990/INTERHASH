<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<c:if test="${sessionScope.key=='success'}">
<table>
  <tr>
    <td align="center">인증이 성공하셨습니다.${sessionScope.key}
    <input type="button" value="닫기" onclick="self.close()">
    </td>
  </tr>
</table>
</c:if>
<c:if test = "${sessionScope.key !='success' }">
<table>
  <tr>
    <td align="center">인증번호가 틀렸습니다.${sessionScope.key}
    <input type="button" value="닫기" onclick="self.close()">
    </td>
  </tr>
</table>
</c:if>
</body>
</html>