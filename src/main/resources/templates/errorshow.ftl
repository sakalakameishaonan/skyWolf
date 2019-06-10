<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>错误页面</title>
    <meta http-equiv='content-type' content='text/html;charset=utf-8'/>
    <script type='text/javascript' src="/webjars/jquery/3.4.1/jquery.js"></script>

    <script type="text/javascript" src="/js/jquery-1.12.4.js"></script>
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
            <p><a href="/"><img src="/loginshow/logo.png" style="width:80px;height:80px;margin-right:30px;"/>注册账户</a></p>
        </div>
    </table>
    <table border=0>
        <div class="login_title">
            <p>注册失败，</p>
        </div>
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