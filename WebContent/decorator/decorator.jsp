<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<decorator:head/>
    <meta charset="utf-8">
    <title>에벌레</title>
    <style>
      #jb-container {
        width: 1100px;
        margin: 0px auto;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-header {
        padding: 20px;
        height: 120px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb_search{
      	margin-top:100px;
      	float: left;
      	width: 300px;
      	height:auto;
      	border:1px solid #bcbcbc;
      }
      #jb-content {
        width: 800px;
        height:auto;
        padding: 10px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
      #jb-sidebar {
      	position:fixed;
        width: 230px;
        padding: 10px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }
      #jb-footer {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-logo{
      	float:left;
      	width:401px;
      	height:auto;
      }
      #jb-logon{
      	float:right;
      }
      ul {
      	list-style-type: none;
    	margin: 0;
    	padding: 0;
    	width: 230px;
    	background-color: #f1f1f1;
	}

	li a {
    	display: block;
    	color: #000;
    	padding: 8px 0 8px 16px;
    	text-decoration: none;
	}
	
/* Change the link color on hover */
	li a:hover {
    	background-color: #555;
	    color: white;
	}
	
	
	
	/* ----------------------------------------------------------------------- */
	#writeform{
		width:700px;
		height:240px;
		margin: 10px auto;
		border:1px solid;
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
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
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
	
	function tagCheck() {

		url = "/INTERHASH/userpage/TagCheck.jsp?check=y";
		newwindow=window.open(url,"post","toolbar=no ,width=650 ,height=700 ,directories=no ,status=yes ,scrollbars=no ,menubar=no");
	}
    </script>
  </head>
  <body>
    <div id="jb-container">
      <div id="jb-header">
      	<div id="jb-logo">
	      	<img alt="로고" src="./userpage/logo/logo.jpg" onclick="window.location.href='Board.hash'">
      	</div>
      	<div id="jb_search">
      		<form method="post" action="Board.hash">
      			<input type="text" name="hash"/>
      			<input type="submit" value="검색"/>
      		</form>
      	</div>
      	<div id="jb-logon">
      		<form>
      			<!-- <input type = "text"><br>
      			<input type = "password"><br>
      			<input type = "button" value="회원가입"><input type="submit" value="로그인">
      			<input type="button" value="정보수정" onclick="window.location.href='UserInfoModifyForm.hash';"> -->
      			
      			<table>
					<tr>
						<td align="left"><%=session.getAttribute("nickName")%>님</td>
						<td align="right"><input type="button" value="로그아웃" onclick="window.location.href='Logout.hash';"></td>
						<td align="left"><input type="button" value="정보수정"	onclick="window.location.href='UserInfoModifyForm.hash';"></td>
					</tr>
				</table>
				
      		</form>
      	</div>
      </div>
      <div id="jb-content">
      <!-- <input type="button" value="글쓰기" onclick="window.location.href='ContentInputForm.hash'"> -->
     <!--  <div id="writeform">
      <form action="ContentInputPro.hash" name="writeForm" method="post" enctype="multipart/form-data"> enctype="multipart/form-data"
		<div id="wrap" style="width: 500px; margin: auto;">
			<textarea id="textfield" name="content" placeholder="내용을 입력하세요."></textarea>
			<div class="photoBox" style="height: 100px; width: 100px;">
				<span class='photo_list'> 
				<input class='fileData' id = "conphoto" name="conphoto" type="file"/>  onchange="fileUploadPreview(this, 'preView')" 
					<div id="blah_img">
						<img id="blah" src="" alt="no image"/>
					</div>
				</span>
			</div>
			<div style="clear: both;"></div>
			<div id="sub">
				<span id="imageon" style="width: 100px; float: left;"> 
				 <img src="image.JPG" onclick="$('.fileData:last').click();" /> 
				
				</span> 
				<span id="taglist" style="width: 300px; float: left;">
					<div class="ui-widget">
  						<label for="tags">Tags: </label>
  						<input id="tags">
					</div>
					<input type="text" name="tag" size="7" readonly>
					<input type="button" value="Tag" onClick="tagCheck()">
				</span> 
				<span id="submit" style="width: 100px; float: left;"> 
				<input type="submit" id="button" value="submit"/>
				</span>
			</div>
		</div>
	</form>
	</div> -->
      <decorator:body/>
      </div>
      <div id="jb-sidebar">
        <h2>해시태그</h2>
        <ul>
        <c:forEach var="tagname" items="${memberHash}">
        <li><a href="Board.hash?hash=${tagname}">#${tagname}</a></li>
          <!-- <li><a href='Board.hash?hash=사랑'>#사랑</a></li>
          <li><a href="Board.hash?hash=돈">#돈</a></li>
          <li><a href="Board.hash?hash=컴퓨터">#컴퓨터</a></li>
          <li><a href="Board.hash?hash=커피">#커피</a></li>
          <li><a href="Board.hash?hash=책">#책</a></li>
          <li><a href="Board.hash?hash=반려동물">#반려동물</a></li>
          <li><a href="Board.hash?hash=독도">#독도</a></li>
          <li><a href="Board.hash?hash=맥주">#맥주</a></li> -->
          </c:forEach>
        </ul>
      </div>
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
    </div>
  </body>
</html>