<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>密码登录</title>
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">

  <link rel="stylesheet" href="css/sm.min.css">
  <link rel="stylesheet" href="css/sm-extend.min.css">
  <link rel="stylesheet" href="css/style.css">

</head>

<body>
  <div class="page" id="login">
    <header class="bar bar-nav bit">
      <a class="icon icon-left pull-left back bit"></a>
      <h1 class="title bit">密码登录</h1>
    </header>

	
	
    <div class="content">
      <img class="bit-img" src="http://iph.href.lu/375x150?text=375x150">
      <form action="login" method=post >
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
        </ul>
      </div>
      <div class="content-block">
        <div class="row">
          <div class="col-50"><input type=submit class="button button-big button-fill button-danger login" value=登录></div>
          <div class="col-50"><a href="showRegister" class="button button-big button-fill button-success login">注册</a></div>
        </div>
      </form>  
	  
	  
        <div class="row">
          <div class="content-block-title login">点击登录即同意<a href="#" class="alert-text-title">《用户服务协议》</a></div>
          <div class="content-block-title login1"><a href="#">忘记密码？</a></div>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="js/zepto.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="js/sm.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="js/sm-extend.min.js" charset="utf-8"></script>
  <!-- 判断网络是否可用，不可用时显示toast提示 -->
  <script>
    if (navigator.onLine) 
       {} 
    else {$.toast("无可用网络，请检查网络设置~");}     
    if(<%= request.getParameter("status") %> == 1){
    	$.toast("没有这个用户");	
    }else if(<%= request.getParameter("status") %> == 2){
    	$.toast("您的账号还没有激活");	
    }else if(<%= request.getParameter("status") %> == 3){
    	$.toast("密码错误");	
    }
  </script>
  <!-- 登录验证 -->
  <script>
    $(function(){
      $(document).on('click','.alert-text-title', function () {
        $.alert('请检查后重新登录', '密码或用户名错误!');
      });
    })
  </script>
</body>

</html>