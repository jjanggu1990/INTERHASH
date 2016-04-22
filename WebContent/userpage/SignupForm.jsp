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
			
			document.getElementById('passwdchform').value = "일치하지 않습니다";
			//alert("비밀번호를 동일하게 입력하세요");
			return false;
		}
		if(document.getElementById('pass').value == document.getElementById('pass1').value){
			
			document.getElementById('passwdchform').value = "일치합니다";
			//alert("비밀번호를 동일하게 입력하세요");
			return false;
		}
	};
	</script>
<style>

</style>
</head>
<body>
회원가입 폼

<form method="post" action="SignupPro.hash" name="userinput" onSubmit="return checkIt()">
	email <input type="text" name="email" id="e" /><input type="button" value="인증하기" /><br>
	email 인증번호 <input type="text" name="emailnumber"/><input type="button" value="확인"/><br>
	나이 <input type="text" name="age"/><br>
	password : <input type="password" id="pass" name="passwd" onkeyup="checkPass()" onchange="checkPass()"/><br>
	password check : <input type="password" id = "pass1" name="passwd1" onkeyup="checkPass()" onchange='checkPass()' /><input type="button" id="passwdchform" value="a"/><br>
	닉네임 : <input type="text" name="nickname" /><input type="button" value="중복검사"/><br>
	favorite : 관심있는 태그를 골라주세요!<br>
		<div style="overflow:scroll; width:700px; height:600px;">
		
		<div><input type="checkbox" id="allcheck"><b>전체선택</b></div>
		
			<table>
			<tr>
				<td> <input type="checkbox" name="favorite" value="tkfkd">사랑</td>
				<td> <input type="checkbox" name="favorite" value="dbaj">유머</td>
				<td> <input type="checkbox" name="favorite" value="dugod">여행</td>
				<td> <input type="checkbox" name="favorite" value="dudghk">영화</td>
				<td> <input type="checkbox" name="favorite" value="dltb">이슈</td>
				<td> <input type="checkbox" name="favorite" value="ekdldjxm">다이어트</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="dnwjd">우정</td>
				<td> <input type="checkbox" name="favorite" value="clsrn">친구</td>
				<td> <input type="checkbox" name="favorite" value="dkrtptjfl">악세서리</td>
				<td> <input type="checkbox" name="favorite" value="todghkfdydvna">생활용품</td>
				<td> <input type="checkbox" name="favorite" value="dlsxjspt">인터넷</td>
				<td> <input type="checkbox" name="favorite" value="Qkd">빵</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="it">IT</td>
				<td> <input type="checkbox" name="favorite" value="sbtm">뉴스</td>
				<td> <input type="checkbox" name="favorite" value="epdlfflfnr">데일리룩</td>
				<td> <input type="checkbox" name="favorite" value="rkwhr">가족</td>
				<td> <input type="checkbox" name="favorite" value="qksfuehdanf">반려동물</td>
				<td> <input type="checkbox" name="favorite" value="dPtnf">예술</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="votus">패션</td>
				<td> <input type="checkbox" name="favorite" value="ehs">돈</td>
				<td> <input type="checkbox" name="favorite" value="dnsehd">운동</td>
				<td> <input type="checkbox" name="favorite" value="dmadkr">음악</td>
				<td> <input type="checkbox" name="favorite" value="zkem">카드</td>
				<td> <input type="checkbox" name="favorite" value="tv">TV</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="rufghs">결혼</td>
				<td> <input type="checkbox" name="favorite" value="tlaflgkr">심리학</td>
				<td> <input type="checkbox" name="favorite" value="dyfl">요리</td>
				<td> <input type="checkbox" name="favorite" value="zkapfk">카메라</td>
				<td> <input type="checkbox" name="favorite" value="aktwlq">맛집</td>
				<td> <input type="checkbox" name="favorite" value="dirn">야구</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="cnrrn">축구</td>
				<td> <input type="checkbox" name="favorite" value="zoavld">캠핑</td>
				<td> <input type="checkbox" name="favorite" value="rmadbd">금융</td>
				<td> <input type="checkbox" name="favorite" value="cor">책</td>
				<td> <input type="checkbox" name="favorite" value="duddj">영어</td>
				<td> <input type="checkbox" name="favorite" value="diy">DIY</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="skasuckdl">남녀차이</td>
				<td> <input type="checkbox" name="favorite" value="eogkrtodghkf">대학생활</td>
				<td> <input type="checkbox" name="favorite" value="gkrtod">학생</td>
				<td> <input type="checkbox" name="favorite" value="rhemdgkrry">고등학교</td>
				<td> <input type="checkbox" name="favorite" value="vlqn">피부</td>
				<td> <input type="checkbox" name="favorite" value="apdlzmdjq">메이크업</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="wkwjsrj">자전거</td>
				<td> <input type="checkbox" name="favorite" value="wkehdck">자동차</td>
				<td> <input type="checkbox" name="favorite" value="dnpqxns">웹툰</td>
				<td> <input type="checkbox" name="favorite" value="rkatjd">감성</td>
				<td> <input type="checkbox" name="favorite" value="dlftkd">일상</td>
				<td> <input type="checkbox" name="favorite" value="tpfzk">셀카</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="vlfxj">필터</td>
				<td> <input type="checkbox" name="favorite" value="vhxhtiq">포토샵</td>
				<td> <input type="checkbox" name="favorite" value="dyrk">요가</td>
				<td> <input type="checkbox" name="favorite" value="rkdy">가요</td>
				<td> <input type="checkbox" name="favorite" value="qbxl">뷰티</td>
				<td> <input type="checkbox" name="favorite" value="wjdcl">정치</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="ckdwkr">창작</td>
				<td> <input type="checkbox" name="favorite" value="eostm">댄스</td>
				<td> <input type="checkbox" name="favorite" value="dksan">안무</td>
				<td> <input type="checkbox" name="favorite" value="zlwm">키즈</td>
				<td> <input type="checkbox" name="favorite" value="qnah">부모</td>
				<td> <input type="checkbox" name="favorite" value="zkvp">카페</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="ahqkdlf">모바일</td>
				<td> <input type="checkbox" name="favorite" value="dkdlvhs">아이폰</td>
				<td> <input type="checkbox" name="favorite" value="dksemfhdlem">안드로이드</td>
				<td> <input type="checkbox" name="favorite" value="gpdjtmxkdlf">헤어스타일</td>
				<td> <input type="checkbox" name="favorite" value="aldyd">미용</td>
				<td> <input type="checkbox" name="favorite" value="dmatlr">음식</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="tlsqkf">신발</td>
				<td> <input type="checkbox" name="favorite" value="dnpeld">웨딩</td>
				<td> <input type="checkbox" name="favorite" value="tnf">술</td>
				<td> <input type="checkbox" name="favorite" value="tlrP">시계</td>
				<td> <input type="checkbox" name="favorite" value="rkqkd">가방</td>
				<td> <input type="checkbox" name="favorite" value="tl">시</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="altnf">미술</td>
				<td> <input type="checkbox" name="favorite" value="spdlf">네일</td>
				<td> <input type="checkbox" name="favorite" value="xkxn">타투</td>
				<td> <input type="checkbox" name="favorite" value="dlsxjspttmxk">인터넷스타</td>
				<td> <input type="checkbox" name="favorite" value="cnrwp">축제</td>
				<td> <input type="checkbox" name="favorite" value="wjstlghl">전시회</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="zmffjq">클럽</td>
				<td> <input type="checkbox" name="favorite" value="quddnjs">병원</td>
				<td> <input type="checkbox" name="favorite" value="dmlfy">건강</td>
				<td> <input type="checkbox" name="favorite" value="elwkdls">디자인</td>
				<td> <input type="checkbox" name="favorite" value="rhkgkr">과학</td>
				<td> <input type="checkbox" name="favorite" value="tngkr">수학</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="djsdj">언어</td>
				<td> <input type="checkbox" name="favorite" value="dlfma">이름</td>
				<td> <input type="checkbox" name="favorite" value="wkdus">자연</td>
				<td> <input type="checkbox" name="favorite" value="wkdsksrka">장난감</td>
				<td> <input type="checkbox" name="favorite" value="dlsgud">인형</td>
				<td> <input type="checkbox" name="favorite" value="rhkwp">과제&숙제</td>
			</tr>
			<tr>
			
				<td> <input type="checkbox" name="favorite" value="aksghk">만화</td>
				<td> <input type="checkbox" name="favorite" value="abwlzjf">뮤지컬</td>
				<td> <input type="checkbox" name="favorite" value="godhl">해외</td>
				<td> <input type="checkbox" name="favorite" value="rnrso">국내</td>
				<td> <input type="checkbox" name="favorite" value="qmfosem">브랜드</td>
				<td> <input type="checkbox" name="favorite" value="audvnd">명품</td>
			</tr>
			<tr>
			
				<td> <input type="checkbox" name="favorite" value="dmafy">음료</td>
				<td> <input type="checkbox" name="favorite" value="tmvhcm">스포츠</td>
				<td> <input type="checkbox" name="favorite" value="rpdla">게임</td>
				<td> <input type="checkbox" name="favorite" value="zjavbxj">컴퓨터</td>
				<td> <input type="checkbox" name="favorite" value="qpdlzjfl">베이커리</td>
				<td> <input type="checkbox" name="favorite" value="rkddml">강의&수업</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="tkrPwjf">사계절</td>
				<td> <input type="checkbox" name="favorite" value="qha">봄</td>
				<td> <input type="checkbox" name="favorite" value="dufma">여름</td>
				<td> <input type="checkbox" name="favorite" value="rkdmf">가을</td>
				<td> <input type="checkbox" name="favorite" value="rudnf">겨울</td>
				<td> <input type="checkbox" name="favorite" value="dusdPdls">연예인</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="antnf">무술</td>
				<td> <input type="checkbox" name="favorite" value="dkrrl">악기</td>
				<td> <input type="checkbox" name="favorite" value="rhdvh">공포</td>
				<td> <input type="checkbox" name="favorite" value="claeo">침대</td>
				<td> <input type="checkbox" name="favorite" value="akfkxhs">마라톤</td>
				<td> <input type="checkbox" name="favorite" value="wlq">집</td>
		</tr>
		<tr>
				<td> <input type="checkbox" name="favorite" value="ahepf">모델</td>
				<td> <input type="checkbox" name="favorite" value="rhfvm">골프</td>
				<td> <input type="checkbox" name="favorite" value="rktn">가수</td>
				<td> <input type="checkbox" name="favorite" value="qodn">배우</td>
				<td> <input type="checkbox" name="favorite" value="rkaehr">감독</td>
				<td> <input type="checkbox" name="favorite" value="dusrmr">연극</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="dlsxpfldj">인테리어</td>
				<td> <input type="checkbox" name="favorite" value="rkrn">가구</td>
				<td> <input type="checkbox" name="favorite" value="emfkak">드라마</td>
				<td> <input type="checkbox" name="favorite" value="dksrud">안경</td>
				<td> <input type="checkbox" name="favorite" value="tjdgud">성형</td>
				<td> <input type="checkbox" name="favorite" value="zjvl">커피</td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="favorite" value="gotksanf">해산물</td>
				<td> <input type="checkbox" name="favorite" value="qnf">불</td>
				<td> <input type="checkbox" name="favorite" value="anf">물</td>
				<td> <input type="checkbox" name="favorite" value="skan">나무</td>
				<td> <input type="checkbox" name="favorite" value="gksmf">하늘</td>
				<td> <input type="checkbox" name="favorite" value="wkdus">자연</td>
				</tr>
			</table>
		</div>
	<input type="submit" value="가입"><input type="button" value="취소">
</form>



</body>
</html>