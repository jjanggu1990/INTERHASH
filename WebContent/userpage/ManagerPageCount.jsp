<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>������</title>
<script>
window.onload=function() {
document.getElementById('date').valueAsDate = new Date();
}
</script>
<style>
*{
color:#7A7A7A;
}
td{
width:100px; 
text-align:center;
}
</style>
</head>
<body>
<center>
<h3>���</h3>
<hr/>
<p>
<table border="1">
<tr>
<td><b>HashTag</b></td>
<td><b>���ƿ� ��</b></td>
<td><b>�Խñ� ��</b></td>
</tr>
<c:forEach var="hash" items="${array}">
<tr>
<td>
${hash.hashName}
</td>
<td>
${hash.hashLikeCount}
</td>
<td>
${hash.hashContentCount}
</td>

</tr>
</c:forEach>
</table>

<hr/>

<div align="right"><input type="date" name="date" id="date"></div>
<p>
<table border="1">
<tr height="30">
<td><b>�湮�� ��</b></td>
<td><b>�Խù� ��</b></td>
<td><b>���ƿ� ��</b></td>
</tr>

</table>
<input type="button" value="������������" onclick="javascript:window.location='ManagerPage.hash'">

</body>
</html>