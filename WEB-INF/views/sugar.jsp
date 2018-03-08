<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>我的糖果</title>
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">

  <link rel="stylesheet" href="css/sm.min.css">
  <link rel="stylesheet" href="css/sm-extend.min.css">
  <link rel="stylesheet" href="css/style.css">

</head>

<body>
  <div class="page" id="sugar">
    <header class="bar bar-nav bit">
      <h1 class="title bit">我的糖果</h1>
    </header>
    <nav class="bar bar-tab">
      <a class="tab-item" href="/BitCandy">
        <span class="icon icon-home"></span>
        <span class="tab-label">活动</span>
      </a>
      <a class="tab-item active" href="sugar">
        <span class="icon icon-gift"></span>
        <span class="tab-label">糖果</span>
      </a>
      <a class="tab-item" href="mine">
        <span class="icon icon-me"></span>
        <span class="tab-label">我的</span>
      </a>
    </nav>

    <div class="content">
      <div class="card">
        <div class="card-header">总资产(¥)</div>
        <div class="card-content">
     	    <c:choose>
               	<c:when test='<%= session.getAttribute("name") != null %>' >
          			<div class="card-content-inner text-center bit">≈ <c:out value='${String.format("%.2f", total)}' /></div>
				</c:when>
				<c:otherwise>
					<div class="card-content-inner text-center bit"><a href="showLogin" style="color: #959595;font-size: 1rem;">登录查看</a></div>
				</c:otherwise>
			</c:choose>

        </div>
      </div>
      <div class="list-block media-list">
        <ul>

		<c:forEach var="item" items="${candy}">
          <li>
            <a href="${item.key}" class="item-link item-content">
              <div class="item-media"><img src="https://dummyimage.com/50x50" style="width: 2.5rem;"></div>
              <div class="item-inner">
                <div class="item-title-row">
                  <div class="item-title type"><c:out value="${item.key}" /></div>
                  <div class="item-title price"><c:out value='${String.format("%.2f", item.value[0])}' /></div>
                </div>
                <div class="item-title change pull-right">≈ ¥ <c:out value='${String.format("%.2f", item.value[1])}' /></div>
              </div>
            </a>
          </li>
		</c:forEach>

        </ul>
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
</body>

</html>