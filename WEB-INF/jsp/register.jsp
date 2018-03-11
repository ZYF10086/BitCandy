<%@ page contentType="text/html; charset=UTF-8" %>
  <!DOCTYPE html>
  <html lang="zh-cn">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>邮箱注册</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="css/sm.min.css">
    <link rel="stylesheet" href="css/sm-extend.min.css">
    <link rel="stylesheet" href="css/style.css">

  </head>

  <body>
    <div class="page" id="register">
      <header class="bar bar-nav bit">
        <a class="icon icon-left pull-left back bit"></a>
        <h1 class="title bit">邮箱注册</h1>
      </header>


      <div class="content">
        <img class="bit-img" src="https://dummyimage.com/375x150">
        <form action="register" method="post" novalidate>
          <div class="list-block">
            <ul>
              <li>
                <div class="item-content">
                  <div class="item-media">
                    <span class="icon icon-card"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-input">
                      <input type="email" name="email" placeholder="请输入电子邮箱">
                    </div>
                  </div>
                </div>
              </li>
              <li>
                <div class="item-content">
                  <div class="item-media">
                    <span class="icon icon-settings"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-input">
                      <input type="password" name="password" placeholder="请设置密码">
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
                      <input type="password" name="repassword" placeholder="请再次确认密码">
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div class="content-block">
            <div class="col-50"><input type="submit" class="button button-big button-fill button-danger login disabled" value="注册" disabled="disabled"></div>
            <div class="row">
              <div class="content-block-title login">点击注册即同意<a href="#">《用户服务协议》</a></div>
            </div>
          </div>
        </form>
      </div>
    </div>



    <script type="text/javascript" src="js/zepto.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/sm.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/sm-extend.min.js" charset="utf-8"></script>
    <!-- 判断网络是否可用，不可用时显示toast提示 -->
    <script>
      if (navigator.onLine) { }
      else { $.toast("无可用网络，请检查网络设置~"); }     
    </script>
    <script>
      $('input').bind('input propertychange', function () {
        var email = $("input[type='email']").val();
        var pwd = $("input[name='password']").val();
        var repwd = $("input[name='repassword']").val();
        var submit = $("input[type='submit']");
        var Reg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
        // var reg=/^[1-9]\d*$|^0$/;
        if (Reg.test(email) && pwd == repwd) {
          submit.removeClass("disabled");
          submit.removeAttr("disabled");

        }

        if (Reg.test(email) == false || pwd == "" || repwd == "") {
          submit.addClass("disabled");
          submit.attr("disabled", "disabled");

        }
      })
    </script>
  </body>

  </html>