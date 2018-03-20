<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
    <html lang="zh-cn">

    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>活动列表</title>
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
      <div class="page" id="index">
        <header class="bar bar-nav bit">
          <h1 class="title bit">比特学堂</h1>
        </header>
        <nav class="bar bar-tab">
          <a class="tab-item" href="/BitCandy">
            <span class="icon icon-gift"></span>
            <span class="tab-label">糖果</span>
          </a>
          <a class="tab-item active" href="information">
            <span class="icon icon-home"></span>
            <span class="tab-label">比特学堂</span>
          </a>
          <a class="tab-item" href="mine">
            <span class="icon icon-me"></span>
            <span class="tab-label">我的</span>
          </a>
        </nav>
        <div class="content">
          <img src="https://dummyimage.com/375x100" alt="" style="width: 100%; position: relative; z-index: 999;">
          <div class="content-block bit-index pull-to-refresh-content" data-distance="50">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
              <div class="preloader"></div>
              <div class="pull-to-refresh-arrow"></div>
            </div>
            <div class="content-card"></div>
            <!-- 加载提示符 -->
            <div class="infinite-scroll-preloader">
              <div class="preloader"></div>
            </div>
            <div id="end" style="text-align: center; font-size: .7rem;"></div>
          </div>
        </div>
      </div>
      <script type="text/javascript" src="js/zepto.min.js" charset="utf-8"></script>
      <script type="text/javascript" src="js/sm.min.js" charset="utf-8"></script>
      <script type="text/javascript" src="js/sm-extend.min.js" charset="utf-8"></script>
      <script>
        // 判断网络是否可用，不可用时显示toast提示
        if (window.navigator.onLine == false) { $.toast("无可用网络，请检查网络设置~"); }
        function getInfo() {
          $.getJSON("/BitCandy/getInfo", function (data) {
            
            $.each(data, function (i, item) {
              $("#activity").append(
                '<li class="index"><a href="#" class="item-link item-content"><div class="item-media"><img src="https://dummyimage.com/250x250" style="width: 1.8rem;"></div><div class="item-inner"><div class="item-title-row"><div class="item-title index">' + item.type + '</div><div class="item-after">已有' + item.member + '人参与</div></div><div class="item-text">' + item.title + '</div></div></a></li>'
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
              $("#activity").html("");//清空info内容
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