<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
window.onload=function() {
document.getElementById('date').valueAsDate = new Date();
}
</script>
<style>
p{
padding:3px;
}
td{
width:200px; 
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
<tr height="30">
<td>HashTag</td>
<td>���ƿ� ��</td>
<td>�Խñ� ��</td>
</tr>
<tr>
<td>#����</td>
<td>45315��</td>
<td>2983��</td>
</tr>
</table>
</p>
<hr/>
<p>
<input type="date" name="date" id="date">
<table border="1">
<tr height="30">
<td>�湮�� ��</td>
<td>�Խù� ��</td>
<td>���ƿ� ��</td>
</tr>
<tr>
<td>12832823��</td>
<td>683923��</td>
<td>283715��</td>
</tr>
</table>
</p>
</body>
</html>