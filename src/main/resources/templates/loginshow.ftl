<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="/css/loginshow.css">
    <script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".username").blur(function () {
                var name = $(this).val();
                if (name == "" || name == null) {
                    $(".resultname").html("用户名不能为空").css("color", "red");
                    $("input[name='username']").focus(function () {
                        $(this).val("");
                        $(".resultname").html("");
                    });
                }
            });
            $(".password").blur(function () {
                var pwd =$(this).val();
                if (pwd == "" || pwd == null) {
                    $(".resultname").html("请填写密码").css("color", "red");
                    $("input[name='pwd']").focus(function () {
                        $(this).val("");
                        $(".resultname").html("");
                    });
                }
            });


        });



        $(function () {
                var msg = "${msg}";
                if (msg.length>0) {
                    $(".resultname").html(msg).css("color","red");
                    $("input[name='username']").focus(function () {
                        $(this).val("");
                        $(".resultname").html("");
                    });
                    $("input[name='pwd']").focus(function () {
                        $(this).val("");
                        $(".resultname").html("");
                    });

                }


            }
        );

    </script>




</head>
<body>
<div class="login_title">
    <p><img src="/loginshow/logo.png" style="width:80px;height:80px;margin-right:30px;"/>天狼游戏代练网</p>
</div>
<div class="hf">
    <div class="login">
        <div class="login_main">
            <div class="main_left"></div>
            <div class="main_right">
                <div class="right_title">登录</div>
                <form action="/show/login" method="post" id="myform">
                    <div class="username">
                        <img src="/loginshow/username.png" alt="">
                        <input type="text" class="username" name="username" value="${username}" placeholder="请输入用户名/已验证手机">
                    </div>
                    <div class="password">
                        <img src="/loginshow/password.png" alt="">
                        <input type="password" class="password" name="pwd" placeholder="请输入密码">
                    </div>
                    <div class="yes_login">
                        <p align="center" class="resultname"> </p>
                        <a href="#" onclick="document.getElementById('myform').submit();return false;">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
                    </div>
                    <div class="threeLogin"><span>其他方式登录</span>&nbsp;&nbsp;&nbsp;<a class="nqq" href="/qqLogin"></a><a class="nwx"
                                                                                                                           href="javascript:;"></a>
                        <!--<a class="nwb"></a>-->
                    </div>
                    <p class="good-tips marginB10">
                         <span>还没有账号？<span>
                        <a href="/show/toadd" target="_blank" id="btnRegister">立即注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <a class="fr" href="#">忘记密码？</a>
                    </p>
                </form>
            </div>
        </div>

        <div class="login_footer">
            <p class="name">版权所有：天狼工作室</p>
            <p>建议浏览器：IE8及以上、360、谷歌、Firefox v22</p>
        </div>
    </div>
</div>


</body>
</html>