<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
#header{
 padding:50px;
 width:100%;
 height:130px;
}
#body{
padding:10px;
}
</style>
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
	function confirmemail(userinput) {
		if(userinput.email.value=="") {
			alert("Email을 입력하세요");
			return;
		
		url="/INTERHASH/ConfirmEmail.hash";
		open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200");
	}
	
	function checkPass(){
		//alert(document.getElementById('e').value);
		
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
	</script>

<style>
*{
color:#7A7A7A;
}
:checked + label{
        background-color: #FFC4FF;
      }
</style>
</head>
<body>
<div id="header">
<center><img src="logo/logo.jpg"></center></div>
<hr/>
<center>
<form method="post" action="SignupPro.hash" name="userinput" onSubmit="return checkIt()">
<table>
<tr>
<td>email</td>
<td><input type="text" name="email" id="email"/></td>
<td><input type="button" value="인증하기" onclick="confirmemail(this.form)"/></td>
</tr>
<tr>
<td>email인증번호</td>
<td><input type="text" name="emailnumber"/></td>
<td><input type="button" value="확인"/><br></td>
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
<td><input type="text" name="nickname" /></td>
<td><input type="button" value="중복검사"/></td>
</tr>
<tr>
<td>나이</td>
<td><input type="text" name="age" id="age" /></td>
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
				<td> <input type="checkbox" name="hash" id="tkfkd" value="tkfkd" style="display:none">
				<label for="tkfkd">#사랑</label></td>
				<td> <input type="checkbox" name="hash" id="dltb" value="dltb" style="display:none">
				<label for="dltb">#이슈와 뉴스</label></td>
				<td> <input type="checkbox" name="hash" id="dbaj" value="dbaj" style="display:none">
				<label for="dbaj">#유머</td>
				<td> <input type="checkbox" name="hash" id="dugod" value="dugod" style="display:none">
				<label for="dugod">#여행</label></td>
				<td> <input type="checkbox" name="hash" id="dudghk" value="dudghk" style="display:none">
				<label for="dudghk">#영화</label></td>
				<td> <input type="checkbox" name="hash" id="ekdldjxm" value="ekdldjxm" style="display:none">
				<label for="ekdldjxm">#다이어트</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="zjvl" value="zjvl" style="display:none">
				<label for="zjvl">#커피</label></td>
				<td> <input type="checkbox" name="hash" id="clsrn" value="clsrn" style="display:none">
				<label for="clsrn">#친구</label></td>
				<td> <input type="checkbox" name="hash" id="dkrtptjfl" value="dkrtptjfl" style="display:none">
				<label for="dkrtptjfl">#악세서리</label></td>
				<td> <input type="checkbox" name="hash" id="todghkfdydvna" value="todghkfdydvna" style="display:none">
				<label for="todghkfdydvna">#생활용품</label></td>
				<td> <input type="checkbox" name="hash" id="dlsxjspt" value="dlsxjspt" style="display:none">
				<label for="dlsxjspt">#인터넷</label></td>
				<td> <input type="checkbox" name="hash" id="dmatlr" value="doq" style="display:none">
				<label for="doq">#앱</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="it" value="it" style="display:none">
				<label for="it">#IT</label></td>
				<td> <input type="checkbox" name="hash" id="tjdgud" value="tjdgud" style="display:none">
				<label for="tjdgud">#성형</label></td>
				<td> <input type="checkbox" name="hash" id="epdlffl" value="epdlffl" style="display:none">
				<label for="epdlffl">#데일리</label></td>
				<td> <input type="checkbox" name="hash" id="rkwhr" value="rkwhr" style="display:none">
				<label for="rkwhr">#가족</label></td>
				<td> <input type="checkbox" name="hash" id="ehdanf" value="ehdanf" style="display:none">
				<label for="ehdanf">#동물</label></td>
				<td> <input type="checkbox" name="hash" id="dPtnf" value="dPtnf" style="display:none">
				<label for="dPtnf">#예술</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="votus" value="votus" style="display:none">
				<label for="votus">#패션</label></td>
				<td> <input type="checkbox" name="hash" id="ehs" value="ehs" style="display:none">
				<label for="ehs">#돈</label></td>
				<td> <input type="checkbox" name="hash" id="dnsehd" value="dnsehd" style="display:none">
				<label for="dnsehd">#운동</label></td>
				<td> <input type="checkbox" name="hash" id="dmadkr" value="dmadkr" style="display:none">
				<label for="dmadkr">#음악</label></td>
				<td> <input type="checkbox" name="hash" id="zkem" value="zkem" style="display:none">
				<label for="zkem">#카드</label></td>
				<td> <input type="checkbox" name="hash" id="tv" value="tv" style="display:none">
				<label for="tv">#TV</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="rufghs" value="rufghs" style="display:none">
				<label for="rufghs">#결혼</label></td>
				<td> <input type="checkbox" name="hash" id="tlaflgkr" value="tlaflgkr" style="display:none">
				<label for="tlaflgkr">#심리학</label></td>
				<td> <input type="checkbox" name="hash" id="dyfl" value="dyfl" style="display:none">
				<label for="dyfl">#요리</label></td>
				<td> <input type="checkbox" name="hash" id="zkapfk" value="zkapfk" style="display:none">
				<label for="zkapfk">#카메라</label></td>
				<td> <input type="checkbox" name="hash" id="aktwlq" value="aktwlq" style="display:none">
				<label for="aktwlq">#맛집</label></td>
				<td> <input type="checkbox" name="hash" id="skw" value="skw" style="display:none">
				<label for="skw">#낮</label></td>

			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="wkdus" value="wkdus" style="display:none">
				<label for="wkdus">#자연</label></td>
				<td> <input type="checkbox" name="hash" id="zoavld" value="zoavld" style="display:none">
				<label for="zoavld">#캠핑</label></td>
				<td> <input type="checkbox" name="hash" id="rmadbd" value="rmadbd" style="display:none">
				<label for="rmadbd">#금융</label></td>
				<td> <input type="checkbox" name="hash" id="cor" value="cor" style="display:none">
				<label for="cor">#책</label></td>
				<td> <input type="checkbox" name="hash" id="duddj" value="duddj" style="display:none">
				<label for="duddj">#영어</label></td>
				<td> <input type="checkbox" name="hash" id="diy" value="diy" style="display:none">
				<label for="diy">#DIY</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="skasuckdl" value="skasuckdl" style="display:none">
				<label for="skasuckdl">#남녀차이</label></td>
				<td> <input type="checkbox" name="hash" id="eogkr" value="eogkr" style="display:none">
				<label for="eogkr">#대학</label></td>
				<td> <input type="checkbox" name="hash" id="gkrtod" value="gkrtod" style="display:none">
				<label for="gkrtod">#학생</label></td>
				<td> <input type="checkbox" name="hash" id="rhemdgkrry" value="rhemdgkrry" style="display:none">
				<label for="rhemdgkrry">#고등학교</label></td>
				<td> <input type="checkbox" name="hash" id="vlqn" value="vlqn" style="display:none">
				<label for="vlqn">#피부</label></td>
				<td> <input type="checkbox" name="hash" id="apdlzmdjq" value="apdlzmdjq" style="display:none">
				<label for="apdlzmdjq">#메이크업</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="wkwjsrj" value="wkwjsrj" style="display:none">
				<label for="wkwjsrj">#자전거</label></td>
				<td> <input type="checkbox" name="hash" id="wkehdck" value="wkehdck" style="display:none">
				<label for="wkehdck">#자동차</label></td>
				<td> <input type="checkbox" name="hash" id="dnpqxns" value="dnpqxns" style="display:none">
				<label for="dnpqxns">#웹툰</label></td>
				<td> <input type="checkbox" name="hash" id="rkatjd" value="rkatjd" style="display:none">
				<label for="rkatjd">#감성</label></td>
				<td> <input type="checkbox" name="hash" id="dlftkd" value="dlftkd" style="display:none">
				<label for="dlftkd">#일상</label></td>
				<td> <input type="checkbox" name="hash" id="tpfzk" value="tpfzk" style="display:none">
				<label for="tpfzk">#셀카</label></td>
			</tr>
			<tr>
				
				<td> <input type="checkbox" name="hash" id="vhxhtiq" value="vhxhtiq" style="display:none">
				<label for="vhxhtiq">#포토샵</label></td>
				<td> <input type="checkbox" name="hash" id="dyrk" value="dyrk" style="display:none">
				<label for="dyrk">#요가</label></td>
				<td> <input type="checkbox" name="hash" id="rkdy" value="rkdy" style="display:none">
				<label for="rkdy">#가요</label></td>
				<td> <input type="checkbox" name="hash" id="qbxl" value="qbxl" style="display:none">
				<label for="qbxl">#뷰티</label></td>
				<td> <input type="checkbox" name="hash" id="wjdcl" value="wjdcl" style="display:none">
				<label for="wjdcl">#정치</label></td>
				<td> <input type="checkbox" name="hash" id="qka" value="qka" style="display:none">
				<label for="qka">#밤</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="ckdwkr" value="ckdwkr" style="display:none">
				<label for="ckdwkr">#창작</label></td>
				<td> <input type="checkbox" name="hash" id="eostm" value="eostm" style="display:none">
				<label for="eostm">#댄스</label></td>
				<td> <input type="checkbox" name="hash" id="gotksanf" value="gotksanf" style="display:none">
				<label for="gotksanf">#해산물</label></td>
				<td> <input type="checkbox" name="hash" id="zlwm" value="zlwm" style="display:none">
				<label for="zlwm">#키즈</label></td>
				<td> <input type="checkbox" name="hash" id="qnah" value="qnah" style="display:none">
				<label for="qnah">#부모</label></td>
				<td> <input type="checkbox" name="hash" id="zkvp" value="zkvp" style="display:none">
				<label for="zkvp">#카페</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="ahqkdlf" value="ahqkdlf" style="display:none">
				<label for="ahqkdlf">#모바일</label></td>
				<td> <input type="checkbox" name="hash" id="dkdlvhs" value="dkdlvhs" style="display:none">
				<label for="dkdlvhs">#아이폰</label></td>
				<td> <input type="checkbox" name="hash" id="dksemfhdlem" value="dksemfhdlem" style="display:none">
				<label for="dksemfhdlem">#안드로이드</label></td>
				<td> <input type="checkbox" name="hash" id="gpdjtmxkdlf" value="gpdjtmxkdlf" style="display:none">
				<label for="gpdjtmxkdlf">#헤어스타일</label></td>
				<td> <input type="checkbox" name="hash" id="aldyd" value="aldyd" style="display:none">
				<label for="aldyd">#미용</label></td>
				<td> <input type="checkbox" name="hash" id="dmatlr" value="dmatlr" style="display:none">
				<label for="dmatlr">#음식</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="tlsqkf" value="tlsqkf" style="display:none">
				<label for="tlsqkf">#신발</label></td>
				<td> <input type="checkbox" name="hash" id="tkwls" value="tkwls" style="display:none">
				<label for="tkwls">#사진</label></td>
				<td> <input type="checkbox" name="hash" id="tnf" value="tnf" style="display:none">
				<label for="tnf">#술</label></td>
				<td> <input type="checkbox" name="hash" id="tlrP" value="tlrP" style="display:none">
				<label for="tlrP">#시계</label></td>
				<td> <input type="checkbox" name="hash" id="rkqkd" value="rkqkd" style="display:none">
				<label for="rkqkd">#가방</label></td>
				<td> <input type="checkbox" name="hash" id="tl" value="tl" style="display:none">
				<label for="tl">#시</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="altnf" value="altnf" style="display:none">
				<label for="altnf">#미술</label></td>
				<td> <input type="checkbox" name="hash" id="spdlf" value="spdlf" style="display:none">
				<label for="spdlf">#네일</label></td>
				<td> <input type="checkbox" name="hash" id="xkxn" value="xkxn" style="display:none">
				<label for="xkxn">#타투</label></td>
				<td> <input type="checkbox" name="hash" id="dlsxjspttmxk" value="dlsxjspttmxk" style="display:none">
				<label for="dlsxjspttmxk">#인터넷스타</label></td>
				<td> <input type="checkbox" name="hash" id="cnrwp" value="cnrwp" style="display:none">
				<label for="cnrwp">#축제</label></td>
				<td> <input type="checkbox" name="hash" id="wjstlghl" value="wjstlghl" style="display:none">
				<label for="wjstlghl">#전시회</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="zmffjq" value="zmffjq" style="display:none">
				<label for="zmffjq">#클럽</label></td>
				<td> <input type="checkbox" name="hash" id="quddnjs" value="quddnjs" style="display:none">
				<label for="quddnjs">#병원</label></td>
				<td> <input type="checkbox" name="hash" id="dmlfy" value="dmlfy" style="display:none">
				<label for="dmlfy">#건강</label></td>
				<td> <input type="checkbox" name="hash" id="elwkdls" value="elwkdls" style="display:none">
				<label for="elwkdls">#디자인</label></td>
				<td> <input type="checkbox" name="hash" id="rhkgkr" value="rhkgkr" style="display:none">
				<label for="rhkgkr">#과학</label></td>
				<td> <input type="checkbox" name="hash" id="tngkr" value="tngkr" style="display:none">
				<label for="tngkr">#수학</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="djsdj" value="djsdj" style="display:none">
				<label for="djsdj">#언어</label></td>
				<td> <input type="checkbox" name="hash" id="dlfma" value="dlfma" style="display:none">
				<label for="dlfma">#이름</label></td>
				<td> <input type="checkbox" name="hash" id="wkdus" value="wkdus" style="display:none">
				<label for="wkdus">#자연</label></td>
				<td> <input type="checkbox" name="hash" id="emfkak" value="emfkak" style="display:none">
				<label for="emfkak">#드라마</label></td>
				<td> <input type="checkbox" name="hash" id="dlsgud" value="dlsgud" style="display:none">
				<label for="dlsgud">#인형과 장난감</label></td>
				<td> <input type="checkbox" name="hash" id="rhkwp" value="rhkwp" style="display:none">
				<label for="rhkwp">#과제와 숙제</label></td>
			</tr>
			<tr>
			
				<td> <input type="checkbox" name="hash" id="aksghk" value="aksghk" style="display:none">
				<label for="aksghk">#만화</label></td>
				<td> <input type="checkbox" name="hash" id="abwlzjf" value="abwlzjf" style="display:none">
				<label for="abwlzjf">#뮤지컬</label></td>
				<td> <input type="checkbox" name="hash" id="godhl" value="godhl" style="display:none">
				<label for="godhl">#해외</label></td>
				<td> <input type="checkbox" name="hash" id="rnrso" value="rnrso" style="display:none">
				<label for="rnrso">#국내</label></td>
				<td> <input type="checkbox" name="hash" id="qmfosem" value="qmfosem" style="display:none">
				<label for="qmfosem">#브랜드</label></td>
				<td> <input type="checkbox" name="hash" id="audvnd" value="audvnd" style="display:none">
				<label for="audvnd">#명품</label></td>
			</tr>
			<tr>
			
				<td> <input type="checkbox" name="hash" id="dmafy" value="dmafy" style="display:none">
				<label for="dmafy">#음료</label></td>
				<td> <input type="checkbox" name="hash" id="tmvhcm" value="tmvhcm" style="display:none">
				<label for="tmvhcm">#스포츠</label></td>
				<td> <input type="checkbox" name="hash" id="rpdla" value="rpdla" style="display:none">
				<label for="rpdla">#게임</label></td>
				<td> <input type="checkbox" name="hash" id="zjavbxj" value="zjavbxj" style="display:none">
				<label for="zjavbxj">#컴퓨터</label></td>
				<td> <input type="checkbox" name="hash" id="qpdlzjfl" value="qpdlzjfl" style="display:none">
				<label for="qpdlzjfl">#베이커리</label></td>
				<td> <input type="checkbox" name="hash" id="rkddml" value="rkddml" style="display:none">
				<label for="rkddml">#강의와 수업</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="tkrPwjf" value="tkrPwjf" style="display:none">
				<label for="tkrPwjf">#사계절</label></td>
				<td> <input type="checkbox" name="hash" id="qha" value="qha" style="display:none">
				<label for="qha">#봄</label></td>
				<td> <input type="checkbox" name="hash" id="dufma" value="dufma" style="display:none">
				<label for="dufma">#여름</label></td>
				<td> <input type="checkbox" name="hash" id="rkdmf" value="rkdmf" style="display:none">
				<label for="rkdmf">#가을</label></td>
				<td> <input type="checkbox" name="hash" id="rudnf" value="rudnf" style="display:none">
				<label for="rudnf">#겨울</label></td>
				<td> <input type="checkbox" name="hash" id="dusdPdls" value="dusdPdls" style="display:none">
				<label for="dusdPdls">#연예인</label></td>
			</tr>
			<tr>
				<td> <input type="checkbox" name="hash" id="antnf" value="antnf" style="display:none">
				<label for="antnf">#무술</label></td>
				<td> <input type="checkbox" name="hash" id="dkrrl" value="dkrrl" style="display:none">
				<label for="dkrrl">#악기</label></td>
				<td> <input type="checkbox" name="hash" id="rkawjd" value="rkawjd" style="display:none">
				<label for="rkawjd">#감정</label></td>
				<td> <input type="checkbox" name="hash" id="claeo" value="claeo" style="display:none">
				<label for="claeo">#침대</label></td>
				<td> <input type="checkbox" name="hash" id="dlsxpfldj" value="dlsxpfldj" style="display:none">
				<label for="dlsxpfldj">#인테리어</label></td>
				<td> <input type="checkbox" name="hash" id="wlq" value="wlq" style="display:none">
				<label for="wlq">#집</label></td>
		</tr>
		<tr>
				<td> <input type="checkbox" name="hash" id="ahepf" value="ahepf" style="display:none">
				<label for="ahepf">#모델</label></td>
				<td> <input type="checkbox" name="hash" id="dksrud" value="dksrud" style="display:none">
				<label for="dksrud">#안경</label></td>
				<td> <input type="checkbox" name="hash" id="rktn" value="rktn" style="display:none">
				<label for="rktn">#가수</label></td>
				<td> <input type="checkbox" name="hash" id="qodn" value="qodn" style="display:none">
				<label for="qodn">#배우</label></td>
				<td> <input type="checkbox" name="hash" id="dusrmr" value="dusrmr" style="display:none">
				<label for="dusrmr">#연극</label></td>
				<td> <input type="checkbox" name="hash" id="toqur" value="toqur" style="display:none">
				<label for="toqur">#새벽</label></td>
			</tr>
			</table>
		</div>
	<input type="submit" value="가입"><input type="button" value="취소">
</form>
</center>



</body>
</html>