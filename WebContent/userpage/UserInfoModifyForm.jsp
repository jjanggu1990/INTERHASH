<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
*{
color:#7A7A7A;
}
:checked + label{
      /*   background-color: #FFC4FF; */
      color:#5AAEFF;
      }
</style>
<script>
function checkPass(){
	//alert(document.getElementById('e').value);
	if(document.getElementById('pass').value && document.getElementById('pass1').value){
	
	if(document.getElementById('pass').value != document.getElementById('pass1').value){
		
		document.getElementById('passwdchform').value = "비밀번호가 일치하지 않습니다";
		//alert("비밀번호를 동일하게 입력하세요");
		return false;
	}
	if(document.getElementById('pass').value == document.getElementById('pass1').value){
		
		document.getElementById('passwdchform').value = "비밀번호가 일치합니다";
		//alert("비밀번호를 동일하게 입력하세요");
		return false;
		}
	}
	else {
		if(document.getElementById('pass').value) {
		document.getElementById('passwdchform').value = "비밀번호가 일치하지 않습니다";
		}
	}
		
};
var checkflag = "false";

function check(field) {
if (checkflag == "false") {
  for (i = 0; i < field.length; i++) {
   field[i].checked = true;
  }
  checkflag = "true";
} else {
  for (i = 0; i < field.length; i++) {
   field[i].checked = false; 
  }
  checkflag = "false"; 
	}
};
function confirmnickname() {
	var userinput = eval("document.userinput");
	if(userinput.nickname.value=="") {
		alert("닉네임을 입력해 주세요");
		return false;
	}
	url="/INTERHASH/ConfirmNickname.hash?nickname=" + userinput.nickname.value;
	open(url, "confirmnik", "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200");
}

window.onload=function checkHash(){
	var hasharr = "${gethash}"; //hasharr에 저장됨
	var hash=document.getElementsByName("hash"); //해쉬체크박스 배열 가져옴

	
 	for(i=0;i<hash.length;i++){
		if(hasharr.indexOf(hash[i].value)!=-1){
			hash[i].checked=true;
		}
	} 
}
</script>
</head>
<body>
<center>
<form method="post" action="UserInfoModifyPro.hash" name="userinput" id="userinput">
<table>
<tr>
<td>email</td>
<td><input type="text" name="email" value="${c.getEmail()}" readonly/></td>
</tr>
<tr>
<td>password</td>
<td><input type="password" id="pass" name="passwd" onkeyup="checkPass()" onchange="checkPass()" required/></td>
<td rowspan="2"><input type="ladel" style="border: 0px;" id="passwdchform" value="" readonly/></td>
</tr>
<tr>
<td>password check</td>
<td><input type="password" id = "pass1" name="passwd1" onkeyup="checkPass()" onchange='checkPass()' required/></td>

</tr>

<tr>
<td>닉네임</td>
<td><input type="text" name="nickname" value="${c.getNickname()}"/></td>
<td><input type="button" value="중복검사" onClick="confirmnickname()"/></td>
</tr>
<tr>
<td>나이</td>
<td><input type="text" name="age" value="${c.getAge()}"/></td>
</tr>
<tr>
<td>favorite</td>
<td>관심있는 해시태그를 골라주세요!</td>
</tr>
</table>
	<input type=checkbox value="" onClick="this.value=check(this.form.hash)"><b>전체선택</b>
		<div style="overflow:auto; width:700px; height:300px;">		
			<table>
			<tr>
				<td> <input type="checkbox" name="hash" id="tkfkd" value="#사랑" style="display:none">
				<label for="tkfkd">#사랑</label></td>
				<td> <input type="checkbox" name="hash" id="sbtm" value="#뉴스" style="display:none">
				<label for="sbtm">#뉴스</label></td>
				<td> <input type="checkbox" name="hash" id="dbaj" value="#유머" style="display:none">
				<label for="dbaj">#유머</td>
				<td> <input type="checkbox" name="hash" id="dugod" value="#여행" style="display:none">
				<label for="dugod">#여행</label></td>
				<td> <input type="checkbox" name="hash" id="dudghk" value="#영화" style="display:none">
				<label for="dudghk">#영화</label></td>
				<td> <input type="checkbox" name="hash" id="ekdldjxm" value="#다이어트" style="display:none">
				<label for="ekdldjxm">#다이어트</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="zjvl" value="#커피" style="display:none">
				<label for="zjvl">#커피</label></td>
				<td> <input type="checkbox" name="hash" id="clsrn" value="#친구" style="display:none">
				<label for="clsrn">#친구</label></td>
				<td> <input type="checkbox" name="hash" id="dkrtptjfl" value="#악세서리" style="display:none">
				<label for="dkrtptjfl">#악세서리</label></td>
				<td> <input type="checkbox" name="hash" id="todghkfdydvna" value="#생활용품" style="display:none">
				<label for="todghkfdydvna">#생활용품</label></td>
				<td> <input type="checkbox" name="hash" id="dlsxjspt" value="#인터넷" style="display:none">
				<label for="dlsxjspt">#인터넷</label></td>
				<td> <input type="checkbox" name="hash" id="doq" value="#앱" style="display:none">
				<label for="doq">#앱</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="it" value="#IT" style="display:none">
				<label for="it">#IT</label></td>
				<td> <input type="checkbox" name="hash" id="tjdgud" value="#성형" style="display:none">
				<label for="tjdgud">#성형</label></td>
				<td> <input type="checkbox" name="hash" id="epdlffl" value="#데일리" style="display:none">
				<label for="epdlffl">#데일리</label></td>
				<td> <input type="checkbox" name="hash" id="rkwhr" value="#가족" style="display:none">
				<label for="rkwhr">#가족</label></td>
				<td> <input type="checkbox" name="hash" id="ehdanf" value="#동물" style="display:none">
				<label for="ehdanf">#동물</label></td>
				<td> <input type="checkbox" name="hash" id="dPtnf" value="#예술" style="display:none">
				<label for="dPtnf">#예술</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="votus" value="#패션" style="display:none">
				<label for="votus">#패션</label></td>
				<td> <input type="checkbox" name="hash" id="ehs" value="#돈" style="display:none">
				<label for="ehs">#돈</label></td>
				<td> <input type="checkbox" name="hash" id="dnsehd" value="#운동" style="display:none">
				<label for="dnsehd">#운동</label></td>
				<td> <input type="checkbox" name="hash" id="dmadkr" value="#음악" style="display:none">
				<label for="dmadkr">#음악</label></td>
				<td> <input type="checkbox" name="hash" id="zkem" value="#카드" style="display:none">
				<label for="zkem">#카드</label></td>
				<td> <input type="checkbox" name="hash" id="tv" value="#TV" style="display:none">
				<label for="tv">#TV</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="rufghs" value="#결혼" style="display:none">
				<label for="rufghs">#결혼</label></td>
				<td> <input type="checkbox" name="hash" id="tlaflgkr" value="#심리학" style="display:none">
				<label for="tlaflgkr">#심리학</label></td>
				<td> <input type="checkbox" name="hash" id="dyfl" value="#요리" style="display:none">
				<label for="dyfl">#요리</label></td>
				<td> <input type="checkbox" name="hash" id="zkapfk" value="#카메라" style="display:none">
				<label for="zkapfk">#카메라</label></td>
				<td> <input type="checkbox" name="hash" id="aktwlq" value="#맛집" style="display:none">
				<label for="aktwlq">#맛집</label></td>
				<td> <input type="checkbox" name="hash" id="skw" value="#낮" style="display:none">
				<label for="skw">#낮</label></td>

			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="wkdus" value="#자연" style="display:none">
				<label for="wkdus">#자연</label></td>
				<td> <input type="checkbox" name="hash" id="zoavld" value="#캠핑" style="display:none">
				<label for="zoavld">#캠핑</label></td>
				<td> <input type="checkbox" name="hash" id="rmadbd" value="#금융" style="display:none">
				<label for="rmadbd">#금융</label></td>
				<td> <input type="checkbox" name="hash" id="cor" value="#책" style="display:none">
				<label for="cor">#책</label></td>
				<td> <input type="checkbox" name="hash" id="duddj" value="#영어" style="display:none">
				<label for="duddj">#영어</label></td>
				<td> <input type="checkbox" name="hash" id="diy" value="#DIY" style="display:none">
				<label for="diy">#DIY</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="skasuckdl" value="#남녀차이" style="display:none">
				<label for="skasuckdl">#남녀차이</label></td>
				<td> <input type="checkbox" name="hash" id="eogkr" value="#대학" style="display:none">
				<label for="eogkr">#대학</label></td>
				<td> <input type="checkbox" name="hash" id="gkrtod" value="#학생" style="display:none">
				<label for="gkrtod">#학생</label></td>
				<td> <input type="checkbox" name="hash" id="rhemdgkrry" value="#고등학교" style="display:none">
				<label for="rhemdgkrry">#고등학교</label></td>
				<td> <input type="checkbox" name="hash" id="vlqn" value="#피부" style="display:none">
				<label for="vlqn">#피부</label></td>
				<td> <input type="checkbox" name="hash" id="apdlzmdjq" value="#메이크업" style="display:none">
				<label for="apdlzmdjq">#메이크업</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="wkwjsrj" value="#자전거" style="display:none">
				<label for="wkwjsrj">#자전거</label></td>
				<td> <input type="checkbox" name="hash" id="wkehdck" value="#자동차" style="display:none">
				<label for="wkehdck">#자동차</label></td>
				<td> <input type="checkbox" name="hash" id="dnpqxns" value="#웹툰" style="display:none">
				<label for="dnpqxns">#웹툰</label></td>
				<td> <input type="checkbox" name="hash" id="rkatjd" value="#감성" style="display:none">
				<label for="rkatjd">#감성</label></td>
				<td> <input type="checkbox" name="hash" id="dlftkd" value="#일상" style="display:none">
				<label for="dlftkd">#일상</label></td>
				<td> <input type="checkbox" name="hash" id="tpfzk" value="#셀카" style="display:none">
				<label for="tpfzk">#셀카</label></td>
			</tr>
			<tr>
				
				<td> <input type="checkbox" name="hash" id="vhxhtiq" value="#포토샵" style="display:none">
				<label for="vhxhtiq">#포토샵</label></td>
				<td> <input type="checkbox" name="hash" id="dyrk" value="#요가" style="display:none">
				<label for="dyrk">#요가</label></td>
				<td> <input type="checkbox" name="hash" id="rkdy" value="#가요" style="display:none">
				<label for="rkdy">#가요</label></td>
				<td> <input type="checkbox" name="hash" id="qbxl" value="#뷰티" style="display:none">
				<label for="qbxl">#뷰티</label></td>
				<td> <input type="checkbox" name="hash" id="wjdcl" value="#정치" style="display:none">
				<label for="wjdcl">#정치</label></td>
				<td> <input type="checkbox" name="hash" id="qka" value="#밤" style="display:none">
				<label for="qka">#밤</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="ckdwkr" value="#창작" style="display:none">
				<label for="ckdwkr">#창작</label></td>
				<td> <input type="checkbox" name="hash" id="eostm" value="#댄스" style="display:none">
				<label for="eostm">#댄스</label></td>
				<td> <input type="checkbox" name="hash" id="gotksanf" value="#해산물" style="display:none">
				<label for="gotksanf">#해산물</label></td>
				<td> <input type="checkbox" name="hash" id="zlwm" value="#키즈" style="display:none">
				<label for="zlwm">#키즈</label></td>
				<td> <input type="checkbox" name="hash" id="qnah" value="#부모" style="display:none">
				<label for="qnah">#부모</label></td>
				<td> <input type="checkbox" name="hash" id="zkvp" value="#카페" style="display:none">
				<label for="zkvp">#카페</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="ahqkdlf" value="#모바일" style="display:none">
				<label for="ahqkdlf">#모바일</label></td>
				<td> <input type="checkbox" name="hash" id="dkdlvhs" value="#아이폰" style="display:none">
				<label for="dkdlvhs">#아이폰</label></td>
				<td> <input type="checkbox" name="hash" id="dksemfhdlem" value="#안드로이드" style="display:none">
				<label for="dksemfhdlem">#안드로이드</label></td>
				<td> <input type="checkbox" name="hash" id="gpdjtmxkdlf" value="#헤어스타일" style="display:none">
				<label for="gpdjtmxkdlf">#헤어스타일</label></td>
				<td> <input type="checkbox" name="hash" id="aldyd" value="#미용" style="display:none">
				<label for="aldyd">#미용</label></td>
				<td> <input type="checkbox" name="hash" id="dmatlr" value="#음식" style="display:none">
				<label for="dmatlr">#음식</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="tlsqkf" value="#신발" style="display:none">
				<label for="tlsqkf">#신발</label></td>
				<td> <input type="checkbox" name="hash" id="tkwls" value="#사진" style="display:none">
				<label for="tkwls">#사진</label></td>
				<td> <input type="checkbox" name="hash" id="tnf" value="#술" style="display:none">
				<label for="tnf">#술</label></td>
				<td> <input type="checkbox" name="hash" id="tlrP" value="#시계" style="display:none">
				<label for="tlrP">#시계</label></td>
				<td> <input type="checkbox" name="hash" id="rkqkd" value="#가방" style="display:none">
				<label for="rkqkd">#가방</label></td>
				<td> <input type="checkbox" name="hash" id="tl" value="#시" style="display:none">
				<label for="tl">#시</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="altnf" value="#미술" style="display:none">
				<label for="altnf">#미술</label></td>
				<td> <input type="checkbox" name="hash" id="spdlf" value="#네일" style="display:none">
				<label for="spdlf">#네일</label></td>
				<td> <input type="checkbox" name="hash" id="xkxn" value="#타투" style="display:none">
				<label for="xkxn">#타투</label></td>
				<td> <input type="checkbox" name="hash" id="dlsxjspttmxk" value="#인터넷스타" style="display:none">
				<label for="dlsxjspttmxk">#인터넷스타</label></td>
				<td> <input type="checkbox" name="hash" id="cnrwp" value="#축제" style="display:none">
				<label for="cnrwp">#축제</label></td>
				<td> <input type="checkbox" name="hash" id="wjstlghl" value="#전시회" style="display:none">
				<label for="wjstlghl">#전시회</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="zmffjq" value="#클럽" style="display:none">
				<label for="zmffjq">#클럽</label></td>
				<td> <input type="checkbox" name="hash" id="quddnjs" value="#병원" style="display:none">
				<label for="quddnjs">#병원</label></td>
				<td> <input type="checkbox" name="hash" id="dmlfy" value="#건강" style="display:none">
				<label for="dmlfy">#건강</label></td>
				<td> <input type="checkbox" name="hash" id="elwkdls" value="#디자인" style="display:none">
				<label for="elwkdls">#디자인</label></td>
				<td> <input type="checkbox" name="hash" id="rhkgkr" value="#과학" style="display:none">
				<label for="rhkgkr">#과학</label></td>
				<td> <input type="checkbox" name="hash" id="tngkr" value="#수학" style="display:none">
				<label for="tngkr">#수학</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="djsdj" value="#언어" style="display:none">
				<label for="djsdj">#언어</label></td>
				<td> <input type="checkbox" name="hash" id="dlfma" value="#이름" style="display:none">
				<label for="dlfma">#이름</label></td>
				<td> <input type="checkbox" name="hash" id="ansghk" value="#문화" style="display:none">
				<label for="ansghk">#문화</label></td>
				<td> <input type="checkbox" name="hash" id="emfkak" value="#드라마" style="display:none">
				<label for="emfkak">#드라마</label></td>
				<td> <input type="checkbox" name="hash" id="dlsgud" value="#인형" style="display:none">
				<label for="dlsgud">#인형</label></td>
				<td> <input type="checkbox" name="hash" id="rhkwp" value="#과제" style="display:none">
				<label for="rhkwp">#과제</label></td>
			</tr>
			<tr>
			
				<td> <input type="checkbox" name="hash" id="aksghk" value="#만화" style="display:none">
				<label for="aksghk">#만화</label></td>
				<td> <input type="checkbox" name="hash" id="abwlzjf" value="#뮤지컬" style="display:none">
				<label for="abwlzjf">#뮤지컬</label></td>
				<td> <input type="checkbox" name="hash" id="godhl" value="#해외" style="display:none">
				<label for="godhl">#해외</label></td>
				<td> <input type="checkbox" name="hash" id="rnrso" value="#국내" style="display:none">
				<label for="rnrso">#국내</label></td>
				<td> <input type="checkbox" name="hash" id="qmfosem" value="#브랜드" style="display:none">
				<label for="qmfosem">#브랜드</label></td>
				<td> <input type="checkbox" name="hash" id="audvnd" value="#명품" style="display:none">
				<label for="audvnd">#명품</label></td>
			</tr>
			<tr>
			
				<td> <input type="checkbox" name="hash" id="dmafy" value="#음료" style="display:none">
				<label for="dmafy">#음료</label></td>
				<td> <input type="checkbox" name="hash" id="tmvhcm" value="#스포츠" style="display:none">
				<label for="tmvhcm">#스포츠</label></td>
				<td> <input type="checkbox" name="hash" id="rpdla" value="#게임" style="display:none">
				<label for="rpdla">#게임</label></td>
				<td> <input type="checkbox" name="hash" id="zjavbxj" value="#컴퓨터" style="display:none">
				<label for="zjavbxj">#컴퓨터</label></td>
				<td> <input type="checkbox" name="hash" id="qpdlzjfl" value="#베이커리" style="display:none">
				<label for="qpdlzjfl">#베이커리</label></td>
				<td> <input type="checkbox" name="hash" id="tndjq" value="#수업" style="display:none">
				<label for="tndjq">#수업</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="tkrPwjf" value="#사계절" style="display:none">
				<label for="tkrPwjf">#사계절</label></td>
				<td> <input type="checkbox" name="hash" id="qha" value="#봄" style="display:none">
				<label for="qha">#봄</label></td>
				<td> <input type="checkbox" name="hash" id="dufma" value="#여름" style="display:none">
				<label for="dufma">#여름</label></td>
				<td> <input type="checkbox" name="hash" id="rkdmf" value="#가을" style="display:none">
				<label for="rkdmf">#가을</label></td>
				<td> <input type="checkbox" name="hash" id="rudnf" value="#겨울" style="display:none">
				<label for="rudnf">#겨울</label></td>
				<td> <input type="checkbox" name="hash" id="dusdPdls" value="#연예인" style="display:none">
				<label for="dusdPdls">#연예인</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="antnf" value="#무술" style="display:none">
				<label for="antnf">#무술</label></td>
				<td> <input type="checkbox" name="hash" id="dkrrl" value="#악기" style="display:none">
				<label for="dkrrl">#악기</label></td>
				<td> <input type="checkbox" name="hash" id="rkawjd" value="#감정" style="display:none">
				<label for="rkawjd">#감정</label></td>
				<td> <input type="checkbox" name="hash" id="claeo" value="#침대" style="display:none">
				<label for="claeo">#침대</label></td>
				<td> <input type="checkbox" name="hash" id="dlsxpfldj" value="#인테리어" style="display:none">
				<label for="dlsxpfldj">#인테리어</label></td>
				<td> <input type="checkbox" name="hash" id="wlq" value="#집" style="display:none">
				<label for="wlq">#집</label></td>
		</tr>
		<tr>
				<td> <input type="checkbox" name="hash" id="ahepf" value="#모델" style="display:none">
				<label for="ahepf">#모델</label></td>
				<td> <input type="checkbox" name="hash" id="dksrud" value="#안경" style="display:none">
				<label for="dksrud">#안경</label></td>
				<td> <input type="checkbox" name="hash" id="rktn" value="#가수" style="display:none">
				<label for="rktn">#가수</label></td>
				<td> <input type="checkbox" name="hash" id="qodn" value="#배우" style="display:none">
				<label for="qodn">#배우</label></td>
				<td> <input type="checkbox" name="hash" id="dusrmr" value="#연극" style="display:none">
				<label for="dusrmr">#연극</label></td>
				<td> <input type="checkbox" name="hash" id="toqur" value="#새벽" style="display:none">
				<label for="toqur">#새벽</label></td>
			</tr>
			</table>
		</div>
	<input type="submit" value="정보수정"><input type="button" value="취소" onclick="javascript:window.location='Board.hash'">
	<input type="button" value="회원탈퇴" onclick="javascript:window.location='WithdrawalForm.hash'">
</form>
</center>



</body>
</html>