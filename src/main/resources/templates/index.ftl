<!DOCTYPE html>
<html lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>天狼代练平台--全宇宙最好的游戏代练平台</title>

    <link type="text/css" href="/css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="icon" href="/imgs/title/tl.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="/css/recommend.css">
    <link rel="stylesheet" type="text/css" href="/css/navigation.css">
    <script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.js"></script>

</head>
<body>

<#--<script>-->
    <#--$(document).ready(function(){-->
        <#--$("#open").click(function() {-->
            <#--cover.style.display="block";   //显示遮罩层-->
            <#--modal.style.display="block";   //显示弹出层-->
        <#--})-->
        <#--$("#close").click(function() {-->
            <#--cover.style.display="none";   //隐藏遮罩层-->
            <#--modal.style.display="none";   //隐藏弹出层-->
        <#--})-->
    <#--})-->
<#--</script>-->
<#--<style type="text/css">-->
    <#--#cover{-->
        <#--position:absolute;-->
        <#--left:0px;-->
        <#--top:0px;-->
        <#--background:rgba(0, 0, 0, 0.4);-->
        <#--width:100%;  /*宽度设置为100%，这样才能使隐藏背景层覆盖原页面*/-->
        <#--height:100%;-->
        <#--filter:alpha(opacity=60);  /*设置透明度为60%*/-->
        <#--opacity:0.6;  /*非IE浏览器下设置透明度为60%*/-->
        <#--display:none;-->
        <#--z-Index:999;-->
    <#--}-->
    <#--#modal{-->
        <#--position:absolute;-->
        <#--width:500px;-->
        <#--height:500px;-->
        <#--top:50%;-->
        <#--left:50%;-->
        <#--background-color:#fff;-->
        <#--display:none;-->
        <#--cursor:pointer;-->
        <#--z-Index:9999;-->

    <#--}-->
<#--</style>-->
<#--<div id="body">-->
    <#--<div id="open">打开弹框</div>-->
<#--</div>-->
<#--<div id="cover">-->
<#--</div>-->
<#--<div id="modal">-->
    <#--<div id="close">关闭弹框-->
       <#--</div>-->
    <#--<P> <span>-->
            <#--您的个人信息不完全！建议您补全给人信息-->
            <#--</span></P>-->
    <#--<a href="#">前往补全个人信息</a>-->
<#--</div>-->

<#include "top.ftl">
<#include "show.ftl">
<#include "footer.ftl">



<div class="suspension">
    <div class="suspension-box">
        <a href="#" class="a a-service "><i class="i"></i></a>
        <a href="#" class="a a-service-phone "><i class="i"></i></a>
        <a href="#" class="a a-qrcode"><i class="i"></i></a>
        <a href="#" class="a a-cart"><i class="i"></i></a>
        <a href="#" class="a a-top"><i class="i"></i></a>
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
                <div class="qrcode-img"><img src="/images/side_ewm.jpg" alt=""></div>
                <p>微信服务号</p>
            </div>
        </div>

    </div>
</div>


<script src="/js/index.js"></script>
</body>
</html>