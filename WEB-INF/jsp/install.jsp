<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>设置</title>
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">

  <link rel="stylesheet" href="css/sm.min.css">
  <link rel="stylesheet" href="css/sm-extend.min.css">
  <link rel="stylesheet" href="css/style.css">

</head>

<body>
  <div class="page" id="install">
    <header class="bar bar-nav bit">
      <a class="icon icon-left pull-left back bit"></a>
      <h1 class="title bit">设置</h1>
    </header>

    <div class="content">
      <div class="card install">
        <div class="card-content">
          <div class="list-block">
            <ul>
              <li>
                <span href="#" class="item-content">
                  <div class="item-media">
                    <i class="icon icon-f7"></i>
                  </div>
                  <div class="item-inner">
                    <div class="item-title">当前版本</div>
                    <span>1.2.2</span>
                  </div>
                </span>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="content-block">
        <div class="col-50">
          <a href="logout" class="button button-big button-fill button-danger install">退出登录</a>
        </div>
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