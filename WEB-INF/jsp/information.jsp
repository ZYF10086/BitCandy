<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
    <html lang="zh-cn">

    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>比特学堂</title>
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
      <meta name="apple-mobile-web-app-capable" content="yes">
      <meta name="mobile-web-app-capable" content="yes">
      <meta name="apple-mobile-web-app-status-bar-style" content="black">
      <meta name="full-screen" content="yes">
      <meta name="x5-fullscreen" content="true">

      <link rel="stylesheet" href="css/sm.min.css">
      <link rel="stylesheet" href="css/sm-extend.min.css">
      <link rel="stylesheet" href="css/minirefresh.min.css" />
      <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
      <div class="page" id="index">
        <!-- <header class="bar bar-nav bit">
          <h1 class="title bit">比特学堂</h1>
        </header> -->
        <nav class="bar bar-tab">
          <a class="tab-item" href="/BitCandy">
            <span class="icon icon-gift"></span>
            <span class="tab-label">糖果</span>
          </a>
          <a class="tab-item active" href="information">
            <span class="icon icon-home"></span>
            <span class="tab-label">比特学堂</span>
          </a>
          <a class="tab-item external" href="mine">
            <span class="icon icon-me"></span>
            <span class="tab-label">我的</span>
          </a>
        </nav>
        <div class="content">
          <div id="minirefresh" class="minirefresh-wrap">
            <div class="minirefresh-scroll">
              <div style="max-height: 10rem;overflow: hidden;"><img src="images/7.jpg" style="width: 100%;"></div>
              <div id="passage"></div>

            </div>
          </div>
        </div>
      </div>
      <script type="text/javascript" src="js/zepto.min.js" charset="utf-8"></script>
      <script type="text/javascript" src="js/sm.min.js" charset="utf-8"></script>
      <script type="text/javascript" src="js/sm-extend.min.js" charset="utf-8"></script>
      <script src="js/minirefresh.min.js"></script>
      <script>
        // 判断网络是否可用，不可用时显示toast提示
        if (window.navigator.onLine == false) { $.toast("无可用网络，请检查网络设置~"); }
        function getInfo() {
          $.getJSON("/BitCandy/getInformation", function (data) {
            console.log(data);
            $.each(data, function (i, item) {
              $("#passage").append(
                '<div class="card bit"><div class="card-header">' + item.title + '</div><div class="card-content"><div class="card-content-inner info">' + item.content + '…</div></div><div class="card-footer"><span>' + item.addtime + '</span><a href="third/' + item.id + '" class="link">更多</a></div></div>'
              )
            });
          });
        }
        getInfo();

        // 引入任何一个主题后，都会有一个 MiniRefresh 全局变量
        var miniRefresh = new MiniRefresh({
          isScrollBar: false,
          container: '#minirefresh',
          down: {
            callback: function () {
              $("#passage").html("");//清空info内容
              getInfo();
              miniRefresh.endDownLoading();
            }
          },
          up: {
            callback: function () {
              // 上拉事件
              // 注意，由于默认情况是开启满屏自动加载的，所以请求失败时，请务必endUpLoading(true)，防止无限请求
              miniRefresh.endUpLoading(true);
            }
          }
        });
      </script>
    </body>

    </html>