<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
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
    </style>
  </head>
  <body>
    <div id="jb-container">
      <div id="jb-header">
      	<span id="jb-logo">
	      	<img alt="로고" src="./userpage/logo/logo.jpg" onclick="window.location.href='Board.hash'">
      	</span>
      	<div id="jb-logon">
      		<form>
      			<input type = "text"><br>
      			<input type = "password"><br>
      			<input type = "button" value="회원가입"><input type="submit" value="로그인">
      			<input type="button" value="정보수정" onclick="window.location.href='UserInfoModifyForm.hash';">
      		</form>
      	</div>
      </div>
      <div id="jb-content">
      <input type="button" value="글쓰기" onclick="window.location.href='ContentInputForm.hash'">
      
      	태그 : ${hash}<br>
      <decorator:body/>
      </div>
      <div id="jb-sidebar">
        <h2>해시태그</h2>
        <ul>
          <li><a href='Board.hash?hash=사랑'>#사랑</a></li>
          <li><a href="Board.hash?hash=돈">#돈</a></li>
          <li><a href="Board.hash?hash=컴퓨터">#컴퓨터</a></li>
          <li><a href="Board.hash?hash=커피">#커피</a></li>
          <li><a href="Board.hash?hash=책">#책</a></li>
          <li><a href="Board.hash?hash=반려동물">#반려동물</a></li>
          <li><a href="Board.hash?hash=독도">#독도</a></li>
          <li><a href="Board.hash?hash=맥주">#맥주</a></li>
          
        </ul>
      </div>
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
    </div>
  </body>
</html>