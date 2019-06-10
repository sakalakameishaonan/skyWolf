<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        ul{list-style: none;}
    </style>
</head>
<body>


<div style="text-align: center;">

    <div  style="width:60% ;margin: 50px auto; box-shadow: 0px 0px 8px rgba(41,56,70,0.6);padding-top: 20px;padding-bottom: 46px;">
        <ul style="padding-bottom: 40px;"><li class="lisa">信息统计</li></ul>
        <ul ><li class="lis">装备数量 ：<span id="equipNum"></span> 条</li><li class="lis">在售卡密 ：<span id="onsaleNum"></span> 张</li></ul>
        <ul><li class="lis">好友请求 ：<span id="friendlistNum"></span> 条</li><li class="lis"> 已售卡密 ：<span id="saleoutNum"></span> 张</li></ul>
        <ul><li class="lis">交互信息 ：<span id="messageNum"></span> 条</li><li class="lis"> 已用卡密 ：<span id="usedNum"></span> 张</li></ul>

        <ul><li class="lis">用户数量 ：<span id="userNum"></span> 人</li><li class="lis">玩家数量 ：<span id="playerNum"></span> 人</li></ul>

        <ul><li class="lis">vip1：<span id="vip1Num"></span> 人</li><li class="lis">vip2：<span id="vip2Num"></span> 人</li></ul>
        <ul><li class="lis">vip3：<span id="vip3Num"></span> 人</li><li class="lis">vip4：<span id="vip4Num"></span> 人</li></ul>
        <ul><li class="lis">vip5：<span id="vip5Num"></span> 人</li><li class="lis">vip6：<span id="vip6Num"></span> 人</li></ul>
        <ul><li class="lis">vip7：<span id="vip7Num"></span> 人</li><li class="lis">vip8：<span id="vip8Num"></span> 人</li></ul>

    </div>
</div>
</body>
</html>