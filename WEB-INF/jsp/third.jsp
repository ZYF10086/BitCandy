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
    <style>
      .loading {
        width: 150px;
        height: 15px;
        margin: 0 auto;
        margin-top: 100px;
        text-align: center;
      }

      .loading span {
        display: inline-block;
        width: 15px;
        height: 100%;
        margin-right: 5px;
        background: #C20C0C;
        -webkit-animation: load 1.04s ease infinite;
      }

      .loading span:last-child {
        margin-right: 0px;
      }

      @-webkit-keyframes load {
        0% {
          opacity: 1;
        }
        100% {
          opacity: 0;
        }
      }

      .loading span:nth-child(1) {
        -webkit-animation-delay: 0.13s;
      }

      .loading span:nth-child(2) {
        -webkit-animation-delay: 0.26s;
      }

      .loading span:nth-child(3) {
        -webkit-animation-delay: 0.39s;
      }

      .loading span:nth-child(4) {
        -webkit-animation-delay: 0.52s;
      }

      .loading span:nth-child(5) {
        -webkit-animation-delay: 0.65s;
      }
    </style>
  </head>

  <body>
    <div class="page" id="third">
      <header class="bar bar-nav bit">
        <a class="icon icon-left pull-left back bit"></a>
        <h1 class="title bit">XX项目</h1>
      </header>
      <div class="content">
        <div class="loading">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </div>
        <!-- <iframe src="https://baidu.com" width="100%" frameborder="0" id="third-iframe" scrolling="no" onload="changeFrameHeight()"></iframe> -->
      </div>
    </div>
    <script type="text/javascript" src="js/zepto.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/sm.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/sm-extend.min.js" charset="utf-8"></script>
    <script>
      var iframe = document.createElement("iframe");
      iframe.src = "https://baidu.com";
      iframe.width = "100%";
      ifmame.height = document.documentElement.clientHeight;
      iframe.frameBorder = "0";
      iframe.scrolling = "no";
      window.onresize = function () {
        ifmame.height = document.documentElement.clientHeight;
      }
     
      document.body.appendChild(iframe);





    </script>
  </body>

  </html>