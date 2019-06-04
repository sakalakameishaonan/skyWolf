<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>天狼代练平台--全宇宙最好的游戏代练平台</title>

    <link type="text/css" href="/static/css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/style.css" type="text/css">
    <link rel="icon" href="/static/imgs/title/tl.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="/static/css/recommend.css">
    <link rel="stylesheet" type="text/css" href="/static/css/navigation.css">
    <script src="webjars/jquery/3.2.1/dist/jquery.js"></script>

</head>
<body>


<#include "top.ftl">
<#include "show.ftl">
<#include "footer.ftl">



<div class="suspension">
    <div class="suspension-box">
        <a href="#" class="a a-service "><i class="i"></i></a>
        <a href="javascript:;" class="a a-service-phone "><i class="i"></i></a>
        <a href="javascript:;" class="a a-qrcode"><i class="i"></i></a>
        <a href="#" class="a a-cart"><i class="i"></i></a>
        <a href="javascript:;" class="a a-top"><i class="i"></i></a>
        <div class="d d-service">
            <i class="arrow"></i>
            <div class="inner-box">
                <div class="d-service-item clearfix">
                    <a  href="tencent://message/?uin=2337812135" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3 >咨询在线客服</h3></a>
                </div>
            </div>
        </div>
        <div class="d d-service-phone">
            <i class="arrow"></i>
            <div class="inner-box">
                <div class="d-service-item clearfix">
                    <span class="circle"><i class="i-tel"></i></span>
                    <div class="text">
                        <p>服务热线</p>
                        <p class="g number">4001-234-567</p>
                    </div>
                </div>
                <div class="d-service-intro clearfix">
                    <p><i></i>功能和特性</p>
                    <p><i></i>价格和优惠</p>
                    <p><i></i>获取内部资料</p>
                </div>
            </div>
        </div>
        <div class="d d-qrcode">
            <i class="arrow"></i>
            <div class="inner-box">
                <div class="qrcode-img"><img src="images/side_ewm.jpg" alt=""></div>
                <p>微信服务号</p>
            </div>
        </div>

    </div>
</div>
<script src="/static/js/index.js"></script>
</body>
</html>