<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/iframe.css">
    <link rel="stylesheet" href="/webjars/bootstrap/4.1.0/css/bootstrap.min.css">
    <script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        *{margin: 0;padding: 0;}
        img:hover{cursor: pointer;}
        input{border: 1px steelblue solid;
            height: 25px;
            border-radius: 3px;
            text-align: center;
            margin: 10px;}
    </style>
    <script type="text/javascript">
        $(function () {

            var msg = "${msg}";
            if (msg != null && msg != ""){
                alert(msg);
            }

            $("#img_btn").click(function () {
                $("[name='headimg1']").click();
            });

            $("[name='headimg1']").change(function(){
                var file = this.files[0];
                var path = URL.createObjectURL(file);
                $("#img_btn").attr("src",path);
            });
            
        });
    </script>
</head>
<body>
<div style="background: #f4f6f9;margin-bottom: 15px;">
    <p align="left" style="height: 38px;line-height: 38px;text-indent: 1em;"><span class="glyphicon glyphicon-home"></span> 首页<span class="	glyphicon glyphicon-chevron-right">&nbsp;</span> 个人中心</p>
</div>
<div align="center">
    <div>
        <h2 style="font-family: STXingkai;font-size: 55px;margin-bottom: 50px;">个人信息修改</h2>
    </div>

    <form action="/sys/doUpdateEmp"  method="post" enctype="multipart/form-data">
     <div style="vertical-align: middle;font-size: 18px;">
         <div style="display: inline-block;vertical-align: middlel;margin-right: 20px;">
             <img src="${employee.headimg}" alt="" width="350" id="img_btn" title="点击更换头像" class="img-circle">
             <input type="file" id="file" name="headimg1" style="display: none;">
         </div>
         <div style="display: inline-block;vertical-align: bottom">

             <input type="hidden" name="eid" value="${employee.eid}">
             <table>
                 <tr>
                     <td>昵&nbsp;&nbsp;称：</td>
                     <td><input type="text" name="ename" value="${employee.ename}"></td>
                 </tr>
                 <tr>
                     <td>  联系电话：</td>
                     <td><input type="text" name="phone" value="${employee.phone}"></td>
                 </tr>
                 <tr>
                     <td>邮&nbsp;&nbsp;箱：</td>
                     <td><input type="text" name="email" value="${employee.email}"></td>
                 </tr>
                 <tr>
                     <td>地&nbsp;&nbsp;址：</td>
                     <td><input type="text" name="address" value="${employee.address}"></td>
                 </tr>
             </table>
         </div>
     </div>
        <input type="submit" value="COMMIT" class="btn" style="background: none;border: 1px steelblue solid;font-weight: bold;margin-top: 20px;">
        <input type="reset" value="REST" class="btn" style="background: none;border: 1px steelblue solid;font-weight: bold;margin-top: 20px;">
    </form>
</div>
</body>
</html>