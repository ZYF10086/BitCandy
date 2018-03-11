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
  <meta name="apple-mobile-web-app-status-bar-style" content="black">

  <link rel="stylesheet" href="css/sm.min.css">
  <link rel="stylesheet" href="css/sm-extend.min.css">
  <link rel="stylesheet" href="css/style.css">

</head>
<body>
  <div class="page" id="index">
    <header class="bar bar-nav bit">
      <h1 class="title bit">活动列表</h1>
    </header>
    <nav class="bar bar-tab">
      <a class="tab-item active" href="/BitCandy">
        <span class="icon icon-gift"></span>
        <span class="tab-label">糖果</span>
      </a>
      <a class="tab-item" href="#">
        <span class="icon icon-home"></span>
        <span class="tab-label">资讯</span>
      </a>
      <a class="tab-item" href="mine">
        <span class="icon icon-me"></span>
        <span class="tab-label">我的</span>
      </a>
    </nav>
    <div class="content infinite-scroll ">
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
  <!-- 判断网络是否可用，不可用时显示toast提示 -->
  <script>
    if (navigator.onLine) 
       {} 
    else {$.toast("无可用网络，请检查网络设置~");}     
  </script>
  <script>
    // 加载flag
    var loading = false;
    
    //数据的条数
    var c = <c:out value="${result.size()}" />;

    // 最多可加载的条目
    var maxItems = c;

    // 每次加载添加多少条目
    var itemsPerLoad = 5;
    
    //数据库结果
    var resultArray = new Array();
    for(var k=0;k<c;k++){
      resultArray[k] = new Array();
    }
    
    var cardNum = 0;

    function getData(){
      var count = 0;
      <c:forEach items="${result}" var="activity" >
        resultArray[count][0] = '<c:out value="${activity.getType()}" />';
        resultArray[count][1] = "<c:out value='${activity.getTitle()}' />";
        resultArray[count][2] = <c:out value="${activity.getInterestRate()}" />;
        resultArray[count][3] = <c:out value="${activity.getMember()}" />;
        count++;
      </c:forEach>
    }
    
    //获取数据库数据
    getData();

    function addItems(number, lastIndex) {
      // 生成新条目的HTML
      var html = '';
      for (var i = lastIndex; i < lastIndex + number; i++) {
        if(i<c){
            html += 
                '<div class="card">'
            +	        '<div class="card-content">'
            +	        	'<div class="list-block media-list">'
            +	        		'<ul>'
            +	        			'<li>'
            +                   '<span class="bit-hot">HOT</span>'
            +	        				'<a href="third.html" class="item-link item-content">'
            +	        					'<div class="item-media">'
            +	        						'<img src="https://dummyimage.com/50x50" width="50">'
            +	        					'</div>'
            +	        					'<div class="item-inner">'
            +	        						'<div class="item-title-row">'
            +	        							'<div class="item-title bit">'+resultArray[i][0]+'</div>'
            +	        							'<div class="item-subtitle bit">'+resultArray[i][3]+'人已登记</div>'
            +                     '</div>' 
            +                     '<div class="item-subtitle bit">“'+resultArray[i][1]+'”</div>'
            +	        					'</div>'
            +	        				'</a>'
            +	        			'</li>'
            +	        		'</ul>'
            +	        	'</div>'
            +	        '</div>'
            +       '</div>';
            cardNum ++;
        }
      }
      // 添加新条目
      $('.infinite-scroll .content-card').append(html);

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
  </script>
  <script>
    $.init();
    $.initPullToRefresh('.pull-to-refresh-content');
    // 添加'refresh'监听器
    $(document).on('refresh', '.pull-to-refresh-content', function (e) {
      // 模拟2s的加载过程
      window.location.reload();
      window.onload = function() {
        $.pullToRefreshDone('.pull-to-refresh-content');
      }
      $.destroyPullToRefresh(ptrContent) //销毁/禁用 下拉刷新
    });
  </script>

</body>

</html>