<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
    <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

    <title>首页</title>
</head>
<body>
<header class="header">
    <div class="brand_img_box">
        <img src="${pageContext.request.contextPath}/img/" alt="" class="brand_img">
    </div>
    <div class="mes_box">
        <div class="func_box">
            <ul>
                <div class="show-flex">
                    <li><a href="#">登录</a></li>
                    <li><a href="#">注册</a></li>
                </div>
                <div class="hide">
                    <li>欢迎, <a href="#">XXX</a></li>
                </div>
                <li><a href="#">购物车</a></li>
                <li><a href="#">客户服务</a></li>
            </ul>
        </div>
    </div>
</header>
<div class="content">
    <div class="search_box">
        <form action="" method="get" class="search_box_form">
            <input type="text" class="search_text" name="" placeholder="请输入要搜索的商品...">
            <div class="search_btn_box">
                <button type="submit"><i class="fas fa-search"></i></button>
            </div>
        </form>
    </div>

    <div class="nav_box">
        <div class="navigation">
            <div class="navigation-title">
                <h3>商品种类</h3>
            </div>
            <ul class="navigation-content">
<%--                <c:forEach var="types" items="#{goodstype}">--%>
                    <li class="navigation-items" data-index="1">手机/运行商/数码</li>
<%--                </c:forEach>--%>
            </ul>
        </div>

        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">Slide 1</div>
                <div class="swiper-slide">Slide 2</div>
                <div class="swiper-slide">Slide 3</div>
            </div>
            <!-- 如果需要分页器 -->
            <div class="swiper-pagination"></div>
            <!-- 如果需要导航按钮 -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </div>

    <div class="hot-box">
        <div class="hot-title">
            <h2>热销商品</h2>
        </div>
        <div class="hot-navigation">
<%--            <c:forEach var="goods" items="#{hgoods}" begin="1" end="8" step="1">--%>
                <div class="img-box">
                    <a href=""><img src="${pageContext.request.contextPath}/img/9b8f02afe9a8dfc1.jpg.webp" alt=""></a>
                </div>
<%--            </c:forEach>--%>
        </div>
    </div>

    <div class="recommend-box">
        <div class="recommend-title">
            <h2>推荐商品</h2>
        </div>
        <div class="goods-box">
            <c:forEach items="${rgoods}" var="goods" begin="1" end="4" step="1">
                <div class="thumb-goods">
                    <div class="img-box"><img src="${pageContext.request.contextPath}/img/9b8f02afe9a8dfc1.jpg.webp"
                                              alt=""></div>
                    <div class="goods-info">
                        <p class="goods-info-title"><span>testing title</span></p>
                        <p class="goods-info-price">
                            <del>￥18</del>
                            <span>￥16</span></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="footer-container">
        <div class="left-col">
            <img src="logo.png" alt="" class="logo">
            <div class="social-media">
                <a href="#"><i class="fab fa-weixin"></i></a>
                <a href="#"><i class="fab fa-weibo"></i></a>
                <a href="#"><i class="fab fa-qq"></i></a>
                <a href="#"><i class="fab fa-amazon"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <p class="rights-text">© 2020 Created By Jimmy All Rights Reserved.</p>
        </div>

        <div class="right-col">
            <h1>订阅我们</h1>
            <div class="border"></div>
            <p>输入你的邮箱地址，我们会为你提供新产品消息</p>
            <form action="" class="newsletter-form">
                <input type="text" class="txtb" placeholder="邮箱">
                <input type="submit" class="btn" value="提交">
            </form>
        </div>
    </div>
</footer>


<script>
    var mySwiper = new Swiper('.swiper-container', {
        direction: 'horizontal', // 垂直切换选项
        loop: true, // 循环模式选项

        // 如果需要分页器
        pagination: {
            el: '.swiper-pagination',
        },

        // 如果需要前进后退按钮
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

        // 如果需要滚动条
        scrollbar: {
            el: '.swiper-scrollbar',
        },
    });
</script>
</body>
</html>