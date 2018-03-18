<%@ page contentType="text/html; charset=UTF-8" %>
  <!DOCTYPE html>
  <html lang="zh-cn">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>修改密码</title>
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
    <div class="page" id="login">
      <header class="bar bar-nav bit">
        <a class="icon icon-left pull-left back bit"></a>
        <h1 class="title bit">修改密码</h1>
      </header>
      <div class="content">
        <img class="bit-img" src="https://dummyimage.com/375x150">
        <form method="post" novalidate>
          <div class="list-block">
            <ul>
              <li>
                <div class="item-content">
                  <div class="item-media">
                    <span class="icon icon-me"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-input">
                      <input type="email" name="name" placeholder="请输入电子邮箱或手机号">
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
                      <input type="password" name="password" placeholder="请输入密码">
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
                      <input type="password" name="password" placeholder="请输入密码">
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div class="content-block">
            <div class="col-50"><a href="#" class="button button-big button-fill button-danger login">重置</a></div>
          </div>
        </form>
      </div>
    </div>
    <script type="text/javascript" src="js/zepto.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/sm.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/sm-extend.min.js" charset="utf-8"></script>
    <!-- 判断网络是否可用，不可用时显示toast提示 -->
    <script>
      if (window.navigator.onLine == false) { $.toast("无可用网络，请检查网络设置~"); }
      function formSubmit() {
        var text = "name=" + $("[name=name]").val().toString() + "&password=" + $("[name=password]").val().toString();
        $.ajax({
          data: text,
          type: "post",
          url: "/BitCandy/checkforlogin",
          success: function (response) {
            if (response == "1") {
              $.toast("没有这个用户");
            } else if (response == "2") {
              $.toast("您的账号还没有激活~");
            } else if (response == "3") {
              $.toast("密码错误~");
            } else if (response == "0") {
              window.location.href = "mine";
            }
          }
        })
      }

      // 表单验证
      $('input').bind('input propertychange', function () {
        var email = $("input[type='email']").val();
        var pwd = $("input[type='password']").val();
        var submit = $("input[type='button']");
        var Reg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;

        if (Reg.test(email) && pwd != "") {
          submit.removeClass("disabled");
          submit.removeAttr("disabled");

        }

        if (Reg.test(email) == false || pwd == "") {
          submit.addClass("disabled");
          submit.attr("disabled", "disabled");
        }
      })
    </script>
  </body>

  </html>