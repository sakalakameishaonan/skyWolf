<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="webjars/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/webjars/bootstrap/4.1.0/css/bootstrap.min.css">
    <script type="text/javascript" src="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>
    <div align="center" class="top-ipt">
        <div style="background: #f4f6f9;margin-bottom: 15px;">
            <p align="left" style="height: 38px;line-height: 38px;text-indent: 1em;"><span class="glyphicon glyphicon-home"></span> 首页<span class="	glyphicon glyphicon-chevron-right"></span> 客户服务</p>
        </div>
    </div>
    <div align="center" style="width: 90%" id="mid-div">
        <table width="100%;" class="table table-hover">
            <thead>
            <tr class="active">
                <th width="90" style="text-align: center;">编号</th>
                <th width="90" style="text-align: center;">订单编号</th>
                <th width="90" style="text-align: center;">代练游戏</th>
                <th width="90" style="text-align: center;">接单店</th>
                <th width="90" style="text-align: center;">代练费用</th>
                <th width="90" style="text-align: center;">订单状态</th>
                <th width="90" style="text-align: center;">操作</th>
            </tr>
            </thead>
            <tbody>
            <#list pageInfo.list as o>
                <tr>
                    <td>${o_index+1}</td>
                    <td>${o.id}</td>
                    <td>${o.game.gameName}</td>
                    <td>${o.shop.shopname}</td>
                    <td>${o.price}</td>
                    <td>
                        <#if o.state==1>已下单
                        <#else>已提交
                        </#if>
                    </td>
                    <td><a href="/sys/doQueryDetails?id=${o.id}" class="text-muted">查看详情</a></td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</body>
</html>