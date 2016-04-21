<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
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
		
		alert(userinput.getElementById('pass').value);
		if(userinput.getElementById('pass').value != userinput.getElementById('pass1').value){
			alert("비밀번호를 동일하게 입력하세요");
			return false;
		}
		return true;
	};
	
	function checkPass(){
		//alert(document.getElementById('e').value);
		if(document.getElementById('pass').value != document.getElementById('pass1').value){
			alert("비밀번호를 동일하게 입력하세요");
			return false;
		} 
	};
/* 		$(function(){
			$("#allcheck").click(function(){
				if($("#allcheck").prop("checked")) {
					$("input[type=checkbox]").prop("checked",true);
				} else {
					$("input[type=checkbox]").prop("checked",false);
				}
			})
		}) */
	</script>
<style>

</style>
</head>
<body>
회원가입 폼

<form method="post" action="SignupPro.hash" name="userinput" onSubmit="return checkIt()">
	email <input type="text" name="email" id="e" /><input type="button" value="인증하기" /><br>
	email 인증번호 <input type="text" name="emailnumber"/><input type="button" value="확인"/><br>
	password : <input type="password" id="pass" name="passwd" /><br>
	password check : <input type="password" id = "pass1" name="passwd1" onchange="checkPass()" /><br>
	닉네임 : <input type="text" name="nickname" /><input type="button" value="중복검사"/><br>
	favorite : 관심있는 태그를 골라주세요!<br>
		<div style="overflow:scroll; width:700px; height:600px;">
		
		<div><input type="checkbox" id="allcheck"><b>전체선택</b></div>
		
			<table>
			<tr>
				<td> <input type="checkbox" id="love" value="love">사랑과 연애</td>
				<td> <input type="checkbox" id="" value="love">유머</td>
				<td> <input type="checkbox" id="love" value="love">여행</td>
				<td> <input type="checkbox" id="love" value="love">영화</td>
				<td> <input type="checkbox" id="love" value="love">이슈</td>
				<td> <input type="checkbox" id="love" value="love">다이어트</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">IT</td>
				<td> <input type="checkbox" id="love" value="love">뉴스</td>
				<td> <input type="checkbox" id="love" value="love">데일리룩</td>
				<td> <input type="checkbox" id="love" value="love">가족</td>
				<td> <input type="checkbox" id="love" value="love">반려동물</td>
				<td> <input type="checkbox" id="love" value="love">예술</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">여성패션</td>
				<td> <input type="checkbox" id="love" value="love">남성패션</td>
				<td> <input type="checkbox" id="love" value="love">운동</td>
				<td> <input type="checkbox" id="love" value="love">음악</td>
				<td> <input type="checkbox" id="love" value="love">팬아트</td>
				<td> <input type="checkbox" id="love" value="love">TV</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">결혼생활</td>
				<td> <input type="checkbox" id="love" value="love">심리학</td>
				<td> <input type="checkbox" id="love" value="love">요리</td>
				<td> <input type="checkbox" id="love" value="love">카메라</td>
				<td> <input type="checkbox" id="love" value="love">맛집 탐방</td>
				<td> <input type="checkbox" id="love" value="love">야구</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">축구</td>
				<td> <input type="checkbox" id="love" value="love">캠핑</td>
				<td> <input type="checkbox" id="love" value="love">금융</td>
				<td> <input type="checkbox" id="love" value="love">책</td>
				<td> <input type="checkbox" id="love" value="love">영어</td>
				<td> <input type="checkbox" id="love" value="love">DIY</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">남녀차이</td>
				<td> <input type="checkbox" id="love" value="love">대학생활</td>
				<td> <input type="checkbox" id="love" value="love">학생</td>
				<td> <input type="checkbox" id="love" value="love">고등학교</td>
				<td> <input type="checkbox" id="love" value="love">피부</td>
				<td> <input type="checkbox" id="love" value="love">메이크업</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">자전거</td>
				<td> <input type="checkbox" id="love" value="love">자동차</td>
				<td> <input type="checkbox" id="love" value="love">웹툰</td>
				<td> <input type="checkbox" id="love" value="love">감성</td>
				<td> <input type="checkbox" id="love" value="love">일상</td>
				<td> <input type="checkbox" id="love" value="love">셀카</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">필터</td>
				<td> <input type="checkbox" id="love" value="love">포토샵</td>
				<td> <input type="checkbox" id="love" value="love">요가</td>
				<td> <input type="checkbox" id="love" value="love">가요</td>
				<td> <input type="checkbox" id="love" value="love">뷰티</td>
				<td> <input type="checkbox" id="love" value="love">정치</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">창작</td>
				<td> <input type="checkbox" id="love" value="love">댄스</td>
				<td> <input type="checkbox" id="love" value="love">안무</td>
				<td> <input type="checkbox" id="love" value="love">키즈</td>
				<td> <input type="checkbox" id="love" value="love">부모</td>
				<td> <input type="checkbox" id="love" value="love">카페</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">모바일 앱</td>
				<td> <input type="checkbox" id="love" value="love">아이폰</td>
				<td> <input type="checkbox" id="love" value="love">안드로이드</td>
				<td> <input type="checkbox" id="love" value="love">헤어스타일</td>
				<td> <input type="checkbox" id="love" value="love">미용</td>
				<td> <input type="checkbox" id="love" value="love">음식</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">신발</td>
				<td> <input type="checkbox" id="love" value="love">웨딩</td>
				<td> <input type="checkbox" id="love" value="love">술</td>
				<td> <input type="checkbox" id="love" value="love">시계</td>
				<td> <input type="checkbox" id="love" value="love">가방</td>
				<td> <input type="checkbox" id="love" value="love">시</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">미술</td>
				<td> <input type="checkbox" id="love" value="love">네일</td>
				<td> <input type="checkbox" id="love" value="love">타투</td>
				<td> <input type="checkbox" id="love" value="love">인터넷스타</td>
				<td> <input type="checkbox" id="love" value="love">축제</td>
				<td> <input type="checkbox" id="love" value="love">전시회</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">클럽</td>
				<td> <input type="checkbox" id="love" value="love">음주가무</td>
				<td> <input type="checkbox" id="love" value="love">의료</td>
				<td> <input type="checkbox" id="love" value="love">디자인</td>
				<td> <input type="checkbox" id="love" value="love">과학</td>
				<td> <input type="checkbox" id="love" value="love">수학</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">언어</td>
				<td> <input type="checkbox" id="love" value="love">이름</td>
				<td> <input type="checkbox" id="love" value="love">자연</td>
				<td> <input type="checkbox" id="love" value="love">장난감</td>
				<td> <input type="checkbox" id="love" value="love">인형</td>
				<td> <input type="checkbox" id="love" value="love">메이저리그</td>
			</tr>
			<tr>
			
				<td> <input type="checkbox" id="love" value="love">만화</td>
				<td> <input type="checkbox" id="love" value="love">뮤지컬</td>
				<td> <input type="checkbox" id="love" value="love">해외</td>
				<td> <input type="checkbox" id="love" value="love">국내</td>
				<td> <input type="checkbox" id="love" value="love">브랜드</td>
				<td> <input type="checkbox" id="love" value="love">명품</td>
			</tr>
			<tr>
			
				<td> <input type="checkbox" id="love" value="love">음료</td>
				<td> <input type="checkbox" id="love" value="love">스포츠</td>
				<td> <input type="checkbox" id="love" value="love">게임</td>
				<td> <input type="checkbox" id="love" value="love">컴퓨터</td>
				<td> <input type="checkbox" id="love" value="love">겨울스포츠</td>
				<td> <input type="checkbox" id="love" value="love">여름스포츠</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">사계절</td>
				<td> <input type="checkbox" id="love" value="love">봄</td>
				<td> <input type="checkbox" id="love" value="love">여름</td>
				<td> <input type="checkbox" id="love" value="love">가을</td>
				<td> <input type="checkbox" id="love" value="love">겨울</td>
				<td> <input type="checkbox" id="love" value="love">연예인</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">무술</td>
				<td> <input type="checkbox" id="love" value="love">피아노</td>
				<td> <input type="checkbox" id="love" value="love">공포</td>
				<td> <input type="checkbox" id="love" value="love">좀비</td>
				<td> <input type="checkbox" id="love" value="love">마라톤</td>
				<td> <input type="checkbox" id="love" value="love">푸드스타일링</td>
		</tr>
		<tr>
				<td> <input type="checkbox" id="love" value="love">모델</td>
				<td> <input type="checkbox" id="love" value="love">골프</td>
				<td> <input type="checkbox" id="love" value="love">가수</td>
				<td> <input type="checkbox" id="love" value="love">배우</td>
				<td> <input type="checkbox" id="love" value="love">감독</td>
				<td> <input type="checkbox" id="love" value="love">연극</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">그릇</td>
				<td> <input type="checkbox" id="love" value="love">가구</td>
				<td> <input type="checkbox" id="love" value="love">드라마</td>
				<td> <input type="checkbox" id="love" value="love">안경</td>
				<td> <input type="checkbox" id="love" value="love">결혼</td>
				<td> <input type="checkbox" id="love" value="love">커피</td>
			</tr>
			<tr>
				<td> <input type="checkbox" id="love" value="love">해산물</td>
				<td> <input type="checkbox" id="love" value="love">불</td>
				<td> <input type="checkbox" id="love" value="love">물</td>
				<td> <input type="checkbox" id="love" value="love">나무</td>
				<td> <input type="checkbox" id="love" value="love">하늘</td>
				<td> <input type="checkbox" id="love" value="love">자연</td>
				</tr>
			</table>
		</div>
	<input type="submit" value="가입"><input type="button" value="취소">
</form>



</body>
</html>