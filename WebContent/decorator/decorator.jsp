<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>CSS Tutorial | Layout</title>
    <style>
      #jb-container {
        width: 940px;
        margin: 0px auto;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-header {
        padding: 20px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-content {
        width: 580px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
      #jb-sidebar {
        width: 260px;
        padding: 20px;
        margin-bottom: 20px;
        float: left
        border: 1px solid #bcbcbc;
      }
      #jb-footer {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
    </style>
  </head>
  <body>
    <div id="jb-container">
      <div id="jb-header">
        <h1>2-Column Layout</h1>
      </div>
      <div id="jb-content">
      <decorator:body/>
      </div>
      <div id="jb-sidebar">
        <h2>Sidebar</h2>
        <ul>
          <li>Lorem</li>
          <li>Ipsum</li>
          <li>Dolor</li>
        </ul>
      </div>
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
    </div>
  </body>
</html>
<%-- 
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here<decorator:title/></title>
<link href="style.css" rel="stylesheet" type="text/css">

<!-- 데코레이터 헤드<br> -->
<decorator:head/> 

<!-- 로그인 / 검색창 -->

<div class="login" >
	<tr>
		<td align="left"><%=session.getAttribute("memId")%>님 </td>
		<td align="right"><input type="button" value="로그아웃" onclick="javascript:window.location='../main/bfmain.jsp'" ></td>
		<td align="left"><input type="button" value="정보수정" onclick="javascript:window.location='../main/mem_modify.jsp'" ></td>
	</tr>
</div>

<form>
<div class="search">
	<tr>
		<td colspan="2" align="left"><input type="text" value="text" size="20" onfocus="this.value='';"></td>
		<td align="right"><input type="button" value="검색" ></td>
	</tr>
</div>
</form>

<!-- 상단 로고 배경 레잉아웃 -->

<div class="logo1_bg" id="header">
	<table>
		<tr>
			<td width="300" height="120">
	</table>
</div>

<div class="logo1" id="header">
	<a href="../userpage/board.jsp"><img src="../proimg/interHash.png" width="300" height="100" /></a>
</div>
</head>


<body>

<iframe class="hash2" src="../main/hash2.jsp"  align="center" width="120" height="590" name="hash2"
scrolling="auto" frameborder="0" border="0"  marginwidth="0" marginheight="0" target="main2">
</iframe>

<!-- <iframe class="main2" src="../main/main2.jsp" align="center" width="750" height="550" name="main2"
 scrolling="auto" frameborder="0" border="0" align="center"  marginwidth="0" marginheight="0">
</iframe> -->

<hr class="hr1" width="1200">

<!-- 게시글 올리기 창 -->

<!-- <form>
<div class="main1">
	<table>
		<tr>
			<textarea rows="7" cols="100" onfocus="this.value='';" >
			</textarea>
		</tr>

		<tr>
			<td align="center"> style="border:1px solid gray"
				<a href="url"><img src="../images/pic.png" width="40" height="30" /></td>
			<td style="border:0px solid black" width="610" />
			<td align="center"><input type="button" value="글게시" > style="border:1px solid gray"
			</td>
		</tr>
	</table>
</div>
</form> -->

<!-- nav : hash1 인기글-->

<form>
	<div class="hash1">
		<table>
			<tr>
			<a href="url"><img src="../proimg/pop.png" width="100" height="50" alt="인기글" /></a>	
			</tr><br>
			<tr>
			<a href="url"><img src="../proimg/new.png" width="100" height="50" alt="최신글"/></a>
			</tr>
			
			<hr>
			
		</table>
	</div>
</form>

<hr class="hr2" width="720"> <!-- 최신글 아래 줄 -->

<br>

<hr class="hr3" width="1200"> <!-- footer : 구분 줄 -->

<!-- 푸터  -->

<div class="main3" id="footer">
	<table>
		<tr>
			<td>
				<img src="../proimg/won.png" width="50" height="55">
			</td>
			<td width="50" />
			<td>
				<img src="../proimg/woo.png" width="50" height="55">
			</td>
			<td width="50" />
			<td>
				<img src="../proimg/so.png" width="50" height="55">
			</td>
			<td width="50" />
			<td>
				<img src="../proimg/song.png" width="50" height="55">
			</td>
			<td width="50" />
			<td>
				<img src="../proimg/su.png" width="50" height="55">
			</td>		
	</table>

</div>

<!-- 푸터 로고 -->

<div class="logo2">
	<a href="url"><img src="../proimg/interHash.png" width="200" height="60" />
</div>

데코레이터 페이지<br>
<decorator:body/>
</body>
</html> --%>