<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/iframe.css">
    <script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("tr").each(function () {
                var value = $(this).find("td").eq(0).text();
                <#--success warning danger -->
                if (value == 1){
                    $(this).addClass("success");
                };
                if (value==3 || value ==9){
                    $(this).addClass("danger");
                };
                if (value==5){
                    $(this).addClass("warning");
                };
                if (value==7){
                    $(this).addClass("info")
                };
            });

        });
    </script>
</head>
<body>
<div align="center" class="top-ipt">
    <div style="background: #f4f6f9;margin-bottom: 15px;">
        <p align="left" style="height: 38px;line-height: 38px;text-indent: 1em;"><span class="glyphicon glyphicon-home"></span> 首页<span class="	glyphicon glyphicon-chevron-right"></span> 订单管理</p>
    </div>
    <div class="top-ipt-search">
        <form action="/queryOrder" method="post">
            <input type="hidden" name="pageNow">
            <input type="text" name="id" placeholder="请输入订单编号" value="${id}">
            <input type="text" name="userId" placeholder="请输入用户编号" value="${userId}">
            <input type="text" name="shopId" placeholder="请输入商店编号" value="${shopId}">
            <br>
            <input type="date" name="sdate" value="${sdate}"> -
            <input type="date" name="edate" value="${edate}">
            <input type="submit" value="SEARCH" id="btn">
            <input type="reset" value="REST" id="rest">
        </form>
    </div>
    <div align="center" style="width: 90%" id="mid-div">
        <table width="100%;" class="table table-hover">
            <tr class="active">
                <th width="90" style="text-align: center;">编号</th>
                <th width="90" style="text-align: center;">订单编号</th>
                <th width="90" style="text-align: center;">代练游戏</th>
                <th width="90" style="text-align: center;">接单店</th>
                <th width="90" style="text-align: center;">代练费用</th>
                <th width="90" style="text-align: center;">订单状态</th>
                <th width="90" style="text-align: center;">操作</th>
            </tr>
            <#list orderList as o>
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
                    <td><a href="/doQueryDetails?id=${id}" class="text-muted">查看详情</a></td>
                </tr>
            </#list>
        </table>
    </div>
    <div align="left;" style="text-align: left;width: 90%;">
        ${page.count}条&nbsp;&nbsp;共${page.totalPage}页&nbsp;&nbsp;当前第${page.pageNow}页
    </div>
    <div align="center" id="page-div">
        <input type="button" value="首页">
        <input type="button" value="上一页">
        <input type="button" value="下一页">
        <input type="button" value="尾页">
        <input type="text" name="goNum" value="${goNum}">
        <input type="button" value="GO">
    </div>
</div>
</body>
</html>