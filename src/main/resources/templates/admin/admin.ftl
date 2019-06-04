<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
    <link href="/static/css/admin.css" rel="stylesheet" type="text/css" />
    <link href="/static/css/animate.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="main">

    <div id="topl" >

        <h2><span class="white line ib  center">天狼后台管理系统</span></h2>

    </div>
    <div id="topr" >

        <h4><span class="white line ib  fright" onClick=logout()>安全退出</span><span class="white line ib  fright" onClick="goindex()">首页</span></h4>

    </div>

    <div id="left">

        <div id="adminInfo"></div>

        <div id="leftList" class="white" onClick="checkSession()">

            <ul id="home"class="mt-5"><li class="mt-2" onClick="javascript:history.go(0)">Home(主页)</li></ul>



            <ul id="equip" ><li class="mt-2">Shop(开店)</li></ul>
            <div id="equipDiv" class="none mt-2">
                <ul><li class="mt-2" onClick="addEquip()">添加装备</li></ul>
                <ul><li class="mt-2" onClick="equip()">装备管理</li></ul>
            </div>

            <!--玩家点击够买付款完毕有条未读订单查看-->
            <ul id="uuid"><li class="mt-2">Order(订单)</li></ul>
            <div id="uuidDiv"  class="none mt-2">
                <ul><li class="mt-2" onClick="addUuid()">添加卡密</li></ul>
                <ul><li class="mt-2" onClick="uuid()">查看卡密</li></ul>
            </div>
            <ul id="userDm"><li class="mt-2">UserDm(玩家)</li></ul>
            <div id="userDmDiv"  class="none mt-2">
                <ul><li class="mt-2" onClick="userDm()">玩家管理</li></ul>

            </div>

        </div>





    </div>
    <div id="right">
        <iframe  name="iframe" >




        </iframe>
    </div>

</div>

<script type="text/javascript" src="/static/js/admin.js"></script>
<script type="text/javascript">
    iframe.location.href="main.html";

</script>

</body>
</html>