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
td{
width:150px; 
}
</style>
</head>
<body>
<center>
<h3>ȸ������</h3>
<hr/>
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
<td><input type="checkbox" name="delete"></td>
</tr>
</c:forEach>
<tr>
<td colspan="4"><div align="right"><input type="button" value="ȸ������"></div></td>
</tr>
</table>


</body>
</html>