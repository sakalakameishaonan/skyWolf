<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/iframe.css">
    <link rel="stylesheet" href="/webjars/bootstrap/4.1.0/css/bootstrap.min.css">
    <script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center" class="top-ipt">
    <div style="background: #f4f6f9;margin-bottom: 15px;">
        <p align="left" style="height: 38px;line-height: 38px;text-indent: 1em;"><span class="glyphicon glyphicon-home"></span> 首页<span class="	glyphicon glyphicon-chevron-right"></span> 订单管理</p>
    </div>
    <div class="top-ipt-search">
        <form action="/sys/toOrder" method="post">
            <input type="hidden" name="pageNow">
            <input type="hidden" name="go">
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
                        <td><a href="/sys/doQueryDetails?id=${id}" class="text-muted">查看详情</a></td>
                    </tr>
                </#list>
            </tbody>
        </table>
    </div>
    <div align="left;" style="text-align: left;width: 90%;font-size: 14px;">
        ${pageInfo.total}条&nbsp;&nbsp;&nbsp;&nbsp;当前第${pageInfo.pageNum}/${pageInfo.pages}页
    </div>
    <div align="center" id="page-div">
        <input type="button" value="首页" p="1">
        <input type="button" value="上一页" p="${pageInfo.prePage}">
        <input type="button" value="下一页" p="${pageInfo.nextPage}">
        <input type="button" value="尾页" p="${pageInfo.pages}">
        <input type="text" name="goNum" value="${go}">
        <input type="button" value="GO">
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    $(function () {
        $("tr").each(function () {
            var value = $(this).find("td").eq(0).text();
            <#--success warning danger -->
            if (value == 1){
                $(this).attr("class","success");
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

        $("#page-div [type='button']").click(function () {
            var pageNow = "${pageInfo.pageNum}";
            var button = $(this).val();
            if (pageNow == 1 && button =="首页" || pageNow == "${pageInfo.pages}" && button == "尾页"
            || pageNow == 1 && button == "上一页" || pageNow == "${pageInfo.pages}" && button == "下一页"
            || button == "GO" &&   $("[name='goNum']").val() < 1
            || button == "GO" &&   $("[name='goNum']").val() > "${pageInfo.pages}"
            || button == "GO" &&   $("[name='goNum']").val() == "${pageInfo.pageNum}"){
                return;
            }
            if (button == "GO"){
                $("[name='pageNow']").val($("[name='goNum']").val());
                $("[name='go']").val($("[name='goNum']").val());
            } else {
                $("[name='pageNow']").val($(this).attr("p"));
            }

            $("form").submit();
        });
    });
</script>