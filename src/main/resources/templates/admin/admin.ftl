<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.min.js"></script>
    <link href="/css/admin.css" rel="stylesheet" type="text/css" />
    <link href="/css/animate.css" rel="stylesheet" type="text/css" />
</head>
<style>
    #leftList a{text-decoration: none;color: white;}
</style>
<body>
<div id="main">

    <div id="topl" >

        <h2><span class="white line ib  center">天狼后台管理系统</span></h2>

    </div>
    <div id="topr" >
        <div>
            <span style="color: white;text-align: left;line-height: 50px;text-indent: 1em;float: left">
                欢迎：${userSession.account}
            </span>
            <span class="white line ib  fright">
                安全退出
            </span>
        </div>
        <#--<h3 style="color: white;text-align: left;line-height: 50px;text-indent: 1em;">欢迎：蔡徐坤&lt;#&ndash;&ndash;&gt;</h3>-->
        <#--<h4><span class="white line ib  fright" onClick=logout()>安全退出</span><span class="white line ib  fright" onClick="goindex()">首页</span></h4>-->

    </div>

    <div id="left">

        <div id="adminInfo">
            <img src="/head-img/d.jpg" alt="" width="195" height="175" class="img-circle">
        </div>

        <div id="leftList" class="white" <#--onClick="checkSession()"-->>
            <ul id="home"class="mt-5"><li class="mt-2" onClick="javascript:history.go(0)">Home(主页)</li></ul>
            <ul id="equip" ><li class="mt-2">店铺管理</li></ul>
            <div id="equipDiv" class="none mt-2">
                <ol><li class="mt-2">商店列表</li></ol>
                <ol><li class="mt-2">开店申请</li></ol>
            </div>

            <!--玩家点击够买付款完毕有条未读订单查看-->
            <ul id="uuid"><li class="mt-2">Order(订单)</li></ul>
            <div id="uuidDiv"  class="none mt-2">
                <ol><li class="mt-2"><a href="/sys/toOrder" target="iframe">订单查询</a></li></ol>
                <ol><li class="mt-2">所有订单</li></ol>
            </div>
            <ul id="userDm"><li class="mt-2">UserDm(玩家)</li></ul>
            <div id="userDmDiv"  class="none mt-2">
                <ol><li class="mt-2" >玩家管理</li></ol>

            </div>

            <ul id="guanli" ><li class="mt-2">管理员管理</li></ul>
            <div id="equipDiv" class="none mt-2">
                <ol><li class="mt-2" onClick="addEquip()">订单管理</li></ol>
                <ol><li class="mt-2" onClick="equip()">装备管理</li></ol>
            </div>
            <ul id="guanli" ><li class="mt-2">(user center)个人中心</li></ul>
            <div id="equipDiv" class="none mt-2">
                <ol><li class="mt-2"><a href="/sys/toCenter" target="iframe">个人信息管理</a></li></ol>
            </div>

        </div>
    </div>
    <div id="right">
        <iframe  name="iframe" src="/sys/main">
        </iframe>
    </div>
</div>
<script type="text/javascript" src="/js/admin.js"></script>
</body>
</html>