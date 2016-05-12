<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<c:if test ="${sessionScope.memId==null}">
<script>
alert("비밀번호가 틀립니다.");
history.go(-1);
</script>
</c:if>
<script>
$(function() {
    $("#conphoto").on('change', function(){
         readURL(this); 
    });
});


 function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();
    	reader.onload = function (e) {

             $('#blah').attr('src', e.target.result); 
             $('#blah').attr('height', '100px');
             $('#blah').attr('width', '100px');
        }

      reader.readAsDataURL(input.files[0]);
    }
} 
function fileUploadPreview(thisObj, preViewer) {
	// 형식 체크
	if (!/(\.gif|\.jpg|\.jpeg|\.png)$/i.test(thisObj.value)) {
		alert("이미지 형식의 파일을 선택하십시오");
		$(thisObj).val('');
		return;
	}

	var preViewer = $('.preViewImg:last');//(typeof(preViewer) == "object") ? preViewer : document.getElementById(preViewer);
	var ua = window.navigator.userAgent;

	// 렌더링 버전 알아내기
	var rv = -1;

	// ie 브라우저이며 ie10 미만 버전
	if (ua.indexOf("MSIE") > -1 && rv < 10) {
		var img_path = "";
		if (thisObj.value.indexOf("\\fakepath\\") < 0) {
			img_path = thisObj.value;
		} else {
			thisObj.select();
			var selectionRange = document.selection.createRange();
			img_path = selectionRange.text.toString();
			thisObj.blur();
		}
		$(preViewer).css(
				'filter',
				"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='fi"
						+ "le://" + img_path + "', sizingMethod='scale')")
				.show();

	
		var cloneHtml = $('.photo_list:last').clone();
		cloneHtml.find('input').val('');
		cloneHtml.find('img').removeAttr('src', 'style').hide();
		$(thisObj).parents('.photoBox:first').append(cloneHtml);
	} else { // 그외 브라우저
		var reader = new FileReader();
		reader.readAsDataURL(thisObj.files[0]);
		reader.onload = function(e) {
			$('.preViewImg:last').attr('src', e.target.result).show();

			var cloneHtml = $('.photo_list:last').clone();
			cloneHtml.find('input').val('');
			cloneHtml.find('img').attr('src', '').hide();
			$(thisObj).parents('.photoBox:first').append(cloneHtml);
		}
	}
}
</script>
<style type="text/css">
	#board_div{
		width:760px;
		height:320px;
/* 		 background-color: black;  */
		border:1px solid; 
		padding:5px;
		margin:10px;
	}
	#board_img{
		width:270px;
		height:280px;
		/* background-color: green; */
		float:left;
		/* border:2px solid; */
		margin:auto;
	}
	#img{
		width: 260px;
		height:270px;
		margin:auto;
	}
	#board_main{
		width:470px;
		height:310px;
		/* background-color: yellow; */
		float:right;
		/*  border:1px solid;  */
		margin:auto;
	}
	#board_subject{
		width:470px;
		height:50px;
		 border:1px solid #bcbcbc; 
		margin:auto;
		/* background-color: blue; */
	}
	#board_content{
		width:470px;
		height:200px;
		border:1px solid #bcbcbc; 
		margin:auto;
	}
	#board_like{
		width:470px;
		height:50px;
		/* border:2px solid; */
		margin:auto;
	}
	
	#like{
		position: relative;
	}
	#commnet{
	}
	#like_img{
		height:35px;
		width:43px;
		/* border:1px solid; */
		margin:5px;
		float:left;
	}
	#like_text{
		height:35px;
		width:70px;
		/* border:1px solid; */
		margin:5px;
		float:left;
		text-align: center;
	}
	#commnet_img{
		height:35px;
		width:43px;
	/* 	border:1px solid; */
		margin:5px;
		float:left;
	}
	#commnet_text{
		height:35px;
		width:70px;
		/* border:1px solid; */
		margin:5px;
		float:left;
		text-align: center;
	}
	#board_subject_click{
		height:50px;
		width:130px;
		position: relative;
		background-color: white;
		float:left;
		left:-130px;
		opacity:0.5;
	}
	#board_commnet_click{
		height:50px;
		width:130px;
		position: relative;
		left:5px;
		top:-45px;
		float:left;
		background-color: white;
		opacity:0.5;
	}
	p{
		
		font-size: 18px;
		margin:5px auto;
	}
	
	
	
	#writeform{
		width:700px;
		height:240px;
		margin: 10px auto;
		/* border:1px solid; */
	}
	
	#textfield {
	width: 500px;
	height: 80px;
	background: #ffffff;
}

#preview {
	height: 80px;
	background: #ffffff;
}

#imageon {
	height: 30px;
	background: #ffffff;
}

#taglist {
	height: 30px;
	background: #ffffff;
}

#submit {
	height: 30px;
	background: #ffffff;
}

#button {
	display: inline-block;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .4em 2em .50em;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .3);
	-webkit-border-radius: .4em; 
	-moz-border-radius: .4em;
	border-radius: .4em; 
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
}

.photoBox .fileData {
	display: none;
}

.photoBox .preViewImg {
	width: 80px;
	height: 80px;
	text-align: center;
	border: 1px solid silver; 
}

.custom_checkbox {
	position: relative;
	margin: 45px 0 0 20px;
}

.custom_checkbox label {
	position: absolute;
	left: 0;
	height: 20px;
	padding: 4px 0 0 25px;
	background: url('images/custom_checkbox2.png') no-repeat;
}

.custom_checkbox input {
	type ="checkbox": checked+ label{background-position:0 -25px;
}
#blah_img{
	width:100px;
	height:100px;
	overflow: auto;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
$(function(){
	$(window).scroll(function(){
		if( $(window).scrollTop() == ($(document).height() -  ($(window).height() +$(window).height()))){
			alert("끝!");
		}
	});  
}); 
</script>
</head>
<body>
 <div id="writeform">
      <form action="ContentInputPro.hash" name="writeForm" method="post" enctype="multipart/form-data"> 
		<div id="wrap" style="width: 500px; margin: auto;">
			<textarea id="textfield" name="content" placeholder="내용을 입력하세요."></textarea>
			<div class="photoBox" style="height: 100px; width: 100px;">
				<input class='fileData' id = "conphoto" name="conphoto" type="file"/> 
					<div id="blah_img">
						<img id="blah" src="" alt="no image"/>
					</div>
			</div>
			<div style="clear: both;"></div>
			<div id="sub">
				<span id="imageon" style="width: 100px; float: left;"> 
				 <img src="image.JPG" onclick="$('.fileData:last').click();" /> 
				
				</span> 
				<span id="taglist" style="width: 300px; float: left;">
					<input type="text" name="tag" size="7" readonly>
					<input type="button" value="Tag" onClick="tagCheck()">
				</span> 
				<span id="submit" style="width: 100px; float: left;"> 
				<input type="submit" id="button" value="submit"/>
				</span>
			</div>
		</div>
	</form>
	</div>
<form method='post' action='ContentView.hash'>
<c:forEach var="con" items= '${content}' >
<input type="hidden" name="connum" value="${con.connum}">
<div id="board_div">
	<div id="board_img">
	<a href="ContentView.hash?connum=${con.connum}">
		<img id = "img" src='${con.photolist[0].serverpath }'/>
		</a>
	</div>
	<div id ="board_main">
	<a href="ContentView.hash?connum=${con.connum}">
		<div id="board_subject">
			<div id="subject">
			<label>'${con.connickname}'</label>
			</div>
			<div id="time">
			<label>'${con.conmodifieddate}'</label>
			</div>
		</div>
		<div id="board_content">
			<label>'${con.content}'</label>
			<br/>
			<label> ${con.conhash} </label>

		</div>
		<div id="board_like">
			<div id="like">
				<div id="like_img">
				</div>
				<div id="like_text">
					<p>123</p>
				</div>
				<div id="like_alpha">
				</div>
			</div>
			<div id="commnet">
				<div id="commnet_img">
				</div>
				<div id="commnet_text">
				
					
				</div>
				<P><a href="ContentView.hash?connum=${con.connum}"></a></P>
			</div>
		</div>
		</a>
	</div>
</div>
</c:forEach>
</form>
</body>
</html>