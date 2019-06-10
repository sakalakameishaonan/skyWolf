<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title></title>
    <script type="text/javascript" src="js/jquery-1.12.4.js" ></script>
    <script>
        $(function() {
            //表单验证检查
            $("#btn").click(function(){
                var shopname = $("#shopname").val();
                var shopLevel=$('input:radio[name="shopLevel"]:checked').val();
                var idNum= $("#idNum").val();
                if(shopname==""){
                    return;
                }
                if(idNum==""){
                    return;
                }
                if(shopLevel==null){
                    alert("请选择申请的店铺等级！");
                }


                $("#openShop").submit();
            });

            //异步判断店名是否可用
            $("#shopname").blur(function(){
                var shopname = $("#shopname").val();
                var span=$(".shop_name");
                $.post("xxxxx",{"ope":"checkShopName","shopName":shopName},function(count){
                    count=parseInt(count);
                    if(count==0){
                        span.text("店名可用！").removeClass().addClass("shop_name_ok");
                    }else{
                        span.text("店名重复，请修改").removeClass().addClass("shop_name");

                    }
                });
            });

            $("#idNum").blur(function(){
                var idNum = $("#idNum").val();
                var span=$(".idNum_name");
                if(idNum.length<17){
                    span.text("请输入正确的身份证号！").removeClass().addClass("idNum_name");
                }else{
                    span.text("身份证号输入正确！").removeClass().addClass("idNum_name_ok");
                }
            });
        })
    </script>
    <link rel="stylesheet" type="text/css" href="/css/openShop.css">
    <style>

    </style>
</head>
<body>
<form action="" method="get" id="openShop">
    <div id="openShop_title">
        注册开店
    </div>
    <div id="openShop_body">
        <div class="openShop_input">
            <p class="input_style">店铺名称：
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" id="shopname" name="shopname"/>&nbsp;&nbsp;<span class="shop_name">请输入店名</span>
            </p>
        </div>
        <div class="openShop_input">
            <p class="input_style">店铺等级：

                <input type="radio" name="shopLevel" value="1" hidden id="a"/>
                <label for="a" class="radio1">1级店铺<br/>5名代练<br/>担保1000元</label>


                <input type="radio" name="shopLevel" value="2" hidden id="b"/>
                <label for="b" class="radio2">2级店铺<br/>10名代练<br/>担保3000元</label>


                <input type="radio" name="shopLevel" value="3" hidden id="c"/>
                <label for="c" class="radio3">3级店铺<br/>20名代练<br/>担保7000元</label>




            </p>
        </div>
        <div style="width: 100%; height: 200px;"></div>
        <div>
            <p class="input_style">输入身份证号：
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" id="idNum" name="idNum"/>&nbsp;&nbsp;<span class="idNum_name">请输入身份证号</span>
            </p>
        </div>
        <div class="openShop_input">
            <p class="input_style">上传身份证正面：
                &nbsp;&nbsp;&nbsp;
                <input type="file" name="zPicPath"/>
            </p>
        </div>
        <div class="openShop_input">
            <p class="input_style">上传身份证反面：
                &nbsp;&nbsp;&nbsp;
                <input type="file" name="fPicPath"/>
            </p>
        </div>
        <div id="submit"><button type="button" id="btn">提交</button></div>
    </div>

</form>
</body>
</html>
