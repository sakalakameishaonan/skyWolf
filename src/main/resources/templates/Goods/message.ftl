<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<meta charset="utf-8"/>
<title>站内信-用户中心</title>
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
  //message
  $(".msg_li dt").click(function(){
	  $(this).siblings("dd").slideToggle();
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

<li>
<a href="index.html" class="active">首页</a>
</li>


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
 <!--右侧：内容区域-->
 <div class="user_rt_cont">
  <div class="top_title">
   <strong>站内短消息</strong>
  </div>
  <!--消息列表-->
  <ul class="msg_li">
  <!--循环li-->
   <li>
    <dl>
     <dt>
      <strong>2013年03月28日某某消息标题</strong>
      <time>2013-01-15 14:25</time>
     </dt>
     <dd>2013年03月28日某某消息标题，文本消息内容，支持链接和文本即可<a href="article_read.html">详情查看</a></dd>
     <dd class="del_msg"><a>删除本条消息</a></dd>
    </dl>
   </li>
   <li>
    <dl>
     <dt>
      <strong>国庆节促销活动标题</strong>
      <time>2013-01-15 14:25</time>
     </dt>
     <dd>2013年03月28日某某消息标题，文本消息内容，支持链接和文本即2013年03月28日某某消息标题，文本消息内容，支持链接和文本即2013年03月28日某某消息标题，文本消息内容，支持链接和文本即2013年03月28日某某消息标题，文本消息内容，支持链接和文本即可<a href="article_read.html">详情查看</a></dd>
     <dd class="del_msg"><a>删除本条消息</a></dd>
    </dl>
   </li>
   <li>
    <dl>
     <dt>
      <strong>2013年03月28日某某消息标题</strong>
      <time>2013-01-15 14:25</time>
     </dt>
     <dd>2013年03月28日某某消息标题，文本消息内容，支持链接和文本即可<a href="article_read.html">详情查看</a></dd>
     <dd class="del_msg"><a>删除本条消息</a></dd>
    </dl>
   </li>
   <li>
    <dl>
     <dt>
      <strong>国庆节促销活动标题</strong>
      <time>2013-01-15 14:25</time>
     </dt>
     <dd>2013年03月28日某某消息标题，文本消息内容，支持链接和文本即2013年03月28日某某消息标题，文本消息内容，支持链接和文本即2013年03月28日某某消息标题，文本消息内容，支持链接和文本即2013年03月28日某某消息标题，文本消息内容，支持链接和文本即可<a href="article_read.html">详情查看</a></dd>
     <dd class="del_msg"><a>删除本条消息</a></dd>
    </dl>
   </li>
  </ul>
   <!--分页-->
   <div class="paging">
    <a>第一页</a>
    <a class="active">2</a>
    <a>3</a>
    <a>...</a>
    <a>89</a>
    <a>最后一页</a>
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
 <dl class="wrap otherLink">
  
 <div class="wrap btmInfor">
  <p>© 2013 DeathGhost.cn 版权所有 网络文化经营许可证：浙网文[2013]***-027号 增值电信业务经营许可证：浙B2-200***24-1 信息网络传播视听节目许可证：1109***4号</p>
  <address>联系地址：陕西省西安市雁塔区XXX号</address>
 </div>
</footer>
</body>
</html>
