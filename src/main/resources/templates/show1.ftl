<!DOCTYPE html>
<html lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>
</head>
<body>

<div id="main">
    <ul>
        <#list pageInfo.list as s>
            <li>
                <div class="p">
                    <div class="p-img">
                        <a  target="_blank" href="">
                            <img alt=""  width="220" height="220" src="${s.img}" title="天狼工作室：专业代练平台">
                        </a>
                    </div>
                    <div class="p-shop">
                        <span>
                            <a href="" target="_blank" title='【"+${s.title}+"】店庆活动，全场9折！'>${s.title}</a>
                        </span>
                    </div>
                    <div class="p-desc">
                        <a href="" title="${s.desc}">
                            <#if (s.desc?length>25)>
                                ${s.desc?substring(0,25)}...
                            <#else>
                                ${s.desc}
                            </#if>
                        </a>
                    </div>
                    <div class="p-con">
                        <span class="p-con-sp">销量</span>
                        <span>12892 单</span>
                    </div>
                    <div class="p-con">
                        <span class="p-con-sp">好评</span>
                        <img alt="" width="20" height="20" src="/imgs/ico/star-icon.png">
                        <img alt="" width="20" height="20" src="/imgs/ico/star-icon.png">
                        <img alt="" width="20" height="20" src="/imgs/ico/star-icon.png">
                        <img alt="" width="20" height="20" src="/imgs/ico/star-icon.png">
                        <img alt="" width="20" height="20" src="/imgs/ico/star-icon.png">
                    </div>
                    <div class="p-con">
                        <span class="p-con-sp">主营</span>
                        <a href="" target="_blank" title="【明星代练：信誉保证，欲购从速！>>>>>猛戳这里！】">91天狼</a>
                        <a href="" target="_blank" title="【明星代练：信誉保证，欲购从速！>>>>>猛戳这里！】">王者荣耀</a>
                    </div>
                    <div class="p-operate">
                        <span>❤&nbsp;<a href="">关注</a></span>
                        <span>⌂&nbsp;<a href="">进店</a></span>
                    </div>
                </div>
            </li>
        </#list>
    </ul>
</div>
<div id="page">
    <p id="pageP" align="center">
        <a href="javascript:void(0)" class="page-button"><i>上一页</i></a>
        <a href="" class="page-button-p page-button">1</a>
        <a href="" class="page-button-p page-button">2</a>
        <a href="" class="page-button-p page-button">3</a>
        <a href="" class="page-button-p page-button">4</a>
        <a href="" class="page-button-p page-button">5</a>
        <a href="javascript:void(0)" class="page-button"><i>下一页</i></a>&nbsp; &nbsp;
        共5页&nbsp; 到第
        <input type="text" value="4">
        页
        <a href="javascript:void(0)" class="page-button">跳&nbsp;转</a>
    </p>
    <div class="hr" id="footer-hr"></div>
</div>

</body>
</html>