<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>������</title>
<style>
*{
color:#7A7A7A;
}
p{
padding:3px;
}
/* td{
width:100px; 
} */
</style>
</head>
<body>
<center>
<h3>ȸ������</h3>
<hr/>
<form method="post" action="ManagerPageMemberPro.hash">
<table border="1">
<tr>
<td><b>email</b></td>
<td><b>nickname</b></td>
<td><b>�Ű�Ƚ��</b></td>
<td><b>ȸ������</b></td>
</tr>

<c:forEach var="member" items="${array}">
<tr>
<td>
${member.email}
</td>
<td>
${member.nickname}
</td>
<td>
${member.reportcount}
</td>
<td><input type="checkbox" name="delete" value="${member.email}"></td>
</tr>
</c:forEach>
</table>
<div align="center"><input type="submit" value="ȸ������"></div>
</form>
<input type="button" value="������������" onclick="javascript:window.location='ManagerPage.hash'">
</body>
</html>