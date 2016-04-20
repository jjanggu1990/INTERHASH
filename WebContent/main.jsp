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
/* 		if(!userinput.name.value){
			alert("사용자의 이름을 입력하세요.");
			return false;
		}
		if(!userinput.jumin1.value || !userinput.jumin2.value){
			alert("주민등록번호를 입력하세요.");
			return false;
		} */
		return true;
	}
</script>
</head>
<body>
메인페이지<br>
<form method="post" action="board.hash" name="userinput" onSubmit="return checkIt()">
	ID<input type="text" name="id"/><br>
	PW<input type="password" name ="passwd"/><br>
	<input type="submit" name="login" value="로그인"/>
	<input type="button" value="회원가입"/>
	<input type="button" value="비밀번호찾기"/>
</form>
</body>
</html>