<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>XX项目</title>
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">

  <link rel="stylesheet" href="css/sm.min.css">
  <link rel="stylesheet" href="css/sm-extend.min.css">
  <link rel="stylesheet" href="css/style.css">

</head>

<body>
  <div class="page" id="third">
    <header class="bar bar-nav bit">
      <a class="icon icon-left pull-left back bit"></a>
      <h1 class="title bit">XX项目</h1>
    </header>
    <div class="content">
      <iframe src="https://baidu.com" width="100%" frameborder="0" id="third-iframe" scrolling="no" onload="changeFrameHeight()"></iframe>
    </div>
  </div>
  <script type="text/javascript" src="js/zepto.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="js/sm.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="js/sm-extend.min.js" charset="utf-8"></script>
  <script>
    function changeFrameHeight() {
      var ifm = document.getElementById("third-iframe");
      ifm.height = document.documentElement.clientHeight;

    }
    window.onresize = function () {
      changeFrameHeight();

    } 
  </script>
</body>

</html>