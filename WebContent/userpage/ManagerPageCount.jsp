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

hr{
padding:1px;
}
td{
width:200px; 
text-align:center;
}
div{
position:relative;
right:200px;

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
<td><b>HashTag</b></td>
<td><b>���ƿ� ��</b></td>
<td><b>�Խñ� ��</b></td>
</tr>
<tr>
<td>#����</td>
<td>45315��</td>
<td>2983��</td>
</tr>
</table>
</p>
<hr/>

<div align="right"><input type="date" name="date" id="date"></div>
<p>
<table border="1">
<tr height="30">
<td><b>�湮�� ��</b></td>
<td><b>�Խù� ��</b></td>
<td><b>���ƿ� ��</b></td>
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