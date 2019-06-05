<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link href="/css/iframe.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery-1.12.4.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("h1").show("fast","linear");
        });
    </script>
</head>
<body>
<div align="center" class="top-ipt">
    <div style="background: #f4f6f9;margin-bottom: 15px;">
        <p align="left" style="height: 38px;line-height: 38px;text-indent: 1em;">
            <span class="glyphicon glyphicon-home"></span>
            首页
            <span class="	glyphicon glyphicon-chevron-right"></span>
            订单管理
            <span class="	glyphicon glyphicon-chevron-right"></span>
            订单详情
        </p>
    </div>

   <div style="height: 55px;">
       <h1 align="center" style="font-family: STXingkai;text-shadow: 0px 0px 8px rgba(41,56,70,0.6);display: none;">订单详情</h1>
   </div>

    <ul id="myTab" class="nav nav-tabs">
        <li class="active">
            <a href="#ding" data-toggle="tab">
                订单信息
            </a>
        </li>
        <li>
            <a href="#buy" data-toggle="tab">
                买家信息
            </a>
        </li>
        <li>
            <a href="#mai" data-toggle="tab">
                卖家信息
            </a>
        </li>
        <li>
            <a href="#shou" data-toggle="tab">
                售后
            </a>
        </li>
    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="ding">
            <h1>订单信息</h1>
        </div>
        <div class="tab-pane fade" id="buy">
            <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple
                TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
        </div>
        <div class="tab-pane fade" id="mai">
            <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
        </div>
        <div class="tab-pane fade" id="shou">
            <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
        </div>
    </div>
</div>
</body>
</html>