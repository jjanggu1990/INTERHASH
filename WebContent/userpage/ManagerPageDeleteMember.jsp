<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
p{
padding:3px;
}

*{
color:#7A7A7A;
}
</style>
</head>
<body>
<center>
<h3>Ż��ȸ������</h3>
<hr/>
<table border="1">
<tr>
<td><b>email</b></td>
<td><b>Ż��¥</b></td>
<td><b>Ż�����</b></td>
</tr>
<c:forEach var="member" items="${array}">
<tr>
<td>
${member.drawalemail}
</td>
<td>
${member.drawaldate}
</td>
<td>
${member.drawalcause}
</td>
</tr>
</c:forEach>
</table>
<input type="button" value="������������" onclick="javascript:window.location='ManagerPage.hash'">

</body>
</html>