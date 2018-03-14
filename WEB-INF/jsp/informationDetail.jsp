<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>账户流水</title>
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">

  <link rel="stylesheet" href="../css/sm.min.css">
  <link rel="stylesheet" href="../css/sm-extend.min.css">
  <link rel="stylesheet" href="../css/style.css">

</head>

<body>
<div class="page" id="account">
  <header class="bar bar-nav bit">
    <a class="icon icon-left pull-left back bit"></a>
    <h1 class="title bit">文章详细</h1>
  </header>

  <div class="content">
    <div class="card">
        <div class="card-header"></div>
        <div class="card-content">
          <div class="card-content-inner text-center bit-account"></div>
          <div class="card-content-inner text-center bit-change">${result.getTitle()}</div>
        </div>
      </div>
      <div class="content-block-title">最近交易记录</div>
      <div class="list-block media-list">
		${result.getContent()}
      </div>
    </div>
  </div>
  <script type="text/javascript" src="../js/zepto.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="../js/sm.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="../js/sm-extend.min.js" charset="utf-8"></script>
  <script>
    function changeFrameHeight() {
      var ifm = document.getElementById("third");
      ifm.height = document.documentElement.clientHeight;

    }
    window.onresize = function () {
      changeFrameHeight();

    } 
  </script>
  <!-- 判断网络是否可用，不可用时显示toast提示 -->
  <script>
    if (navigator.onLine) 
       {} 
    else {$.toast("无可用网络，请检查网络设置~");}     
  </script>
</body>

</html>