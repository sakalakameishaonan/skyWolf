<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>注册</title>
    <meta http-equiv='content-type' content='text/html;charset=utf-8'/>
    <script type='text/javascript' src="/webjars/jquery/3.4.1/jquery.js"></script>
    <script type='text/javascript'>
        var code; //在全局定义验证码

        function createCode() {
            code = "";
            var codeLength = 4;//验证码的长度
            var checkCode = document.getElementById("code");
            var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
                'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');//随机数
            for (var i = 0; i < codeLength; i++) {//循环操作
                var index = Math.floor(Math.random() * 36);//取得随机数的索引（0~35）
                code += random[index];//根据索引取得随机数加到code上
            }
            checkCode.value = code;//把code值赋给验证码
        }

        //校验验证码
        function validate() {
            var inputCode = document.getElementById("input").value.toUpperCase(); //取得输入的验证码并转化为大写
            if (inputCode.length <= 0) { //若输入的验证码长度为0
                $(".resultcode").html("请填写验证码").css("color", "red");
                $("input[name='input']").focus(function () {
                    $(this).val("");
                    $(".resultcode").html("");
                }); //则弹出请输入验证码
            } else if (inputCode != code) { //若输入的验证码与产生的验证码不一致时
                $(".resultcode").html("验证码输入错误！@_@").css("color", "red");
                $("input[name='input']").focus(function () {
                    $(this).val("");
                    $(".resultcode").html("");
                });//则弹出验证码输入错误
                createCode();//刷新验证码
                document.getElementById("input").value = "";//清空文本框
            } else { //输入正确时
                $("input[type='button']").click(function () {
                    // $("form").attr("action","doadd");
                    $("form").submit();
                });
            }
        }


    </script>
    <script type="text/javascript" src="/js/jquery-1.12.4.js"></script>
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
                }else{
                    $.post("/aname",
                        {"username":username},
                        function (flag) {
                                if(flag){
                                    $("#resultname").html("用户名已存在！");
                            }
                        },"json")

                }
            });


            $(".password").blur(function () {
                var pwd = $(this).val();
                if (pwd == "" || pwd == null) {
                    $(".resultpwd").html("请填写密码").css("color", "red");
                    $("input[name='password']").focus(function () {
                        $(this).val("");
                        $(".resultpwd").html("");
                    });
                } else if (pwd.length < 6 || pwd.length > 16) {
                    $(".resultpwd").html("密码至少为8位!").css("color", "red");
                    $("input[name='password']").focus(function () {
                        $(this).val("");
                        $(".resultpwd").html("");
                    });
                }
            });


            $(".password1").blur(function () {
                var password = $(".password").val();
                var password1 = $(this).val();
                if (password != password1) {
                    $(".resultpwd1").html("密码前后不同!").css("color", "red");
                    $("input[name='password1']").focus(function () {
                        $(this).val("");
                        $(".resulpwd1").html("");
                    });
                }

            });

            $(".phone").blur(function () {
                var mobile = $(this).val();
                if (mobile.length == 0) {
                    $(".resultphone").html("手机号码不能为空!").css("color", "red");
                    $("input[name='phone']").focus(function () {
                        $(this).val("");
                        $(".resultphone").html("");
                    });
                    return false;
                }
                if (mobile.length != 11) {
                    $(".resultphone").html("请输入有效的手机号码，需是11位!").css("color", "red");
                    $("input[name='phone']").focus(function () {
                        $(this).val("");
                        $(".resultphone").html("");
                    });
                    return false;
                }

                var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
                if (!myreg.test(mobile)) {
                    $(".resultphone").html("请输入有效的手机号码!").css("color", "red");
                    $("input[name='phone']").focus(function () {
                        $(this).val("");
                        $(".resultphone").html("");
                    });

                    return false;
                }


            });

            $(".input").blur(function () {
                var code = $(this).val();
                if (code == "" || code == null) {
                    $(".resultcode").html("请填写验证码").css("color", "red");
                    $("input[name='input']").focus(function () {
                        $(this).val("");
                        $(".resultcode").html("");
                    });
                }

            });


        });
    </script>
    <style type='text/css'>

        body {

            background: #EDEDED;
        }

        .st {
            margin-top: 30px;
            width: 100%;
            position: fixed;
            background: #FFF0F5;
        }

        #code {
            font-family: Arial, 宋体;
            font-style: italic;
            color: blue;
            size: 12px;
            border: 0;
            padding: 2px 3px;
            letter-spacing: 8px;
            font-weight: bolder;
        }

        .login_title {
            height: 80px;
            text-align: center;
            margin-top: 30px;
            margin-left: 300px;
        }

        .login_title > p {
            color: black;
            font-size: 40px;
            font-weight: 600;
            margin-top: -8px;
            letter-spacing: 5px;
            text-align: left;
        }

        .login_footer {

            margin-left: -30px;
            text-align: center;
            padding-top: 20px;

        }

        .login_footer > p {
            font-size: 14px;
            color: black;
            line-height: 50px;
        }
    </style>
</head>

<body onload='createCode()'>
<div class="st">
    <table border=0>
        <div class="login_title">
            <p><img src="/loginshow/logo.png" style="width:80px;height:80px;margin-right:30px;"/>注册账户</p>
        </div>
    </table>
    <table border=0>
        <tr>
            <th width=700 height=400></th>
            <th>
                <form action="/show/doadd" method="post">
                    <table border=0 height=400>
                        <tr>
                            <th height=65><font size='4'>用 户 名</th>
                            <th><input type="text" style="height:40px" placeholder="请输入用户名" size=40 class="username"
                                       name="username"></th>
                            <th><p align="center" class="resultname"></p></th>
                        </tr>
                        <tr>
                            <th height=65><font size='4'>密 码</th>
                            <th><input type="password" name="password" class="password" style="height:40px"
                                       placeholder="密码长度为6~16字符" size=40 id="password">
                            </th>
                            <th><p align="center" class="resultpwd"></p></th>
                        </tr>
                        <tr>
                            <th height=65><font size='4'>确认密码</th>
                            <th><input type="password" style="height:40px" name="password1" class="password1"
                                       placeholder="请重新输入密码" size=40 id="password1">
                            </th>
                            <th><p align="center" class="resultpwd1"></p></th>
                        </tr>
                        <tr>
                            <th height=65><font size='4'>联系方式</th>
                            <th><input type="text" style="height:40px" placeholder="+86" size=40 class="phone"
                                       name="phone"></th>
                            <th><p align="center" class="resultphone"></p></th>
                        </tr>
                        <tr>
                            <div>
                                <th><font size='4'>验 证 码&nbsp;</th>
                                <th>
                                    <input type="text" class="input" id="input" style="height:40px;width:160px"/>
                                    <input type="button" id="code" onclick="createCode()" style="height:40px;width:80px"
                                           title='点击更换验证码'/>
                                    <!--<input type = "button"  style="height:40px"  value = "验证" onclick = "validate()"/> -->
                                </th>
                                <th><p align="center" class="resultcode"></p></th>
                            </div>
                        </tr>

                        <tr>
                            <th colspan=2 height=65><input type="checkbox"><font size='2' color='red'
                                                                                 required/>我已阅读并同意相关条例</font></input>
                            </th>
                        </tr>
                        <tr>
                            <th colspan=2 height=65><input type='button'
                                                           style="background-color:red;height:55px;width:160px;font-size:25px;color:white;border:none"
                                                           value='注册' id='l' onclick="validate()"></th>
                        </tr>
                    </table>
                </form>
            </th>
        </tr>
    </table>
    <table>
        <div class="login_footer">
            <p class="name">版权所有：天狼工作室</p>
            <p>建议浏览器：IE8及以上、360、谷歌、Firefox v22</p>
        </div>
    </table>
</div>

</body>
</html>
