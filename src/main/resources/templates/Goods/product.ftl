<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<meta charset="utf-8"/>
<title>产品详情</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="applicable-device" content="pc">
	
		<link rel="stylesheet" href="css/baguetteBox.css" />
		<link rel="stylesheet" href="css/index1.css" />
		<link rel="shortcut icon" href="1.ico">
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/baguetteBox.js" ></script>

<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/style.css" /><script src="js/html5.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.jqzoom.js"></script>
<script src="js/base.js"></script>
<script>
$(document).ready(function(){
  $("nav .indexAsideNav").hide();
  $("nav .category").mouseover(function(){
	  $(".asideNav").slideDown();
	  });
  $("nav .asideNav").mouseleave(function(){
	  $(".asideNav").slideUp();
	  });
  //detail tab
  $(".product_detail_btm .item_tab a").click(function(){
	   var liindex = $(".product_detail_btm .item_tab a").index(this);
	   $(this).addClass("curr_li").parent().siblings().find("a").removeClass("curr_li");
       $(".cont_wrap").eq(liindex).fadeIn(150).siblings(".cont_wrap").hide();
	  });
  //radio
  $(".horizontal_attr label").click(function(){
	  $(this).addClass("isTrue").siblings().removeClass("isTrue");
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
<a>首页</a>

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
 
 <!--导航指向-->
<aside class="wrap insideLink">
  <a href="index.html">首页</a>
  <a href="">商品详情</a>
</aside>
<section class="wrap product_detail">
 <!--img:left-->
 <div class="gallery">
  <div>
    <div id="preview" class="spec-preview"> <span class="jqzoom"><img jqimg="imgs/shop/x3_WP.jpg" width="420" height="420" src="imgs/shop/x3_WP.jpg" /></span> </div>
    <!--缩图开始-->
    <div class="spec-scroll"> <a class="prev">&lt;</a> <a class="next">&gt;</a>
      <div class="items">
        <ul>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>
          <li><img bimg="imgs/shop/x3_WP.jpg" src="imgs/shop/x3_WP.jpg" onmousemove="preview(this);"></li>

        </ul>
      </div>
    </div>
    <!--缩图结束-->
  </div>
 </div>
 <!--text:right-->
 <div class="rt_infor">
  <!--lt_infor-->
  <div class="goods_infor">
   <h1>黄金/铂金/钻石/星耀/游戏各段位陪练/代练服务,保证高...</h1>
   <ul>
    <li>
     <dl class="horizontal">
      <dt>价格：</dt>
      <dd><strong class="rmb_icon univalent">1</strong>元</dd>
     </dl>
    </li>
    <li>
    
    </li>
    <li>
     <dl class="horizontal">
      <dt>游戏名称：</dt>
      <dd><em>王者荣耀</time></em>
     </dl>
    </li>
    <li class="statistics">
     <dl class="vertical">
      <dt>月销量</dt>
      <dd>199</dd>
     </dl>
     <dl class="vertical">
      <dt>累计评论</dt>
      <dd>4698</dd>
     </dl>
     <dl class="vertical">
      <dt>关注</dt>
      <dd>230</dd>
     </dl>
    </li>
   
    <li>
     <dl class="horizontal horizontal_attr">
      <dt>数量：</dt>
      <dd>
  
       <input type="text" value="1" readonly class="num"/>
       
       <span>库存：2580件</span>
      </dd>
     </dl>
    </li>
    <li class="last_li">
       <input type="button" value="立即询价" class="buy_btn" onClick="alert('询价请求已推送至商家，请耐心等待！');"/>
       <input type="button" value="立即购买" class="buy_btn" onClick="javascript:location.href='cart.html'"/>
       <input type="button" value="加入购物车" class="add_btn"/>
    </li>
   </ul>
  </div>
  <!--rt_infor-->
  <div class="shop_infor">
   <dl class="business_card">
    <dt>天狼科技有限公司</dt>
    <dd>资质：专业代打30年</dd>
    <dd>联系人：王者联盟</dd>
    <dd>邮件：wangzhe@Foxmail.com</dd>
    <dd>电话：4008-228228</dd>
    <dd>所在地：王者荣耀召唤师峡谷</dd>
    
    <dd class="center">
     <a href="shop.html" class="link_btn">进入店铺</a>
     <a class="link_btn">收藏店铺</a>
    </dd>
   </dl>
  </div>
 </div>
</section>
<!--detail-->
<section class="wrap product_detail_btm">
 <article>
  <ul class="item_tab">
   <li><a class="curr_li">商品详情</a></li>
   
  </ul>
  <!--商品详情-->
  
   
   <div class="indexPrice">
			
			<div class="container">
				<h2>王者荣耀代练价格表</h2>
				<div class="headline">2019赛季代练价格表</div>
				<div class="priceTable clearfix">
					<div class="dwTabs">
						<ul class="tabs">
							<li class="cur"><i class="dwIcon dw5"></i><a href="#">永恒钻石</a></li>
							<li class=""><i class="dwIcon dw4"></i><a href="#">尊贵铂金</a></li>
							<li class=""><i class="dwIcon dw3"></i><a href="#">荣耀黄金</a></li>
							<li class=""><i class="dwIcon dw2"></i><a href="#">秩序白银</a></li>
							<li class=""><i class="dwIcon dw1"></i><a href="#">倔强青铜</a></li>
						</ul>
					</div>
					<div class="priceDetail">
						<div class="price" style="display: block;">
							<table border="0" cellpadding="0" cellspacing="0">
								<tbody><tr>
									<th width="30%">段位</th><th width="20%">安卓</th><th width="20%">苹果</th><th width="30%">时间</th>
								</tr>
								<tr>
									<td>钻石5-钻石4</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>钻石4-钻石3</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>钻石3-钻石2</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>钻石2-钻石1</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>钻石1-王者</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td><b>钻石5-王者</b></td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
							</tbody></table>
						</div>
						<div class="price" style="display: none;">
							<table border="0" cellpadding="0" cellspacing="0">
								<tbody><tr>
									<th width="30%">段位</th><th width="20%">安卓</th><th width="20%">苹果</th><th width="30%">时间</th>
								</tr>
								<tr>
									<td>铂金5-铂金4</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>铂金4-铂金3</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>铂金3-铂金2</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>铂金2-铂金1</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>铂金1-钻石5</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td><b>铂金5-钻石5</b></td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
							</tbody></table>
						</div>
						<div class="price" style="display: none;">
							<table border="0" cellpadding="0" cellspacing="0">
								<tbody><tr>
									<th width="30%">段位</th><th width="20%">安卓</th><th width="20%">苹果</th><th width="30%">时间</th>
								</tr>
								<tr>
									<td>黄金4-黄金3</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>黄金3-黄金2</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>黄金2-黄金1</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>黄金1-铂金5</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td><b>黄金4-铂金5</b></td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
							</tbody></table>
						</div>
						<div class="price" style="display: none;">
							<table border="0" cellpadding="0" cellspacing="0">
								<tbody><tr>
									<th width="30%">段位</th><th width="20%">安卓</th><th width="20%">苹果</th><th width="30%">时间</th>
								</tr>
								<tr>
									<td>白银3-白银2</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>白银2-白银1</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>白银1-黄金4</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td><b>白银3-黄金4</b></td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
							</tbody></table>
						</div>
						<div class="price" style="display: none;">
							<table border="0" cellpadding="0" cellspacing="0">
								<tbody><tr>
									<th width="30%">段位</th><th width="20%">安卓</th><th width="20%">苹果</th><th width="30%">时间</th>
								</tr>
								<tr>
									<td>黄铜3-黄铜2</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>黄铜2-黄铜1</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td>黄铜1-白银3</td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
								<tr>
									<td><b>黄铜3-白银3</b></td><td>咨询议价</td><td>咨询议价</td><td>咨询客服</td>
								</tr>
							</tbody></table>
						</div>
						<script>
						$('.tabs li').hover(function(){
							$('.tabs li').removeClass();
							$(this).addClass('cur');
							var idx = $(this).index();
							$('.price').hide();
							$('.price').eq(idx).show();
						})
					</script>
					</div>
					
				</div>
			</div>
		
   
   
  </div>
  
   
  </div>
 </article>
 <aside>
 	<dl class="aside_pro_list">

  <div class="priceCalc">
  	 <dt>
    <strong>本店承诺</strong>
    
   </dt>

						
						<p class="mt10">天狼工作室，本店打手全部经过筛选考核，均为王者段位，本店严格保护您的游戏账号与密码安全，一切力求为王者荣耀玩家提供更优质的服务。</p>
						<p class="mt10" style="color: #b82525">客服咨询QQ：<a style="color:#b82525" href="tencent://message/?uin=654878701&amp;Site=lolnc.com&amp;Menu=yes">654878701</a>（早9点-次日凌晨1点，其他时间用户订单我们会在工作时间内尽快主动联系您）</p>
					</div>
		</dl>
 </aside>
 <form name="form1" id="form1" action="" method="post">
  	<div class="wrap">
  		<div class="left">
                <div class="wantdl">
                    <!-- 高性价比 -->
                    <div class="wzry_show fw wzry_new yxlm_show">
                        <div class="stonc">
                            <img src="/imgs/wzrylogo.png">
                        </div>
                        <p class="quick-buy">王者荣耀快捷购买</p>
                        <div class="fw">
                            <span class="d-inline-block acout f14 text-right fl detail" style="margin-left: 13px;">系统</span>
                            <div class="select-box fl bbselect  ml-40 f14 border-ddd bg-fff color-666">
                                <div class="servername" tag="苹果-微信">苹果-微信</div>
                                <ul class="hide">
                                <li tag="安卓-QQ">安卓-QQ</li><li tag="安卓-微信">安卓-微信</li><li tag="苹果-QQ">苹果-QQ</li><li tag="苹果-微信">苹果-微信</li></ul>
                            </div>
                        </div>
                        <div class="fw mt-15 dlbnow plrive">
                            <span class="d-inline-block acout f14 text-right fl detail">从</span>
                            <div class="select-box fl  ml-40 f14 border-ddd bg-fff color-666">
                                <span class="dlbnowDW">青铜三&nbsp;1星</span>
                                <i class="icon_down"></i>
                            </div>
                            <!-- 下面的选择日历添加样式名choose_dw -->
                            <div class="po_he" style="top: 30px; display: none;">
                                <span class="top_arrow" style="left: 280px;"></span>
                                <div class="opp_che fw">
                                    <ul class="fl duanwei">
                                        <li class="f12">段位</li>
                                    </ul>
                                    <div class="fl dw_wz dlbdwlist"> <ul class="fw"> <li class="fl active" onclick="javascript:addstartlevel(this,0);" tag="1" tagname="青铜三">青铜三</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="2" tagname="青铜二">青铜二</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="3" tagname="青铜一">青铜一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="4" tagname="白银三">白银三</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="5" tagname="白银二">白银二</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="6" tagname="白银一">白银一</li> </ul><ul class="fw"> <li class="fl" onclick="javascript:addstartlevel(this,0);" tag="7" tagname="黄金四">黄金四</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="8" tagname="黄金三">黄金三</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="9" tagname="黄金二">黄金二</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="10" tagname="黄金一">黄金一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="11" tagname="铂金四">铂金四</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="12" tagname="铂金三">铂金三</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="13" tagname="铂金二">铂金二</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="14" tagname="铂金一">铂金一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="15" tagname="钻石五">钻石五</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="16" tagname="钻石四">钻石四</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="17" tagname="钻石三">钻石三</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="18" tagname="钻石二">钻石二</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="19" tagname="钻石一">钻石一</li> </ul><ul class="fw"> <li class="fl" onclick="javascript:addstartlevel(this,0);" tag="20" tagname="星耀五">星耀五</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="21" tagname="星耀四">星耀四</li> <li class="fl" onclick="javascript:addstartlevel(this,0);" tag="22" tagname="星耀三">星耀三</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="23" tagname="星耀二">星耀二</li> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="24" tagname="星耀一">星耀一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,0);" tag="25" tagname="最强王者">最强王者</li> </ul></div>
                                </div>
                                <div class="opp_che fw">
                                    <ul class="fl duanwei">
                                        <li class="f12">星级</li>
                                    </ul>
                                    <div class="fl  dw_wz roll_xj">
                                        <ul class="fw dlbnowstarlist"><li class="fl " onclick="javascript:addStar(this);" tag="1">0星</li><li class="fl  active" onclick="javascript:addStar(this);" tag="2">1星</li><li class="fl " onclick="javascript:addStar(this);" tag="3">2星</li><li class="fl " onclick="javascript:addStar(this);" tag="4">3星</li></ul>
                                    </div>
                                </div>
                                <div class="a_href fw">
                                    <a class="goto_new1 mt-15 f12">确定</a>
                                </div>
                            </div>
                        </div>
                        <div class="fw mt-15 dlbnext plrive">
                            <span class="d-inline-block acout f14 text-right fl detail">至</span>
                            <div class="select-box fl  ml-40 f14 border-ddd bg-fff color-666">
                                <span class="dlbnextDW">钻石三&nbsp;3星</span>
                                <i class="icon_down"></i>
                            </div>
                            <!-- 下面的选择日历添加样式名choose_dw -->
                            <div class="po_he" style="top: 30px; display: none;">
                                <span class="top_arrow" style="left: 280px;"></span>
                                <div class="opp_che fw">
                                    <ul class="fl duanwei">
                                        <li class="f12">段位</li>
                                    </ul>
                                    <div class="fl dw_wz dlbdwlist"> <ul class="fw"> <li class="fl" onclick="javascript:addstartlevel(this,1);" tag="1" tagname="青铜三">青铜三</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="2" tagname="青铜二">青铜二</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="3" tagname="青铜一">青铜一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="4" tagname="白银三">白银三</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="5" tagname="白银二">白银二</li> <li class="fl" onclick="javascript:addstartlevel(this,1);" tag="6" tagname="白银一">白银一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="7" tagname="黄金四">黄金四</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="8" tagname="黄金三">黄金三</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="9" tagname="黄金二">黄金二</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="10" tagname="黄金一">黄金一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="11" tagname="铂金四">铂金四</li> <li class="fl" onclick="javascript:addstartlevel(this,1);" tag="12" tagname="铂金三">铂金三</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="13" tagname="铂金二">铂金二</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="14" tagname="铂金一">铂金一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="15" tagname="钻石五">钻石五</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="16" tagname="钻石四">钻石四</li> <li class="fl  active" onclick="javascript:addstartlevel(this,1);" tag="17" tagname="钻石三">钻石三</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="18" tagname="钻石二">钻石二</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="19" tagname="钻石一">钻石一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="20" tagname="星耀五">星耀五</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="21" tagname="星耀四">星耀四</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="22" tagname="星耀三">星耀三</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="23" tagname="星耀二">星耀二</li> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="24" tagname="星耀一">星耀一</li> </ul><ul class="fw"> <li class="fl " onclick="javascript:addstartlevel(this,1);" tag="25" tagname="最强王者">最强王者</li> </ul></div>
                                </div>
                                <div class="opp_che fw">
                                    <ul class="fl duanwei">
                                        <li class="f12">星级</li>
                                    </ul>
                                    <div class="fl  dw_wz roll_xj">
                                        <ul class="fw dlbnextstarlist"><li class="fl " onclick="javascript:addStar(this);" tag="2">1星</li><li class="fl " onclick="javascript:addStar(this);" tag="3">2星</li><li class="fl  active" onclick="javascript:addStar(this);" tag="4">3星</li><li class="fl " onclick="javascript:addStar(this);" tag="5">4星</li><li class="fl " onclick="javascript:addStar(this);" tag="6">5星</li></ul>
                                    </div>
                                </div>
                                <div class="a_href fw">
                                    <a class="goto_new1 mt-15 f12">确定</a>
                                </div>
                            </div>
                        </div>
                        <p class="fw dl_fr mt-20">
                            代练费用
                            <em class="price_ul dlbmoney">104.00</em>元
                        </p>
                        <p class="fw dl_fr mt-10">
                            完成时间
                            <em class="price_ul dlbhour">75.00</em>小时
                        </p>
                        <p class="tslist" style="padding: 15px 25px 0px; height: auto; line-height: 1.6; overflow: hidden; font-size: 12px; display: none;">注：0点至8点下单用户，代练时间从当日9点开始计算</p>
                        <a class="goto_dl fl" id="goNow1" style="margin-top: 10px;">立即下单</a>
                        
                    </div>
                </div>
                <div class="clear"></div>
                
                </div>
                
			</div>
			 <script type="text/javascript" src="http://img01.5173cdn.com/www/build/1.00/js/recharge.js"></script>
        <script type="text/javascript" src="http://img01.5173cdn.com/fed/build/1.00/js/fed1.6-950.js" chatset="utf-8"></script>
        <script>
            var ExceptGames = 'not(:contains(英雄联盟)):not(:contains(魔兽世界(国服))):not(:contains(王者荣耀)):not(:contains(球球大作战)):not(:contains(守望先锋)):not(:contains(部落战争COC|部落冲突(Clash of Clans))):not(:contains(部落冲突：皇室战争（Clash Royale）)):not(:contains(梦幻西游2)):not(:contains(梦幻西游(手机游戏))):not(:contains(逆战)):not(:contains(地下城与勇士)):not(:contains(天涯明月刀)):not(:contains(传奇永恒)):not(:contains(穿越火线)):not(:contains(最终幻想14)):not(:contains(斗战神)):not(:contains(剑侠情缘Ⅲ)):not(:contains(暗黑破坏神3(国服))):not(:contains(剑灵)):not(:contains(新天龙八部)):not(:contains(战舰世界)):not(:contains(问道)):not(:contains(热血江湖)):not(:contains(炉石传说)):not(:contains(龙之谷(手机游戏))):not(:contains(弹弹堂(手机游戏))):not(:contains(龙魂时刻)):not(:contains(冒险岛2)):not(:contains(流放之路)):not(:contains(绝地求生)):not(:contains(QQ飞车手游)):not(:contains(坦克世界)):not(:contains(天谕)):not(:contains(怪物猎人OL)):not(:contains(楚留香)):not(:contains(绝地求生：全军出击)):not(:contains(和平精英)):not(:contains(QQ炫舞手游)):not(:contains(逍遥情缘)):not(:contains(命运-冠位指定)):not(:contains(第5人格(第五人格))):not(:contains(猎魂觉醒)):not(:contains(最强NBA)):not(:contains(荒野行动(PC版))):not(:contains(荒野行动)):not(:contains(征途2(手机游戏))):not(:contains(魔力宝贝(手机游戏))):not(:contains(阴阳师)):not(:contains(星际争霸II)):not(:contains(影之诗)):not(:contains(拳皇命运)):not(:contains(FIFA足球世界)):not(:contains(灵山奇缘)):not(:contains(传奇世界3D)):not(:contains(武林外传官方手游)):not(:contains(战意)):not(:contains(逆*寒)):not(:contains(非人学园)):not(:contains(古剑奇谭网络版)):not(:contains(逆冰塞OL)):not(:contains(堡垒之夜)):not(:contains(泰亚史诗)):not(:contains(怪物猎人世界)):not(:contains(圣斗士星矢(腾讯))):not(:contains(万王之王3腾讯版)):not(:contains(斗破苍穹(手机游戏))):not(:contains(神都夜行录)):not(:contains(明日之后)):not(:contains(仙剑奇侠传四手游)):not(:contains(战舰世界闪击战)):not(:contains(龙魂时刻)):not(:contains(QQ自由幻想)):not(:contains(熹妃Q传)):not(:contains(Apex英雄)):not(:contains(完美世界手游)):not(:contains(FIFA OL4)):not(:contains(自走棋)):not(:contains(一起来捉妖)):not(:contains(NBA2K OL)):not(:contains(NBA2K OL2)):not(:contains(云梦四时歌)):';
            var bigSliderData = [
                        
                        { title: "1", img: (new Image()).src = "http://bo.5173cdn.com/5173_2/data/201901/02/A2/RAKowFxJF7MAAAAAAAHG23_R_zY2..jpg", link: "http://dlc2c.5173.com/main/defaultsale.aspx?ordertype=6&gm=d2665a7bb03645bfb16fb999891258ea" }
                        ,
                        { title: "2", img: (new Image()).src = "http://bo.5173cdn.com/5173_2/data/201806/02/8F/RAKowFs0VwsAAAAAAAG6SyxHs0Y0..jpg", link: "http://dlc2c.5173.com/store/storelist.aspx?islist=&userid=US14062401058191-0390" }
                        ,
                        { title: "3", img: (new Image()).src = "http://bo.5173cdn.com/5173_2/data/201904/02/48/RAKowFy__t8AAAAAAAIXqV6wGdo5..jpg", link: "http://dlc2c.5173.com/dp/order_dw.aspx?areaname=%E5%AE%89%E5%8D%93-QQ&startDanType=1&endDantype=1&startDanStar=1&endDanStar=2" }
                        ,
                        { title: "4", img: (new Image()).src = "http://bo.5173cdn.com/5173_2/data/201903/02/DB/RAKowFyd0ecAAAAAAAHnNy2Bicg6..jpg", link: "http://dlc2c.5173.com/main/defaultsale.aspx?gm=93d6fd3c93e3483c8277e3683f966fef" }
                        
            ];
            var starMsg = $.parseJSON('[{"LevelId":1,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":1},{"LevelId":1,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":2},{"LevelId":1,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":3},{"LevelId":1,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":4},{"LevelId":2,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":5},{"LevelId":2,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":6},{"LevelId":2,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":7},{"LevelId":2,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":8},{"LevelId":3,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":9},{"LevelId":3,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":10},{"LevelId":3,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":11},{"LevelId":3,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":12},{"LevelId":4,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":13},{"LevelId":4,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":14},{"LevelId":4,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":15},{"LevelId":4,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":16},{"LevelId":5,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":17},{"LevelId":5,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":18},{"LevelId":5,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":19},{"LevelId":5,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":20},{"LevelId":6,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":21},{"LevelId":6,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":22},{"LevelId":6,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":23},{"LevelId":6,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":24},{"LevelId":7,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":25},{"LevelId":7,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":26},{"LevelId":7,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":27},{"LevelId":7,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":28},{"LevelId":7,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":29},{"LevelId":8,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":30},{"LevelId":8,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":31},{"LevelId":8,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":32},{"LevelId":8,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":33},{"LevelId":8,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":34},{"LevelId":9,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":35},{"LevelId":9,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":36},{"LevelId":9,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":37},{"LevelId":9,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":38},{"LevelId":9,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":39},{"LevelId":10,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":40},{"LevelId":10,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":41},{"LevelId":10,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":42},{"LevelId":10,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":43},{"LevelId":10,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":44},{"LevelId":11,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":45},{"LevelId":11,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":46},{"LevelId":11,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":47},{"LevelId":11,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":48},{"LevelId":11,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":49},{"LevelId":12,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":50},{"LevelId":12,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":51},{"LevelId":12,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":52},{"LevelId":12,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":53},{"LevelId":12,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":54},{"LevelId":13,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":55},{"LevelId":13,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":56},{"LevelId":13,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":57},{"LevelId":13,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":58},{"LevelId":13,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":59},{"LevelId":14,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":60},{"LevelId":14,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":61},{"LevelId":14,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":62},{"LevelId":14,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":63},{"LevelId":14,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":64},{"LevelId":15,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":65},{"LevelId":15,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":66},{"LevelId":15,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":67},{"LevelId":15,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":68},{"LevelId":15,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":69},{"LevelId":15,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":70},{"LevelId":16,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":71},{"LevelId":16,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":72},{"LevelId":16,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":73},{"LevelId":16,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":74},{"LevelId":16,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":75},{"LevelId":16,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":76},{"LevelId":17,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":77},{"LevelId":17,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":78},{"LevelId":17,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":79},{"LevelId":17,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":80},{"LevelId":17,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":81},{"LevelId":17,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":82},{"LevelId":18,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":83},{"LevelId":18,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":84},{"LevelId":18,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":85},{"LevelId":18,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":86},{"LevelId":18,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":87},{"LevelId":18,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":88},{"LevelId":19,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":89},{"LevelId":19,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":90},{"LevelId":19,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":91},{"LevelId":19,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":92},{"LevelId":19,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":93},{"LevelId":19,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":94},{"LevelId":20,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":95},{"LevelId":20,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":96},{"LevelId":20,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":97},{"LevelId":20,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":98},{"LevelId":20,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":99},{"LevelId":20,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":100},{"LevelId":21,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":101},{"LevelId":21,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":102},{"LevelId":21,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":103},{"LevelId":21,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":104},{"LevelId":21,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":105},{"LevelId":21,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":106},{"LevelId":22,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":107},{"LevelId":22,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":108},{"LevelId":22,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":109},{"LevelId":22,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":110},{"LevelId":22,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":111},{"LevelId":22,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":112},{"LevelId":23,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":113},{"LevelId":23,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":114},{"LevelId":23,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":115},{"LevelId":23,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":116},{"LevelId":23,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":117},{"LevelId":23,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":118},{"LevelId":24,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":119},{"LevelId":24,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":120},{"LevelId":24,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":121},{"LevelId":24,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":122},{"LevelId":24,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":123},{"LevelId":24,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":124},{"LevelId":25,"StarName":"0星","StarId":1,"IsStart":1,"IsEnd":0,"OrderId":125},{"LevelId":25,"StarName":"1星","StarId":2,"IsStart":1,"IsEnd":1,"OrderId":126},{"LevelId":25,"StarName":"2星","StarId":3,"IsStart":1,"IsEnd":1,"OrderId":127},{"LevelId":25,"StarName":"3星","StarId":4,"IsStart":1,"IsEnd":1,"OrderId":128},{"LevelId":25,"StarName":"4星","StarId":5,"IsStart":1,"IsEnd":1,"OrderId":129},{"LevelId":25,"StarName":"5星","StarId":6,"IsStart":1,"IsEnd":1,"OrderId":130},{"LevelId":25,"StarName":"6星","StarId":7,"IsStart":1,"IsEnd":1,"OrderId":131},{"LevelId":25,"StarName":"7星","StarId":8,"IsStart":1,"IsEnd":1,"OrderId":132},{"LevelId":25,"StarName":"8星","StarId":9,"IsStart":1,"IsEnd":1,"OrderId":133},{"LevelId":25,"StarName":"9星","StarId":10,"IsStart":1,"IsEnd":1,"OrderId":134},{"LevelId":25,"StarName":"10星","StarId":11,"IsStart":1,"IsEnd":1,"OrderId":135},{"LevelId":25,"StarName":"11星","StarId":12,"IsStart":1,"IsEnd":1,"OrderId":136},{"LevelId":25,"StarName":"12星","StarId":13,"IsStart":1,"IsEnd":1,"OrderId":137},{"LevelId":25,"StarName":"13星","StarId":14,"IsStart":1,"IsEnd":1,"OrderId":138},{"LevelId":25,"StarName":"14星","StarId":15,"IsStart":1,"IsEnd":1,"OrderId":139},{"LevelId":25,"StarName":"15星","StarId":16,"IsStart":1,"IsEnd":1,"OrderId":140},{"LevelId":25,"StarName":"16星","StarId":17,"IsStart":1,"IsEnd":1,"OrderId":141},{"LevelId":25,"StarName":"17星","StarId":18,"IsStart":1,"IsEnd":1,"OrderId":142},{"LevelId":25,"StarName":"18星","StarId":19,"IsStart":1,"IsEnd":1,"OrderId":143},{"LevelId":25,"StarName":"19星","StarId":20,"IsStart":1,"IsEnd":1,"OrderId":144},{"LevelId":25,"StarName":"20星","StarId":21,"IsStart":1,"IsEnd":1,"OrderId":145},{"LevelId":25,"StarName":"21星","StarId":22,"IsStart":1,"IsEnd":1,"OrderId":146},{"LevelId":25,"StarName":"22星","StarId":23,"IsStart":1,"IsEnd":1,"OrderId":147},{"LevelId":25,"StarName":"23星","StarId":24,"IsStart":1,"IsEnd":1,"OrderId":148},{"LevelId":25,"StarName":"24星","StarId":25,"IsStart":1,"IsEnd":1,"OrderId":149},{"LevelId":25,"StarName":"25星","StarId":26,"IsStart":1,"IsEnd":1,"OrderId":150},{"LevelId":25,"StarName":"26星","StarId":27,"IsStart":1,"IsEnd":1,"OrderId":151},{"LevelId":25,"StarName":"27星","StarId":28,"IsStart":1,"IsEnd":1,"OrderId":152},{"LevelId":25,"StarName":"28星","StarId":29,"IsStart":1,"IsEnd":1,"OrderId":153},{"LevelId":25,"StarName":"29星","StarId":30,"IsStart":1,"IsEnd":1,"OrderId":154},{"LevelId":25,"StarName":"30星","StarId":31,"IsStart":1,"IsEnd":1,"OrderId":155},{"LevelId":25,"StarName":"31星","StarId":32,"IsStart":1,"IsEnd":1,"OrderId":156},{"LevelId":25,"StarName":"32星","StarId":33,"IsStart":1,"IsEnd":1,"OrderId":157},{"LevelId":25,"StarName":"33星","StarId":34,"IsStart":1,"IsEnd":1,"OrderId":158},{"LevelId":25,"StarName":"34星","StarId":35,"IsStart":1,"IsEnd":1,"OrderId":159},{"LevelId":25,"StarName":"35星","StarId":36,"IsStart":1,"IsEnd":1,"OrderId":160},{"LevelId":25,"StarName":"36星","StarId":37,"IsStart":1,"IsEnd":1,"OrderId":161},{"LevelId":25,"StarName":"37星","StarId":38,"IsStart":1,"IsEnd":1,"OrderId":162},{"LevelId":25,"StarName":"38星","StarId":39,"IsStart":1,"IsEnd":1,"OrderId":163},{"LevelId":25,"StarName":"39星","StarId":40,"IsStart":1,"IsEnd":1,"OrderId":164},{"LevelId":25,"StarName":"40星","StarId":41,"IsStart":1,"IsEnd":1,"OrderId":165},{"LevelId":25,"StarName":"41星","StarId":42,"IsStart":1,"IsEnd":1,"OrderId":166},{"LevelId":25,"StarName":"42星","StarId":43,"IsStart":1,"IsEnd":1,"OrderId":167},{"LevelId":25,"StarName":"43星","StarId":44,"IsStart":1,"IsEnd":1,"OrderId":168},{"LevelId":25,"StarName":"44星","StarId":45,"IsStart":1,"IsEnd":1,"OrderId":169},{"LevelId":25,"StarName":"45星","StarId":46,"IsStart":1,"IsEnd":1,"OrderId":170},{"LevelId":25,"StarName":"46星","StarId":47,"IsStart":1,"IsEnd":1,"OrderId":171},{"LevelId":25,"StarName":"47星","StarId":48,"IsStart":1,"IsEnd":1,"OrderId":172},{"LevelId":25,"StarName":"48星","StarId":49,"IsStart":1,"IsEnd":1,"OrderId":173},{"LevelId":25,"StarName":"49星","StarId":50,"IsStart":1,"IsEnd":1,"OrderId":174},{"LevelId":25,"StarName":"50星","StarId":51,"IsStart":1,"IsEnd":1,"OrderId":175},{"LevelId":25,"StarName":"51星","StarId":52,"IsStart":1,"IsEnd":1,"OrderId":176},{"LevelId":25,"StarName":"52星","StarId":53,"IsStart":1,"IsEnd":1,"OrderId":177},{"LevelId":25,"StarName":"53星","StarId":54,"IsStart":1,"IsEnd":1,"OrderId":178},{"LevelId":25,"StarName":"54星","StarId":55,"IsStart":1,"IsEnd":1,"OrderId":179},{"LevelId":25,"StarName":"55星","StarId":56,"IsStart":1,"IsEnd":1,"OrderId":180},{"LevelId":25,"StarName":"56星","StarId":57,"IsStart":1,"IsEnd":1,"OrderId":181},{"LevelId":25,"StarName":"57星","StarId":58,"IsStart":1,"IsEnd":1,"OrderId":182},{"LevelId":25,"StarName":"58星","StarId":59,"IsStart":1,"IsEnd":1,"OrderId":183},{"LevelId":25,"StarName":"59星","StarId":60,"IsStart":1,"IsEnd":1,"OrderId":184},{"LevelId":25,"StarName":"60星","StarId":61,"IsStart":1,"IsEnd":1,"OrderId":185},{"LevelId":25,"StarName":"61星","StarId":62,"IsStart":1,"IsEnd":1,"OrderId":186},{"LevelId":25,"StarName":"62星","StarId":63,"IsStart":1,"IsEnd":1,"OrderId":187},{"LevelId":25,"StarName":"63星","StarId":64,"IsStart":1,"IsEnd":1,"OrderId":188},{"LevelId":25,"StarName":"64星","StarId":65,"IsStart":1,"IsEnd":1,"OrderId":189},{"LevelId":25,"StarName":"65星","StarId":66,"IsStart":1,"IsEnd":1,"OrderId":190},{"LevelId":25,"StarName":"66星","StarId":67,"IsStart":1,"IsEnd":1,"OrderId":191},{"LevelId":25,"StarName":"67星","StarId":68,"IsStart":1,"IsEnd":1,"OrderId":192},{"LevelId":25,"StarName":"68星","StarId":69,"IsStart":1,"IsEnd":1,"OrderId":193},{"LevelId":25,"StarName":"69星","StarId":70,"IsStart":1,"IsEnd":1,"OrderId":194},{"LevelId":25,"StarName":"70星","StarId":71,"IsStart":1,"IsEnd":1,"OrderId":195}]');
        </script>
        <script type="text/javascript" src="js/index_new.js"></script>
        <script type="text/javascript" src="js/index_wzry.js?id=636946520963826613"></script>
        <script src="http://img01.5173cdn.com/fed/build/3.00/js/statistics_code.js "></script>
        <script>        statistics_code({ type: ['baidu'] });</script>
        <script charset="utf-8" src="http://download.ntalker.com/b2b/ntkfstat.js" type="text/javascript"></script>
</form>
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
