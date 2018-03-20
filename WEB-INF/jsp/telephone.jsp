<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>绑定手机</title>
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="full-screen" content="yes">
  <meta name="x5-fullscreen" content="true">

  <link rel="stylesheet" href="css/sm.min.css">
  <link rel="stylesheet" href="css/sm-extend.min.css">
  <link rel="stylesheet" href="css/style.css">

</head>

<body>
  <div class="page" id="telephone">
    <header class="bar bar-nav bit">
      <a class="icon icon-left pull-left back bit"></a>
      <h1 class="title bit">绑定手机</h1>
    </header>

    <div class="content">
      <img class="bit-img" src="https://dummyimage.com/375x150">
      <div class="list-block">
        <ul>
          <li>
            <div class="item-content">
              <div class="item-media">
                <span class="icon icon-phone"></span>
              </div>
              <div class="item-inner">
                <div class="item-input">
                  <input type="email" placeholder="请输入手机号码">
                </div>
              </div>
            </div>
          </li>
          <li>
            <div class="item-content">
              <div class="item-media">
                <span class="icon icon-edit"></span>
              </div>
              <div class="item-inner">
                <div class="item-input">
                  <input type="email" placeholder="请输入验证码">
                </div>
                <input type="button" class="button button-fill login bit disabled btn" value="获取验证码" id="gitkey" disabled="disabled">
              </div>
            </div>
          </li>
        </ul>
      </div>
      <div class="content-block">
          <input type="button"  class="button button-big button-fill button-danger login disabled bit" value="绑定" disabled="disabled">
      </div>
    </div>
  </div>
  <script type="text/javascript" src="js/zepto.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="js/sm.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="js/sm-extend.min.js" charset="utf-8"></script>
  <!-- 判断网络是否可用，不可用时显示toast提示 -->
  <script>
    if (window.navigator.onLine == false) { $.toast("无可用网络，请检查网络设置~"); }
  </script>
</body>

</html>