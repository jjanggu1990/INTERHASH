<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
function checkIt(){
		var userinput = eval("document.userinput");
		if(!userinput.id.value){
			alert("ID 를 입력하세요.");
			return false;
		}
		if(!userinput.passwd.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
메인페이지<br>
<form method="post" action="Board.hash" name="userinput" onSubmit="return checkIt()">
	ID<input type="text" name="id"/><br>
	PW<input type="password" name="passwd"/><br>
	<input type="submit" name="login" value="로그인"/>
</form>
	<input type="button" value="회원가입" onclick="javascript:window.location='SignupForm.hash'"/>
	<input type="button" value="비밀번호찾기" onclick="javascript:window.location='FindPasswordForm.hash'"/>
</body>
</html>