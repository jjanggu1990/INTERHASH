<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	function checkIt(){
		var userinput = eval("document.userinput");
		if(!userinput.email.value){
			alert("Email을 입력하세요.");
			return false;
		}
		if(!userinput.passwd.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if(!userinput.passwd1.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if(!userinput.age.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if(!userinput.nickname.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
회원가입 폼

<form method="post" action="SignupPro.hash" name="userinput" onSubmit="return checkIt()">
	email : <input type="text" name="email"><input type="button" value="중복검사"><br>
	password : <input type="password" name="passwd"><br>
	password check : <input type="password" name="passwd1"><br>
	나이 : <input type="text" name="age"><br>
	별명 : <input type="text" name="nickname"><input type="button" value="중복검사"><br>

		<div style="overflow:scroll; width:180px; height:100px;">
			<div>
				<span> <a href="http://www.naver.com">#책</a>
				</span> <span> <a href="http://www.naver.com">#반려동물</a>
				</span> <span> <a href="http://www.naver.com">#패션</a>
				</span>
			</div>
			<div>
				<span> <a href="http://www.naver.com">#책</a>
				</span> <span> <a href="http://www.naver.com">#반려동물</a>
				</span> <span> <a href="http://www.naver.com">#패션</a>
				</span>
			</div>
			<div>
				<span> <a href="http://www.naver.com">#책</a>
				</span> <span> <a href="http://www.naver.com">#반려동물</a>
				</span> <span> <a href="http://www.naver.com">#패션</a>
				</span>
			</div>
			<div>
				<span> <a href="http://www.naver.com">#책</a>
				</span> <span> <a href="http://www.naver.com">#반려동물</a>
				</span> <span> <a href="http://www.naver.com">#패션</a>
				</span>
			</div>
			<div>
				<span> <a href="http://www.naver.com">#책</a>
				</span> <span> <a href="http://www.naver.com">#반려동물</a>
				</span> <span> <a href="http://www.naver.com">#패션</a>
				</span>
			</div>
			<div>
				<span> <a href="http://www.naver.com">#책</a>
				</span> <span> <a href="http://www.naver.com">#반려동물</a>
				</span> <span> <a href="http://www.naver.com">#패션</a>
				</span>
			</div>
			<div>
				<span> <a href="http://www.naver.com">#책</a>
				</span> <span> <a href="http://www.naver.com">#반려동물</a>
				</span> <span> <a href="http://www.naver.com">#패션</a>
				</span>
			</div>
		</div>
	<input type="submit" value="가입"><input type="button" value="취소">
</form>



</body>
</html>