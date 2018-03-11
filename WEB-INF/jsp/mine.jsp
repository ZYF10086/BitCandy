<%@ page contentType="text/html; charset=UTF-8" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="zh-cn">

    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>我的</title>
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- <link rel="shortcut icon" href="/favicon.ico"> -->
      <meta name="apple-mobile-web-app-capable" content="yes">
      <meta name="apple-mobile-web-app-status-bar-style" content="black">

      <link rel="stylesheet" href="css/sm.min.css">
      <link rel="stylesheet" href="css/sm-extend.min.css">
      <link rel="stylesheet" href="css/style.css">

    </head>

    <body>
      <div class="page" id="mine">
        <nav class="bar bar-tab">
          <a class="tab-item" href="/BitCandy">
            <span class="icon icon-gift"></span>
            <span class="tab-label">糖果</span>
          </a>
          <a class="tab-item" href="#">
            <span class="icon icon-home"></span>
            <span class="tab-label">资讯</span>
          </a>
          <a class="tab-item active" href="mine">
            <span class="icon icon-me"></span>
            <span class="tab-label">我的</span>
          </a>
        </nav>

        <div class="content">
          <div class="list-block media-list mine">
            <ul>
              <li>
                <div class="item-content mine">
                  <div class="item-media"><img class="radius" src="https://dummyimage.com/250x250" style="width: 4rem;"></div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title mine">
                        <c:choose>
                          <c:when test='<%= session.getAttribute("name") != null %>'>
                            <%= session.getAttribute("name") %>
                          </c:when>
                          <c:otherwise>
                            <a href="showLogin">立即登录</a>
                          </c:otherwise>
                        </c:choose>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>

          <div class="list-block media-list mine">
            <ul>
              <li>
                <a href="sugar" class="item-link item-content">
                  <div class="item-media">
                    <span class="icon icon-gift"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title">我的糖果</div>
                    </div>
                  </div>
                </a>
              </li>

              <li>
                <a href="telephone" class="item-link item-content">
                  <div class="item-media">
                    <span class="icon icon-phone"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title">手机号</div>
                      <div class="item-title info">
                        <span class="badge no"></span>
                        <c:choose>
                          <c:when test='<%= session.getAttribute("phone") != null %>'>
                            <%= session.getAttribute("phone") %>
                          </c:when>
                          <c:otherwise>
                            请绑定
                          </c:otherwise>
                        </c:choose>
                      </div>
                    </div>
                  </div>
                </a>
              </li>

              <li>
                <a href="third" class="item-link item-content">
                  <div class="item-media">
                    <span class="icon icon-message"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title">关于糖果</div>
                    </div>
                  </div>
                </a>
              </li>

              <li>
                <a href="install" class="item-link item-content">
                  <div class="item-media">
                    <span class="icon icon-settings"></span>
                  </div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title">设置</div>
                    </div>
                  </div>
                </a>
              </li>
            </ul>
          </div>
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
    </body>

    </html>