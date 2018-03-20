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
      <link rel="stylesheet" href="css/minirefresh.min.css" />
      <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
      <div class="page" id="index">
        <nav class="bar bar-tab">
          <a class="tab-item active" href="/BitCandy">
            <span class="icon icon-gift"></span>
            <span class="tab-label">糖果</span>
          </a>
          <a class="tab-item" href="information">
            <span class="icon icon-home"></span>
            <span class="tab-label">比特学堂</span>
          </a>
          <a class="tab-item" href="mine">
            <span class="icon icon-me"></span>
            <span class="tab-label">我的</span>
          </a>
        </nav>
        <div class="content">
          <div style="max-height: 7.5rem;overflow: hidden;"><img src="https://dummyimage.com/375x180" style="width: 100%;"></div>
          <div id="minirefresh" class="minirefresh-wrap">
            <div class="minirefresh-scroll list-block media-list bit">
              <ul class="index">
                <li class="index">
                  <a href="#" class="item-link item-content">
                    <div class="item-media"><img src="https://dummyimage.com/250x250" style="width: 1.8rem;"></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title index">BTC叫你领糖果啦</div>
                        <div class="item-after">已有20人参与</div>
                      </div>
                      <div class="item-text">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh</div>
                    </div>
                  </a>
                </li>

                <li class="index">
                  <a href="#" class="item-link item-content">
                    <div class="item-media"><img src="https://dummyimage.com/250x250" style="width: 1.8rem;"></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title index">BTC叫你领糖果啦</div>
                        <div class="item-after">已有20人参与</div>
                      </div>
                      <div class="item-text">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh</div>
                    </div>
                  </a>
                </li>

                <li class="index">
                  <a href="#" class="item-link item-content">
                    <div class="item-media"><img src="https://dummyimage.com/250x250" style="width: 1.8rem;"></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title index">BTC叫你领糖果啦</div>
                        <div class="item-after">已有20人参与</div>
                      </div>
                      <div class="item-text">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh</div>
                    </div>
                  </a>
                </li>

                <li class="index">
                  <a href="#" class="item-link item-content">
                    <div class="item-media"><img src="https://dummyimage.com/250x250" style="width: 1.8rem;"></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title index">BTC叫你领糖果啦</div>
                        <div class="item-after">已有20人参与</div>
                      </div>
                      <div class="item-text">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh</div>
                    </div>
                  </a>
                </li>

                <li class="index">
                  <a href="#" class="item-link item-content">
                    <div class="item-media"><img src="https://dummyimage.com/250x250" style="width: 1.8rem;"></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title index">BTC叫你领糖果啦</div>
                        <div class="item-after">已有20人参与</div>
                      </div>
                      <div class="item-text">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh</div>
                    </div>
                  </a>
                </li>

                <li class="index">
                  <a href="#" class="item-link item-content">
                    <div class="item-media"><img src="https://dummyimage.com/250x250" style="width: 1.8rem;"></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title index">BTC叫你领糖果啦</div>
                        <div class="item-after">已有20人参与</div>
                      </div>
                      <div class="item-text">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或hhhhhhhhhhhhhhhhhhhh</div>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <script src="js/zepto.min.js"></script>
      <script src="js/sm.min.js"></script>
      <script src="js/sm-extend.min.js"></script>
      <script src="js/minirefresh.min.js"></script>
      <script>
        // 判断网络是否可用，不可用时显示toast提示
        if (window.navigator.onLine == false) { $.toast("无可用网络，请检查网络设置~"); }
        // 引入任何一个主题后，都会有一个 MiniRefresh 全局变量
        var miniRefresh = new MiniRefresh({
          isScrollBar: false,

          container: '#minirefresh',
          down: {

            callback: function () {
              window.location.reload();

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
      <!-- <script>
    // 判断网络是否可用，不可用时显示toast提示
    if (window.navigator.onLine == false) { $.toast("无可用网络，请检查网络设置~"); }
    $.init();
    // 加载flag
    var loading = false;
    //数据的条数
    var c = <c:out value="${result.size()}" />;
    // 最多可加载的条目
    var maxItems = c;
    // 每次加载添加多少条目
    var itemsPerLoad = 99999;
    //数据库结果
    var resultArray = new Array();
    for (var k = 0; k < c; k++) {
      resultArray[k] = new Array();
    }
    var cardNum = 0;
    function getData() {
      var count = 0;
      <c:forEach items="${result}" var="activity" >
        resultArray[count][0] = '<c:out value="${activity.getType()}" />';
          resultArray[count][1] = "<c:out value='${activity.getTitle()}' />";
          resultArray[count][2] = <c:out value="${activity.getInterestRate()}" />;
          resultArray[count][3] = <c:out value="${activity.getMember()}" />;
          resultArray[count][4] = <c:out value="${activity.getIsHot()}" />;
        count++;
        </c:forEach >
      }
    //获取数据库数据
    getData();
    function addItems(number, lastIndex) {
      // 生成新条目的HTML
      var html = '';
      var isHot;
      for (var i = lastIndex; i < lastIndex + number; i++) {
        if (i < c) {
          if (resultArray[i][4] == "1") {
            isHot = '<span class="bit-hot">HOT</span>';
          } else {
            isHot = '';
          }
          html +=
            '<div class="card">'
            + '<div class="card-content">'
            + '<div class="list-block media-list">'
            + '<ul>'
            + '<li>'
            + isHot
            + '<a href="#" class="item-link item-content">'
            + '<div class="item-media">'
            + '<img src="https://dummyimage.com/50x50" width="50">'
            + '</div>'
            + '<div class="item-inner">'
            + '<div class="item-title-row">'
            + '<div class="item-title bit">' + resultArray[i][0] + '</div>'
            + '<div class="item-subtitle bit">' + resultArray[i][3] + '人已登记</div>'
            + '</div>'
            + '<div class="item-subtitle bit">“' + resultArray[i][1] + '”</div>'
            + '</div>'
            + '</a>'
            + '</li>'
            + '</ul>'
            + '</div>'
            + '</div>'
            + '</div>';
          cardNum++;
        }
      }
      // 添加新条目
      $('.infinite-scroll').append(html);

    }
    //预先加载5条
    addItems(itemsPerLoad, 0);
    // 上次加载的序号
    var lastIndex = cardNum;
    // 注册'infinite'事件处理函数
    $(document).on('infinite', '.infinite-scroll', function () {
      // 如果正在加载，则退出
      if (loading) return;
      // 设置flag
      loading = true;
      // 模拟0.5s的加载过程
      setTimeout(function () {
        // 重置加载flag
        loading = false;
        if (lastIndex >= maxItems) {
          // 加载完毕，则注销无限加载事件，以防不必要的加载
          $.detachInfiniteScroll($('.infinite-scroll'));
          // 删除加载提示符
          $('.infinite-scroll-preloader').remove();
          // 加载完毕提示
          $('#end').append("————我是有底线的————")
          return;
        }
        // 更新最后加载的序号
        lastIndex = $('.content-card li').length;
        //容器发生改变,如果是js滚动，需要刷新滚动
        $.refreshScroller();
      }, 500);
    });

    // $.init();
    // $.initPullToRefresh('.pull-to-refresh-content');
    // // 添加'refresh'监听器
    // $(document).on('refresh', '.pull-to-refresh-content', function (e) {
    //   // 模拟2s的加载过程
    //   window.location.reload();
    //   window.onload = function () {
    //     $.pullToRefreshDone('.pull-to-refresh-content');
    //   }
    //   $.destroyPullToRefresh(ptrContent) //销毁/禁用 下拉刷新
    // });
  </script>
  <script>
    $(function () {
      // 页数
      var page = 0;
      // 每页展示10个
      var size = 10;

      // dropload
      $('.content-block').dropload({
        scrollArea: window,
        domUp: {
          domClass: 'dropload-up',
          domRefresh: '<div class="dropload-refresh">↓下拉刷新-自定义内容</div>',
          domUpdate: '<div class="dropload-update">↑释放更新-自定义内容</div>',
          domLoad: '<div class="dropload-load"><span class="loading"></span>加载中-自定义内容...</div>'
        },
        domDown: {
          domClass: 'dropload-down',
          domRefresh: '<div class="dropload-refresh">↑上拉加载更多-自定义内容</div>',
          domLoad: '<div class="dropload-load"><span class="loading"></span>加载中-自定义内容...</div>',
          domNoData: '<div class="dropload-noData">暂无数据-自定义内容</div>'
        },
        loadUpFn: function (me) {

              // var result = '';
              // for (var i = 0; i < data.lists.length; i++) {
              //   result += '<a class="item opacity" href="' + data.lists[i].link + '">'
              //     + '<img src="' + data.lists[i].pic + '" alt="">'
              //     + '<h3>' + data.lists[i].title + '</h3>'
              //     + '<span class="date">' + data.lists[i].date + '</span>'
              //     + '</a>';
              // }
              // 为了测试，延迟1秒加载
              setTimeout(function () {
                window.location.reload();
                me.resetload();
                // 重置页数，重新获取loadDownFn的数据
                page = 0;
                // 解锁loadDownFn里锁定的情况
                me.unlock();
                me.noData(false);
              }, 1000);
        },
        threshold: 50
      });
    });
  </script> -->
    </body>

    </html>