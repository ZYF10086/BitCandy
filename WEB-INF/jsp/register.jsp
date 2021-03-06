<%@ page contentType="text/html; charset=UTF-8" %>
  <!DOCTYPE html>
  <html lang="zh-cn">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>邮箱注册</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
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
    <div class="page" id="register">
      <header class="bar bar-nav bit">
        <a class="icon icon-left pull-left back bit"></a>
        <h1 class="title bit">邮箱注册</h1>
      </header>


      <div class="content">
        <!-- <img class="bit-img" src="https://dummyimage.com/375x150"> -->
        <form method="post" novalidate>
          <div class="list-block">
            <ul>
              <li>
                <div class="item-content">
                  <div class="item-media">
                    <span class="icon icon-card"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-input">
                      <input type="email" name="name" placeholder="请输入电子邮箱">
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
            <div class="col-50"><input type="button" onclick="formSubmit()" class="button button-big button-fill button-danger login disabled bit" value="注册" disabled="disabled"></div>
            <div class="row">
              <div class="content-block-title login">点击注册即同意<a href="#" class="external">《用户服务协议》</a></div>
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
      if (window.navigator.onLine == false) { $.toast("无可用网络，请检查网络设置~"); }
      $('input').bind('input propertychange', function () {
        var email = $("input[type='email']").val();
        var pwd = $("input[name='password']").val();
        var repwd = $("input[name='repassword']").val();
        var submit = $("input[type='button']");
        var Reg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
        if (Reg.test(email) && pwd != "" && repwd != "") {
          submit.removeClass("disabled");
          submit.removeAttr("disabled");
        }else if (Reg.test(email) == false || pwd == "" || repwd == "") {
          submit.addClass("disabled");
          submit.attr("disabled", "disabled");
        }
      })

      function formSubmit() {
        var pwd = $("input[name='password']").val();
        var repwd = $("input[name='repassword']").val();
        var pwdlength = $("input[name='password']").val().length;
        var Reg = /^[0-9]+$/;
        if(pwdlength < 8){
          $.toast("密码至少为八位");
          return;
        }
        if (Reg.test(pwd)){
          $.toast("密码不能为纯数字");
          return;
        }
        if(pwd != repwd) {
          $.toast("两次输入密码不一致");
          return;
        }
        var text = "name=" + $("[name=name]").val().toString() + "&password=" + $("[name=password]").val().toString();
        $.ajax({
          data: text,
          type: "post",
          url: "/BitCandy/checkRegister",
          success: function (response) {
            if (response == "1") {
              $.toast("该邮箱已被占用");
            } else if (response == "0") {
              $.toast("注册成功，请登录邮箱激活");
              setTimeout("window.location.href='showLogin'", 1000);
            }
          }
        })
      }
    </script>
  </body>

  </html>