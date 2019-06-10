<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<meta charset="utf-8"/>
<title>订单列表-用户中心</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/style.css" /><script src="js/html5.js"></script>
<script src="js/jquery.js"></script>
<script>
$(document).ready(function(){
  $("nav .indexAsideNav").hide();
  $("nav .category").mouseover(function(){
	  $(".asideNav").slideDown();
	  });
  $("nav .asideNav").mouseleave(function(){
	  $(".asideNav").slideUp();
	  });
});
</script>
</head>
<body>
<!--header-->
<header>
  <!--topNavBg-->
  <div class="topNavBg">
   <div class="wrap">
   <!--topLeftNav-->
    <ul class="topLtNav">
     <li><a href="login.html" class="obviousText">亲，请登录</a></li>
     <li><a href="register.html">注册</a></li>
     <li><a href="#">移动端</a></li>
    </ul>
   <!--topRightNav-->
    <ul class="topRtNav">
     <li><a href="user.html">个人中心</a></li>
     <li><a href="cart.html" class="cartIcon">购物车<i>0</i></a></li>
     <li><a href="favorite.html" class="favorIcon">收藏夹</a></li>
     <li><a href="user.html">商家中心</a></li>
     <li><a href="article_read.html" class="srvIcon">客户服务</a></li>
     <li><a href="union_login.html">联盟管理</a></li>
    </ul>
   </div>
  </div>
  <!--logoArea-->
  <div class="wrap logoSearch">
   <!--logo-->
   <div class="logo">
    <h1><img src="images/logo.png"/></h1>
   </div>
   <!--search-->
   <div class="search">
    <ul class="switchNav">
     <li class="active" id="chanpin">产品</li>
     <li id="shangjia">商家</li>
     <li id="zixun">搭配</li>
     <li id="wenku">文库</li>
    </ul>
    <div class="searchBox">
     <form>
      <div class="inputWrap">
      <input type="text" placeholder="输入产品关键词或货号"/>
      </div>
      <div class="btnWrap">
      <input type="submit" value="搜索"/>
      </div>
     </form>
     <a href="#" class="advancedSearch">高级搜索</a>
    </div>
   </div>
  </div>
  <!--nav-->
  <nav>
<ul class="wrap navList">
<li class="category">
<a>我的店铺</a>

</ul>
</nav>

 </header>
 <script>
 $(document).ready(function(){
   //测试效果，程序对接如需变动重新编辑
   $(".switchNav li").click(function(){
     $(this).addClass("active").siblings().removeClass("active");
     });
   $("#chanpin").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入产品关键词或货号");
     });
   $("#shangjia").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入商家店铺名");
     });
   $("#zixun").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入关键词查找文章内容");
     });
   $("#wenku").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入关键词查找文库内容");
     });
   });
   
 </script>
 
<section class="wrap user_center_wrap">
 <!--左侧导航-->
  <aside class="user_aside_nav">
  <dl>
   <dt>买家中心</dt>
   <dd><a href="order_list.ftl">我的订单</a></dd>

  </dl>
  <dl>
   <dt>商家管理中心</dt>
   <dd><a href="authenticate.ftl">我要开店</a></dd>
   <dd><a href="setting.ftl">店铺设置</a></dd>
   <dd><a href="seller_product_list.ftl">商品列表</a></dd>
   <dd><a href="seller_order_list.ftl">订单列表</a></dd>
  
  </dl>
  <dl>
   <dt>控制面板</dt>
   <dd><a href="message.ftl">站内短消息</a></dd>
   
   <dd><a href="profile.ftl">个人资料</a></dd>
  
  </dl>
  

 </aside>
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<style>
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td {
	padding: 0;
	margin: 0;
}
.right {
	float: right;
	width: 230px;
}
.wrap {
	width: 1280px;
	margin: auto;
}
.wrap {
	margin: 0 auto;
	margin-bottom: 10px;
	*zoom:1: ;
	width: 1280px;
	background: #fff;
}
.wrap::after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0px;
}
body {
	font-size: 12px;
	background: #FFF;
	font-family: Arial,simsun,sans-serif,"Microsoft YaHei",Mingliu,Verdana,Helvetica,Lucida;
}
body {
	font-family: SimSun,Arial,sans-serif,"Microsoft YaHei",Mingliu,Verdana,Helvetica,Lucida;
}
.wantdl {
	width: 228px;
	height: auto;
	background-color: #ebf9ff;
	border: 1px solid #39c2ff;
	position: relative;
	margin-bottom: 10px;
	float: left;
	padding-bottom: 10px;
}
.clear {
	clear: both;
}
.vs_type {
	width: 228px;
	height: 223px;
	border: 1px solid #e2e2e2;
	margin-bottom: 8px;
}
.q-a-con {
	border: 1px solid #ddd;
}
.q-a-con .title {
	width: 210px;
	margin: 0 auto;
	margin-bottom: 5px;
	position: relative;
	padding: 10px 0;
	height: 14px;
}
.q-a-con dl {
	margin: 0 15px 5px 15px;
	padding-bottom: 5px;
	border-bottom: 1px dotted #bbb;
}
.q-a-con dt, .q-a-con dd {
	height: 22px;
	line-height: 22px;
	padding-left: 20px;
	overflow: hidden;
	background: url(http://img01.5173cdn.com/channel/build/1.00/images/dailian.png) no-repeat 0 0;
}
.q-a-con dt {
	background-position: -241px -55px;
}
.q-a-con dd {
	background-position: -241px -76px;
}
a {
	cursor: pointer;
}
a {
	text-decoration: none;
}
.q-a-con a {
	margin: 18px auto;
}
.q-a-con dd a {
	color: #999;
}
.q-a-con dt a {
	color: #666;
}
h1, h2, h3, h4, h5, h6 {
	font-size: 100%;
}
.q-a-con .title h3 {
	color: #333;
	font-weight: bolder;
	float: left;
}
.q-a-con .title span {
	float: right;
}
.q-a-con .title span a {
	color: #999;
}
.q-a-con .download_dl {
	background: url("http://img01.5173cdn.com/channel/build/1.00/images/dailian.png") no-repeat scroll -296px -315px;
	display: block;
	height: 42px;
	width: 204px;
}
.q-a-con p {
	width: 175px;
	margin: 0 auto 20px;
}
ol, ul {
	list-style: none;
}
.dl-right-tab {
	border-left: 1px solid #ddd;
	height: 30px;
}
.right-tab-con {
	border: 1px solid #ddd;
	border-top: none;
	border-bottom: none;
	display: none;
}
.right-tab-con ul {
	padding: 10px 5px 0 5px;
}
.rtw p {
	display: block;
	border-bottom: 1px solid #ddd;
	border-top: none;
	padding: 0 15px 10px 0;
	text-align: right;
}
.right-tab-con ul li {
	position: relative;
	padding-bottom: 10px;
}
.right-tab-con ul a {
	color: #666;
	display: block;
}
.right-tab-con ul li span {
	position: absolute;
	top: 0px;
	right: 10px;
	color: #999;
}
.dl-right-tab li {
	float: left;
	height: 28px;
	width: 113px;
	text-align: center;
	line-height: 28px;
	border-right: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	border-top: 1px solid #ddd;
}
.dl-right-tab li.current {
	font-weight: bolder;
	width: 114px;
	height: 29px;
	background: url(http://img01.5173cdn.com/channel/build/1.00/images/dailian.png) no-repeat -99px -60px;
	border-bottom: none;
	border-top: 1px solid #0075a9;
}
.dl-right-tab li a, .dl-right-tab li a:hover {
	color: #333;
}
.vs_type1 {
	height: 110px;
	border-bottom: 1px solid #e2e2e2;
	text-align: center;
}
.vs_type2 {
	height: 54px;
	padding: 20px;
}
.vs_type2 a {
	display: inline-block;
	float: left;
	width: 50%;
	text-align: center;
	color: #06c;
}
address, caption, cite, code, dfn, em, th, var {
	font-weight: normal;
	font-style: normal;
}
.vs_type .s4 {
	width: 32px;
	height: 32px;
	display: block;
	margin: 0 auto 10px;
	background: url("http://img01.5173cdn.com/channel/build/1.00/images/dailian4_r2_c2.png") no-repeat;
}
.vs_type .s3 {
	width: 27px;
	height: 32px;
	display: block;
	margin: 0 auto 10px;
	background: url("http://img01.5173cdn.com/channel/build/1.00/images/dailian3_r2_c2.png") no-repeat;
}
.vs_type .s2 {
	width: 204px;
	height: 40px;
	display: block;
	margin: 0 12px 20px 12px;
	background: url("http://img01.5173cdn.com/channel/build/1.00/images/dailian2_r2_c2.png") no-repeat;
}
.vs_type .s1 {
	width: 204px;
	height: 40px;
	display: block;
	margin: 20px 12px 10px 12px;
	background: url("http://img01.5173cdn.com/channel/build/1.00/images/dailian_r2_c2.png") no-repeat;
}
.fw {
	float: left;
	width: 100%;
}
.stonc {
	text-align: center;
	margin: 20px 0px 10px 0px;
}
.wzry_show .quick-buy {
	font-size: 12px;
	color: #ff6600;
	text-align: center;
	font-weight: bold;
	margin-bottom: 35px;
}
.mt-15 {
	margin-top: 15px;
}
.plrive {
	position: relative;
}
.mt-20 {
	margin-top: 20px;
}
.mt-10 {
	margin-top: 10px;
}
.dl_fr {
	margin-left: 25px;
	font-size: 12px;
}
.tslist {
	padding: 10px 25px 0px 25px;
	height: auto;
	display: block;
	overflow: hidden;
	color: #999;
	font-size: 12px;
	line-height: 1.6;
}
.fl {
	float: left;
}
.fl {
	float: left;
}
.fl {
	float: left;
}
.goto_dl {
	background: url(../images/goyo-new.png) center no-repeat;
	width: 174px;
	height: 40px;
	line-height: 40px;
	display: inline-block;
	background-color: #3c84e8;
	background-position-x: 50px;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	margin-left: 11px;
	border-radius: 2px;
	margin-top: 25px;
	padding-left: 30px;
	text-align: center;
}
.dl_fr .price_ul {
	color: #ff7b00;
	margin: 0px 5px 0px 5px;
	font-weight: bold;
}
.acout {
	height: 30px;
	line-height: 30px;
	margin-left: 25px;
}
.select-box {
	width: 150px;
	height: 30px;
	text-indent: 10px;
	line-height: 30px;
	cursor: pointer;
	position: relative;
	background-color: #fff;
	margin-left: 15px;
	color: #666;
}
.po_he {
	position: absolute;
	width: 430px;
	height: auto;
	border: 1px solid #ddd;
	top: 150px;
	left: -100px;
	padding: 0px 0px 15px 0px;
	background-color: #fff;
	z-index: 999;
	display: none;
}
.top_arrow {
	background: url(http://images001.5173cdn.com/html/dlc2c_new/images/top_arrow.png) center no-repeat;
	width: 11px;
	height: 11px;
	position: absolute;
	top: -11px;
	left: 175px;
}
.po_he .opp_che {
	margin: 15px 15px 0px 15px;
	border-bottom: 1px dashed #d3d3d3;
	width: 390px;
	padding-bottom: 15px;
}
.a_href {
	width: 280px;
	margin-left: 75px;
	text-align: center;
}
.a_href .goto_new, .goto_new1 {
	width: 130px;
	height: 30px;
	border: 1px solid #f75e46;
	text-align: center;
	line-height: 30px;
	display: inline-block;
	color: #f75e46;
}
.opp_che .dw_wz {
	width: 300px;
}
.opp_che .dw_wz ul {
	width: 330px;
}
.opp_che .roll_xj ul {
	width: 350px;
}
.opp_che ul li {
	width: 55px;
	height: 28px;
	text-align: center;
	line-height: 28px;
	font-size: 12px;
	margin-left: 10px;
	margin-top: 5px;
	cursor: pointer;
}
.opp_che .roll_xj li {
	width: 38px;
}
.opp_che ul li.active {
	border: 1px solid #f75e46;
	color: #f75e46;
	height: 26px !important;
	line-height: 26px !important;
}
.opp_che .duanwei li {
	width: 39px;
	background-color: #ff7b00;
	color: #fff;
	margin-left: 0px;
}
.select-box i.icon_down {
	width: 22px;
	height: 13px;
	display: inline-block;
	background: url(http://images001.5173cdn.com/html/dlc2c_new/images/row.png) no-repeat center;
	position: absolute;
	top: 8px;
	right: 5px;
}
.wzry_show .bbselect {
	background: url(http://images001.5173cdn.com/html/dlc2c_new/images/row.png) #fff right no-repeat;
	background-position-x: 130px;
}
.hide {
	display: none;
}
.hide {
	display: none;
}
.wzry_show .bbselect ul {
	width: 150px;
	max-height: 120px;
	position: absolute;
	top: 30px;
	background-color: #fff;
	z-index: 1;
	border-top: 1px solid #ccc;
	overflow-y: auto;
}
.wzry_show .bbselect ul li {
	width: 150px;
	height: 25px;
	text-indent: 10px;
	line-height: 25px;
	cursor: pointer;
}
fieldset, img {
	border: 0;
}
</style>
</head>
<body>

 
 
 <!--右侧：内容区域-->
 <div class="user_rt_cont">
  <div class="top_title">
   <strong>订单列表</strong>
   <a href="seller_product_detail.ftl" title="添加新商品" class="fr">添加新商品</a>
   
  </div>
  
  <!--条件检索-->
  <div style="margin:8px 0;">
   <select class="select">
    <option>商品分类</option>
    <option>竞技</option>
    <option>回合</option>
    <option>角色</option>
   </select>
   <input type="text" class="textbox textbox_225" placeholder="输入游戏编号/关键词"/>
   <input type="button" value="搜索" class="group_btn"/>
  </div>
  <table class="order_table">
   <tr>
    <th>订单编号</th>
    
    <th>游戏名称</th>
    <th>价格</th>
    <th>库存</th>
    
    <th>操作</th>
   </tr>
   <tr>
    <td class="center">2019060601</td>
    <td class="center"><a href="product.ftl" target="_blank">王者荣耀</a></td>
     <td class="center"><strong class="rmb_icon">59.00</strong></td>
    <td class="center"><a h href="product.ftl" target="_blank">2</a></td>

   
    <td class="center">
     <a href="product.ftl" target="_blank" title="查看"><img src="images/icon_view.gif"/></a>
     <a href="seller_product_detail.ftl" title="编辑"><img src="images/icon_edit.gif"/></a>
     <a title="删除"><img src="images/icon_trash.gif"/></a>
    </td>
   </tr>
   <tr>
    <td class="center">2019060602</td>
    <td class="center"><a href="product.ftl" target="_blank">和平精英</a></td>
     <td class="center"><strong class="rmb_icon">59.00</strong></td>
    <td class="center"><a h href="product.ftl" target="_blank">2</a></td>

   
    <td class="center">
     <a href="product.ftl" target="_blank" title="查看"><img src="images/icon_view.gif"/></a>
     <a href="seller_product_detail.ftl" title="编辑"><img src="images/icon_edit.gif"/></a>
     <a title="删除"><img src="images/icon_trash.gif"/></a>
    </td>
   </tr>
  </table>
   <!--分页-->
   <div class="paging" style="text-align:center">
    <a class="active">1</a>
    <a >2</a>
    <a>3</a>
    <a>...</a>
    <a>10</a>
    <a>最后一页</a>
   </div>
 </div>
 </div>
</section>
<!--footer-->
<footer>
 <!--help-->
 <ul class="wrap help">
  <li>
   <dl>
    <dt>消费者保障</dt>
    <dd><a href="article_read.html">保障范围</a></dd>
    <dd><a href="article_read.html">退换货流程</a></dd>
    <dd><a href="article_read.html">服务中心</a></dd>
    <dd><a href="article_read.html">更多服务特色</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>新手上路</dt>
    <dd><a href="article_read.html">保障范围</a></dd>
    <dd><a href="article_read.html">退换货流程</a></dd>
    <dd><a href="article_read.html">服务中心</a></dd>
    <dd><a href="article_read.html">更多服务特色</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>付款方式</dt>
    <dd><a href="article_read.html">保障范围</a></dd>
    <dd><a href="article_read.html">退换货流程</a></dd>
    <dd><a href="article_read.html">服务中心</a></dd>
    <dd><a href="article_read.html">更多服务特色</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>服务保障</dt>
    <dd><a href="article_read.html">保障范围</a></dd>
    <dd><a href="article_read.html">退换货流程</a></dd>
    <dd><a href="article_read.html">服务中心</a></dd>
    <dd><a href="article_read.html">更多服务特色</a></dd>
   </dl>
  </li>
 </ul>
 
 <div class="wrap btmInfor">
  <p>© 2013 DeathGhost.cn 版权所有 网络文化经营许可证：浙网文[2013]***-027号 增值电信业务经营许可证：浙B2-200***24-1 信息网络传播视听节目许可证：1109***4号</p>
  <address>联系地址：陕西省西安市雁塔区XXX号</address>
 </div>
</footer>
</body>
</html>
