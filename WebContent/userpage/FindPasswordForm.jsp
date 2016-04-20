<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> NewTab </title>
<script>
	function checkIt(){
		var userinfo = eval("document.useremail");
		if(!userinfo.email.value){
			alert("이메일주소를 입력해주세요.")
			return false;
		}
		return true;
		
	}

</script>
</head>
<body>
비밀번호 찾기 폼
<form method="post" name="useremail" action="FindPasswordPro.hash" onSubmit="return checkIt()">
	<input type="text" name="email">
	<input type="submit" name="confirm" value="비밀번호찾기">
</form>
</body>
</html>