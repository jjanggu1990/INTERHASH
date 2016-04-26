<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<decorator:head/>
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
        width: 650px;
        height:700px;
        padding: 10px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
      #jb-sidebar {
        width: 200px;
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
      ul {
      	list-style-type: none;
    	margin: 0;
    	padding: 0;
    	width: 200px;
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
      	<img alt="로고" src="./userpage/logo/logo.jpg">
      </div>
      <div id="jb-content">
      <decorator:body/>
      </div>
      <div id="jb-sidebar">
        <h2>Sidebar</h2>
        <ul>
          <li><a href="Main.hash">Lorem</a></li>
          <li><a href="Main.hash">Ipsum</a></li>
          <li><a href="Main.hash">Dolor</a></li>
        </ul>
      </div>
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
    </div>
  </body>
</html>