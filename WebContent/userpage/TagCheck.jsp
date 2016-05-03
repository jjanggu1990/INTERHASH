<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tag check</title>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function checkOnly(chk) {

		var obj = document.getElementsByName("favorite");

		for (var i = 0; i < obj.length; i++) {
			if (obj[i] != chk) {
				obj[i].checked = false;
			}
		}
	}

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
	function sendValue(){
		var a = "asfasdf";
		//alert(document.tagcheck.val.value);
		//opener.document.fo.aaaaa.value = document.tagcheck.favorite.value;
		var obj = document.getElementsByName("favorite");

		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked == true) {
				opener.document.writeForm.tag.value = document.getElementsByName("favorite")[i].value;
				break;
			}
		}
		//opener.document.fo.aaaaa.value = document.getElementsByName("favorite")[0].value;
		/* self.opener = self; */
		window.close();
	}
	
</script>
</head>
<body>
	<form method="post" name="tagcheck">
		<table>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="사랑" onClick="javascript:checkOnly(this);">사랑</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="뉴스" onClick="javascript:checkOnly(this);">뉴스</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="유머" onClick="javascript:checkOnly(this);">유머</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="여행" onClick="javascript:checkOnly(this);">여행</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="영화" onClick="javascript:checkOnly(this);">영화</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="다이어트" onClick="javascript:checkOnly(this);">다이어트</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="커피" onClick="javascript:checkOnly(this);">커피</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="친구" onClick="javascript:checkOnly(this);">친구</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="악세서리" onClick="javascript:checkOnly(this);">악세서리</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="생활용품" onClick="javascript:checkOnly(this);">생활용품</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="인터넷" onClick="javascript:checkOnly(this);">인터넷</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="앱" onClick="javascript:checkOnly(this);">앱</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="IT" onClick="javascript:checkOnly(this);">IT</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="성형" onClick="javascript:checkOnly(this);">성형</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="데일리" onClick="javascript:checkOnly(this);">데일리</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="가족" onClick="javascript:checkOnly(this);">가족</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="동물" onClick="javascript:checkOnly(this);">동물</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="예술" onClick="javascript:checkOnly(this);">예술</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="패션" onClick="javascript:checkOnly(this);">패션</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="돈" onClick="javascript:checkOnly(this);">돈</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="운동" onClick="javascript:checkOnly(this);">운동</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="음악" onClick="javascript:checkOnly(this);">음악</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="카드" onClick="javascript:checkOnly(this);">카드</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="TV" onClick="javascript:checkOnly(this);">TV</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="결혼" onClick="javascript:checkOnly(this);">결혼</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="심리학" onClick="javascript:checkOnly(this);">심리학</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="요리" onClick="javascript:checkOnly(this);">요리</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="카메라" onClick="javascript:checkOnly(this);">카메라</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="맛집" onClick="javascript:checkOnly(this);">맛집</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="낮" onClick="javascript:checkOnly(this);">낮</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="자연" onClick="javascript:checkOnly(this);">자연</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="캠핑" onClick="javascript:checkOnly(this);">캠핑</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="금융" onClick="javascript:checkOnly(this);">금융</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="책" onClick="javascript:checkOnly(this);">책</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="영어" onClick="javascript:checkOnly(this);">영어</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="DIY" onClick="javascript:checkOnly(this);">DIY</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="남녀차이" onClick="javascript:checkOnly(this);">남녀차이</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="대학" onClick="javascript:checkOnly(this);">대학</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="학생" onClick="javascript:checkOnly(this);">학생</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="고등학교" onClick="javascript:checkOnly(this);">고등학교</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="피부" onClick="javascript:checkOnly(this);">피부</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="메이크업" onClick="javascript:checkOnly(this);">메이크업</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="자전거" onClick="javascript:checkOnly(this);">자전거</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="자동차" onClick="javascript:checkOnly(this);">자동차</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="웹툰" onClick="javascript:checkOnly(this);">웹툰</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="감성" onClick="javascript:checkOnly(this);">감성</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="일상" onClick="javascript:checkOnly(this);">일상</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="셀카" onClick="javascript:checkOnly(this);">셀카</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="포토샵" onClick="javascript:checkOnly(this);">포토샵</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="요가" onClick="javascript:checkOnly(this);">요가</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="가요" onClick="javascript:checkOnly(this);">가요</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="뷰티" onClick="javascript:checkOnly(this);">뷰티</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="정치" onClick="javascript:checkOnly(this);">정치</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="밤" onClick="javascript:checkOnly(this);">밤</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="창작" onClick="javascript:checkOnly(this);">창작</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="댄스" onClick="javascript:checkOnly(this);">댄스</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="해산물" onClick="javascript:checkOnly(this);">해산물</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="키즈" onClick="javascript:checkOnly(this);">키즈</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="부모" onClick="javascript:checkOnly(this);">부모</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="카페" onClick="javascript:checkOnly(this);">카페</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="모바일" onClick="javascript:checkOnly(this);">모바일</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="아이폰" onClick="javascript:checkOnly(this);">아이폰</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="안드로이드" onClick="javascript:checkOnly(this);">안드로이드</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="헤어스타일" onClick="javascript:checkOnly(this);">헤어스타일</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="미용" onClick="javascript:checkOnly(this);">미용</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="음식" onClick="javascript:checkOnly(this);">음식</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="신발" onClick="javascript:checkOnly(this);">신발</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="사진" onClick="javascript:checkOnly(this);">사진</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="술" onClick="javascript:checkOnly(this);">술</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="시계" onClick="javascript:checkOnly(this);">시계</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="가방" onClick="javascript:checkOnly(this);">가방</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="시" onClick="javascript:checkOnly(this);">시</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="미술" onClick="javascript:checkOnly(this);">미술</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="네일" onClick="javascript:checkOnly(this);">네일</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="타투" onClick="javascript:checkOnly(this);">타투</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="인터넷스타" onClick="javascript:checkOnly(this);">인터넷스타</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="축제" onClick="javascript:checkOnly(this);">축제</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="전시회" onClick="javascript:checkOnly(this);">전시회</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="클럽" onClick="javascript:checkOnly(this);">클럽</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="병원" onClick="javascript:checkOnly(this);">병원</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="건강" onClick="javascript:checkOnly(this);">건강</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="디자인" onClick="javascript:checkOnly(this);">디자인</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="과학" onClick="javascript:checkOnly(this);">과학</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="수학" onClick="javascript:checkOnly(this);">수학</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="언어" onClick="javascript:checkOnly(this);">언어</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="이름" onClick="javascript:checkOnly(this);">이름</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="문화" onClick="javascript:checkOnly(this);">문화</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="드라마" onClick="javascript:checkOnly(this);">드라마</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="인형" onClick="javascript:checkOnly(this);">인형</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="과제" onClick="javascript:checkOnly(this);">과제</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="만화" onClick="javascript:checkOnly(this);">만화</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="뮤지컬" onClick="javascript:checkOnly(this);">뮤지컬</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="해외" onClick="javascript:checkOnly(this);">해외</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="국내" onClick="javascript:checkOnly(this);">국내</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="브랜드" onClick="javascript:checkOnly(this);">브랜드</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="명품" onClick="javascript:checkOnly(this);">명품</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="음료" onClick="javascript:checkOnly(this);">음료</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="스포츠" onClick="javascript:checkOnly(this);">스포츠</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="게임" onClick="javascript:checkOnly(this);">게임</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="컴퓨터" onClick="javascript:checkOnly(this);">컴퓨터</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="베이커리" onClick="javascript:checkOnly(this);">베이커리</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="수업" onClick="javascript:checkOnly(this);">수업</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="사계절" onClick="javascript:checkOnly(this);">사계절</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="봄" onClick="javascript:checkOnly(this);">봄</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="여름" onClick="javascript:checkOnly(this);">여름</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="가을" onClick="javascript:checkOnly(this);">가을</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="겨울" onClick="javascript:checkOnly(this);">겨울</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="연예인" onClick="javascript:checkOnly(this);">연예인</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="무술" onClick="javascript:checkOnly(this);">무술</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="악기" onClick="javascript:checkOnly(this);">악기</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="감정" onClick="javascript:checkOnly(this);">감정</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="침대" onClick="javascript:checkOnly(this);">침대</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="인테리어" onClick="javascript:checkOnly(this);">인테리어</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="집" onClick="javascript:checkOnly(this);">집</td>
			</tr>
				<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="모델" onClick="javascript:checkOnly(this);">모델</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="안경" onClick="javascript:checkOnly(this);">안경</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="가수" onClick="javascript:checkOnly(this);">가수</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="배우" onClick="javascript:checkOnly(this);">배우</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="연극" onClick="javascript:checkOnly(this);">연극</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="새벽" onClick="javascript:checkOnly(this);">새벽</td>
			</tr>
			
			<tr>
				<td align="center">
				<input id="checkButton" type="button" name="Submit" value="확인" onClick="sendValue()"></td>
			</tr>
		</table>
	</form>
</body>
</html>