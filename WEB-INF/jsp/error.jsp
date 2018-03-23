<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <!DOCTYPE html>
  <html lang="zh-cn">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>服务器错误</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="full-screen" content="yes">
    <meta name="x5-fullscreen" content="true">

    <link rel="stylesheet" href="css/sm.min.css">
    <link rel="stylesheet" href="css/sm-extend.min.css">
    <link rel="stylesheet" href="css/minirefresh.min.css" />
    <link rel="stylesheet" href="css/style.css">
  </head>

  <body>
    <div class="page" id="index">
      <header class="bar bit bar-nav bit">
        <h1 class="title bit"></h1>
      </header>
      <nav class="bar bar-tab">
        <a class="tab-item" href="#">
          <span class="icon icon-gift"></span>
          <span class="tab-label">糖果</span>
        </a>
        <a class="tab-item external" href="#">
          <span class="icon icon-home"></span>
          <span class="tab-label">比特学堂</span>
        </a>
        <a class="tab-item external" href="#">
          <span class="icon icon-me"></span>
          <span class="tab-label">我的</span>
        </a>
      </nav>
      <div class="content">
          <center><img class="bit-img error" src="images/5.png"></center>            
          <p><center><a class="button back error button-big button-round mistake" style="width:40%">点击返回</a></center></p>          
      </div>
    </div>
    <script src="js/zepto.min.js"></script>
    <script src="js/sm.min.js"></script>
    <script src="js/sm-extend.min.js"></script>
    <script src="js/minirefresh.min.js"></script>
  </body>

  </html>