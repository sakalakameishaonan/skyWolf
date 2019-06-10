<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <style type="text/css">
        ul,ol{list-style: none;}
        span{color: #0058af;}
        table td{padding: 4px 35px;}
    </style>
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
        <li >
            <a href="#ding" data-toggle="tab">
                订单信息
            </a>
        </li>
        <li >
            <a href="#buy" data-toggle="tab">
                代练信息
            </a>
        </li>
        <li>
            <a href="#mai" data-toggle="tab">
                买家信息
            </a>
        </li>
        <li>
            <a href="#shou" data-toggle="tab">
                卖家信息
            </a>
        </li>
    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="ding">
            <div style="text-align: center;">
                <div align="center" style="width:60% ;margin: 50px auto; box-shadow: 0px 0px 8px rgba(41,56,70,0.6);padding-top: 20px;padding-bottom: 46px;">
                    <table align="center;">
                        <tr >
                            <td >订单编号: <span>${order.id}</span></td>
                            <td>卖家： <span>${order.shop.shopname}</span></td>
                        </tr>
                        <tr >
                            <td>代练内容： <span>${order.begin} - ${order.end}</span></td>
                            <td>接单店： <span>${order.shop.shopId}</span></td>
                        </tr>
                        <tr>
                            <td>联系方式: <span>${order.telephone}</span></td>
                            <td>下单时间： <span>${order.orderDate?string('yyyy-MM-dd')}</span></td>
                        </tr>
                        <tr>
                            <td>游戏账号: <span>${order.gaccount}</span></td>
                            <td>游戏密码： <span>${order.gpassword}</span></td>
                        </tr>
                        <tr>
                            <td>代练费用: <span>${order.price}</span></td>
                            <td>订单状态： <span>${order.state}</span></td>
                        </tr>
                        <tr>
                            <td>预计完成时间：<span>${order.overtime?string('yyyy-MM-dd')}</span></td>
                            <td>描述: <span>${order.desc}</span></td>
                        </tr>

                    </table>

                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="buy" >

           <h3> 下单账号记录</h3>

            <div class="row" style="margin-left: 30%;">
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
                        <img src="/head-img/d.jpg" alt="" width="250" height="225">
                        <div class="caption">
                            <h3>首页截图</h3>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
                        <img src="/head-img/d.jpg" alt="" width="250" height="225">
                        <div class="caption">
                            <h3>段位截图</h3>
                        </div>
                    </div>
                </div>
            </div>

            <div style="font-weight: bold;font-size: 16px;">
                <p>账号金币： <span>${order.orderStart.golds}</span></p>
                <p>账号点券： <span>${order.orderStart.tickets}</span></p>
                <p>账号钻石： <span>${order.orderStart.diamonds}</span></p>
                <p>审核人： <span>${order.orderStart.checkerId}</span></p>
            </div>
            <hr>
           <h3> 订单完成账号记录</h3>

            <div class="row" style="margin-left: 30%;">
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
                        <img src="/head-img/d.jpg" alt="" width="250" height="225">
                        <div class="caption">
                            <h3>首页截图</h3>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
                        <img src="/head-img/d.jpg" alt="" width="250" height="225">
                        <div class="caption">
                            <h3>段位截图</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div style="font-weight: bold;font-size: 16px;">
                <p>账号金币： <span>${order.orderEnd.golds}</span></p>
                <p>账号点券： <span>${order.orderEnd.tickets}</span></p>
                <p>账号钻石： <span>${order.orderEnd.diamonds}</span></p>
                <p>审核人： <span>${order.orderEnd.checkerId}</span></p>
            </div>
            <br><br><br>
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