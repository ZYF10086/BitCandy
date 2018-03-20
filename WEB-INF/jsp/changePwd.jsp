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
                    <span class="icon icon-settings"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-input">
                      <input type="password" name="password" placeholder="设置新密码">
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
                      <input type="password" name="password2" placeholder="确认新密码">
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div class="content-block">
            <div class="col-50"><input type="button" onclick="formSubmit()" class="button button-big button-fill button-danger login disabled bit" value="确定" disabled="disabled"></div>
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
        var text = "password=" + $("[name=password]").val().toString() + "&password2=" + $("[name=password2]").val().toString();
        var pwd = $("input[name='password']").val();
        var repwd = $("input[name='password2']").val();
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
        $.ajax({
          data: text,
          type: "post",
          url: "/BitCandy/checkForPwd",
          success: function (response) {
            if (response == "1") {
              	$.toast("修改成功");
            setTimeout("window.location.href='showLogin'", 1000);     
            }
          }
        })                  
      }

      // 表单验证
      $('input').bind('input propertychange', function () {
        var pwd = $("input[name='password']").val();
        var repwd = $("input[name='password2']").val();
        var submit = $("input[type='button']");
        

        if (repwd != "" && pwd != "") {
          submit.removeClass("disabled");
          submit.removeAttr("disabled");

        }

        if (repwd == "" || pwd == "") {
          submit.addClass("disabled");
          submit.attr("disabled", "disabled");
        }
      })
    </script>
  </body>

  </html>