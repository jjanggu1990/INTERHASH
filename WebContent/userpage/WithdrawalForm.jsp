<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
function begin() {
	document.myform.passwd.focus();
}
function checkIt() {
	if(!document.myform.passwd.value) {
		alert("비밀번호를 입력하지 않으셨습니다.");
		document.myform.passwd.focus();
		return false;
	}
}
</script>
</head>
<body>
<center>
<form method="post" action="WithdrawalPro.hash" onsubmit="return checkIt()">
<table>
<tr>
<td>email</td>
<td><input type="text" name="email" value="${c.getEmail()}" readonly/></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name="passwd"></td>
</tr>
<tr>
<td>탈퇴사유</td>
<td><input type="text" name="cause"></td>
</tr>
</table>
<input type="submit" value="탈퇴하기"><input type="button" value="취소" onclick="javascript:window.location='Board.hash'">
</form>
</body>
</html>