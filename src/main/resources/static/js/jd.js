
window.onload=function()
{
    var oJd_pic=document.getElementById('jd_pic');
    var oMyshopcar=getClass(oJd_pic,'myshopcar')[0];
    var oHide_mycar=getClass(oJd_pic,'hide_mycar')[0];
    var timer=null;
     // oMyshopcar.onmouseover=oHide_mycar.onmouseover=function(){
     //    clearTimeout(timer);
     //    oHide_mycar.style.display='block';
     //    oMyshopcar.style.border='none';
     // };
     // oMyshopcar.onmouseout=oHide_mycar.onmouseout=function(){

     //     timer=setTimeout(function (){
     //        oHide_mycar.style.display='none';
     //    }, 100);
     // };
    // 图片抖动效果
    var oJd_good=document.getElementById('jd_good');
    var oJd_time=document.getElementById('jd_time');
    var oDiv_logo=document.getElementById('login');
    var oPrize_ticket=document.getElementById('prize_ticket');
    var oDiv_menu=document.getElementById('menu');
    var oImg_close=getClass(oDiv_logo,'close')[0];
    var oDiv_hide=getClass(oDiv_menu,'hide_address')[0];
    var oA_addre=getClass(oDiv_menu,'addre')[0];
    var aTu=getClass(oJd_good,'tu');
    var aCon_left_img=getClass(oJd_good,'con_left_ul_img');
    var aJd_img=getClass(oJd_time,'move');
    var aHide_img_move=getClass(oPrize_ticket,'hide_img_move');
    var aBig=getClass(oPrize_ticket,'big');
    oImg_close.onclick=function()
     {
     	startmove(oDiv_logo,{opacity:0},function(){
    		oDiv_logo.style.height =0;
    	});
     };

     for(var i=0;i<aCon_left_img.length;i++)
     {
        aCon_left_img[i].index=i;
        aCon_left_img[i].onmouseover=function()
        {
          startmove(aCon_left_img[this.index],{left:95});
       };
       aCon_left_img[i].onmouseout=function()
        {
          startmove(aCon_left_img[this.index],{left:100});
       };
     }

     for(var i=0;i<aTu.length;i++)
     {
        aTu[i].index=i;
        aTu[i].onmouseover=function()
        {
          startmove(aTu[this.index],{left:25});
       };
       aTu[i].onmouseout=function()
        {
          startmove(aTu[this.index],{left:30});
       };
     }
     for(var i=0;i<aJd_img.length;i++)
     {
        aJd_img[i].index=i;
        aJd_img[i].onmouseover=function()
        {
          startmove(aJd_img[this.index],{top:4});
       };
       aJd_img[i].onmouseout=function()
        {
          startmove(aJd_img[this.index],{top:10});
       };
     }
      for(var i=0;i<aBig.length;i++)
     { 
        aBig[i].index=i; 
        aBig[i].onmouseover=function()
        {
            startmove(aHide_img_move[this.index],{left:55});
        };
        aBig[i].onmouseout=function()
        {
            startmove(aHide_img_move[this.index],{left:40});
        };
     }
     var oJoin=document.getElementById('join');
     var aJoin_img=getClass(oJoin,'join_img');
     var aSmall_Join_img=getClass(oJoin,'small_join_img');
     var aJoin=getClass(oJoin,'first_squ mar_r_b');
     var aBott=getClass(oJoin,'first_squ mar_r');
     var oSma_1=getClass(oJoin,'small_squ mar_r')[0];
     var oSma_2=getClass(oJoin,'small_squ')[0];
      // alert(oSma_1);
      for(var i=0;i<aJoin.length;i++)
     { 
        aJoin[i].index=i; 
        aJoin[i].onmouseover=function()
        {
            startmove(aJoin_img[this.index],{left:0});
        };
        aJoin[i].onmouseout=function()
        {
            startmove(aJoin_img[this.index],{left:10});
        };
     }
      for(var i=0;i<aBott.length;i++)
     { 
        aBott[i].index=i; 
        aBott[i].onmouseover=function()
        { 
            startmove(aJoin_img[this.index+4],{left:0});
        };
        aBott[i].onmouseout=function()
        {
            startmove(aJoin_img[this.index+4],{left:10});
        };
     }
        oSma_1.onmouseover=function()
        {
            startmove(aSmall_Join_img[0],{left:-10});
            // alert(6);
        };
        oSma_1.onmouseout=function()
        {
            startmove(aSmall_Join_img[0],{left:0});
        };
        oSma_2.onmouseover=function()
        {
            startmove(aSmall_Join_img[1],{left:-10});
        };
        oSma_2.onmouseout=function()
        {
            startmove(aSmall_Join_img[1],{left:0});
        };
        // .....爱逛..........................
        var oLove_life=document.getElementById('love_life');
        var oHouse=document.getElementById('house');
        var oComputer=document.getElementById('computer');
        var oPlay=document.getElementById('play');
        var oLove_body=document.getElementById('love_body');
        var oLove_reading=document.getElementById('love_reading');
        moveLeft(oLove_life);
        moveLeft(oHouse);
        moveLeft(oComputer);
        moveLeft(oPlay);
        moveLeft(oLove_body);
        moveLeft(oLove_reading);
        function moveLeft(obj)
        {
            
            var aMidd_left=getClass(obj,'midd_left');
            var aBi=getClass(obj,'big');
            // alert(aBi.length);
            for(var i=0;i<aMidd_left.length;i++)
            {
                aMidd_left[i].index=i;
                aMidd_left[i].onmouseover=function()
                {   
                     // alert(5);
                    startmove(aBi[this.index],{left:-10});
                }
                aMidd_left[i].onmouseout=function()
                {
                    startmove(aBi[this.index],{left:0});
                }
            }
            var oMidd_right=getClass(obj,'midd_right');
            var aR_num_1=oMidd_right[0].getElementsByTagName('div');
            var aR_num_2=oMidd_right[1].getElementsByTagName('div');
            var aSma=getClass(obj,'sma');
              // alert(aSma.length);
            for(var i=0;i<aR_num_1.length;i++)
            {
                aR_num_1[i].index=i;
                aR_num_1[i].onmouseover=function()
                {   
                    startmove(aSma[this.index],{left:74});
                }
                aR_num_1[i].onmouseout=function()
                {
                    startmove(aSma[this.index],{left:84});
                }
            }
            for(var i=0;i<aR_num_2.length;i++)
            {
                aR_num_2[i].index=i;
                aR_num_2[i].onmouseover=function()
                {   
                    startmove(aSma[this.index+4],{left:74});
                }
                aR_num_2[i].onmouseout=function()
                {
                    startmove(aSma[this.index+4],{left:84});
                }
            }
            var aBt=getClass(obj,'bt');
            var aBig_m=getClass(obj,'big_m');
            for(var i=0;i<aBt.length;i++)
            {
                aBt[i].index=i;
                aBt[i].onmouseover=function()
                {   
                    startmove(aBig_m[this.index],{left:-10});
                }
                aBt[i].onmouseout=function()
                {
                    startmove(aBig_m[this.index],{left:0});
                }
            }
        }
        // ...........................................................
        var oLove_eat=document.getElementById('love_eat');
        var oMidd_right=getClass(oLove_eat,'midd_right')[0];
        var aR_num=oMidd_right.getElementsByTagName('div');
        var aSma=getClass(oMidd_right,'sma');
       for(var i=0;i<aR_num.length;i++)
        {
            
            aR_num[i].index=i;
            aR_num[i].onmouseover=function()
            {   
                startmove(aSma[this.index],{left:74});
            }
            aR_num[i].onmouseout=function()
            {
                startmove(aSma[this.index],{left:84});
            }
        }
      var oNewMidd_right=getClass(oLove_eat,'midd_right new_midd_left')[0];
      var aNew_d=oNewMidd_right.getElementsByTagName('div');
      var aNewSma=getClass(oNewMidd_right,'sma');
      // alert(aNew_d.length);
      for(var i=0;i<aNew_d.length;i++)
        {
            
            aNew_d[i].index=i;
            aNew_d[i].onmouseover=function()
            {   
                startmove(aNewSma[this.index],{left:74});
            }
            aNew_d[i].onmouseout=function()
            {
                startmove(aNewSma[this.index],{left:84});
            }
        }
        var oNew=getClass(oLove_eat,'midd_left flo_left')[0];
        var oNewbig=getClass(oNew,'big')[0];
           oNew.onmouseover=function()
            {   
                startmove(oNewbig,{left:-10});
            }
            oNew.onmouseout=function()
            {
                startmove(oNewbig,{left:0});
            }
        /////////////////////////
        var oLove_game=document.getElementById('love_game');
        var aT_left=getClass(oLove_game,'t_left');
        var aBt_i=getClass(oLove_game,'bt_i');
        var aLeft_img=getClass(oLove_game,'t_left_img');
        var aBott_img=getClass(oLove_game,'t_bottom_img');
         // alert(aBott_img.length);
        for(var i=0;i<aT_left.length;i++)
        {
            
            aT_left[i].index=i;
            aT_left[i].onmouseover=function()
            {   
                startmove(aLeft_img[this.index],{left:-10});
            }
            aT_left[i].onmouseout=function()
            {
                startmove(aLeft_img[this.index],{left:0});
            }
        }
         for(var i=0;i<aBt_i.length;i++)
        {
            
            aBt_i[i].index=i;
            aBt_i[i].onmouseover=function()
            {   
                startmove(aBott_img[this.index],{left:-10});
            }
            aBt_i[i].onmouseout=function()
            {
                startmove(aBott_img[this.index],{left:0});
            }
        }
          var aSmimg=getClass(oLove_game,'t_left_smimg');
          var aT_righ=getClass(oLove_game,'t_right');
          var aT_r1=aT_righ[0].getElementsByTagName('div');
          var aT_r2=aT_righ[1].getElementsByTagName('div');
          var aT_r3=aT_righ[2].getElementsByTagName('div');
          // alert(aT_r1.length);
         for(var i=0;i<aT_r1.length;i++)
         {
            
            aT_r1[i].index=i;
            aT_r1[i].onmouseover=function()
            {   
                startmove(aSmimg[this.index],{left:74});
            }
            aT_r1[i].onmouseout=function()
            {
                startmove(aSmimg[this.index],{left:84});
            }
        }
        for(var i=0;i<aT_r2.length;i++)
         {
            
            aT_r2[i].index=i;
            aT_r2[i].onmouseover=function()
            {   
                startmove(aSmimg[this.index+2],{left:74});
            }
            aT_r2[i].onmouseout=function()
            {
                startmove(aSmimg[this.index+2],{left:84});
            }
        }
        for(var i=0;i<aT_r3.length;i++)
         {
            
            aT_r3[i].index=i;
            aT_r3[i].onmouseover=function()
            {   
                startmove(aSmimg[this.index+4],{left:74});
            }
            aT_r3[i].onmouseout=function()
            {
                startmove(aSmimg[this.index+4],{left:84});
            }
        }
        // ...........................................................
        
     //图片抖动效果结束
     // 右侧固定悬浮
     var oRig_1=getClass(document,'rig_1')[0];
     var oRig_move_1=getClass(document,'rig_move_1')[0];
     var oRig_2=getClass(document,'rig_2')[0];
     var oRig_move_2=getClass(document,'rig_move_2')[0];
     var oRig_3=getClass(document,'rig_3')[0];
     var oRig_move_3=getClass(document,'rig_move_3')[0];
     var oRig_4=getClass(document,'rig_4')[0];
     var oRig_move_4=getClass(document,'rig_move_4')[0];
     var oRig_5=getClass(document,'rig_5')[0];
     var oRig_move_5=getClass(document,'rig_move_5')[0];
     var oRig_6=getClass(document,'rig_6')[0];
     var oRig_move_6=getClass(document,'rig_move_6')[0];
     var oRig_7=getClass(document,'rig_7')[0];
     var oRig_move_7=getClass(document,'rig_move_7')[0];
     var oRig_8=getClass(document,'rig_8')[0];
     var oRig_move_8=getClass(document,'rig_move_8')[0];
     rigMove(oRig_1,oRig_move_1);
     rigMove(oRig_2,oRig_move_2);
     rigMove(oRig_3,oRig_move_3);
     rigMove(oRig_4,oRig_move_4);
     rigMove(oRig_5,oRig_move_5);
     rigMove(oRig_6,oRig_move_6);
     rigMove(oRig_7,oRig_move_7);
     rigMove(oRig_8,oRig_move_8);
     function rigMove(obj1,obj2)
     {
        obj1.onmouseover=function()
       {
           // alert(5);
          obj2.style.backgroundColor='#C81623';
          obj1.style.backgroundColor='#C81623';
           startmove(obj1,{right:0});
       };
       obj1.onmouseout=function()
       {
         obj2.style.backgroundColor='#7A6E6E';
          obj1.style.backgroundColor='#7A6E6E';
           startmove(obj1,{right:-54});
       };
     }      
     // 右侧固定悬浮结束
     //////////////////////
     var oMore=document.getElementById('more');
     var aFlo_shop=getClass(oMore,'flo-shop');
     // alert(aFlo_shop.length);
     for(var i=0;i<aFlo_shop.length;i++)
     {
        aFlo_shop[i].onmouseover=function()
        {
            // alert(5);
            this.style.borderColor = '#F10214';
        };
        aFlo_shop[i].onmouseout=function()
        {
            this.style.borderColor = '#FFFFFF';
        };
     }
    ////////////////////////////////////
    var oXuanting=document.getElementById('xuanting');
    var aXuanlink=oXuanting.getElementsByTagName('a');
    // var flag=true;
    for(var i=0;i<aXuanlink.length;i++)
    {
        aXuanlink[i].index=i;
        aXuanlink[i].onclick=function()
        {
            for(var i=0;i<aXuanlink.length;i++)
            {

                aXuanlink[i].style.background='#918888';
                aXuanlink[aXuanlink.length-1].style.background='#5E4A4A';
            }
            if(this.index==aXuanlink.length-1)
            {
               aXuanlink[this.index].style.background='#5E4A4A';
               // break;
            }
            else
            {
               aXuanlink[this.index].style.background='#D70B1C';
            }
            moveScrollTop(this.index);
        };
        aXuanlink[i].onmouseover=function()
        {
            if(this.index==aXuanlink.length-1)
            {
               aXuanlink[this.index].style.background='#5E4A4A';
            }
            else{
                aXuanlink[this.index].style.background='#D70B1C';
            }
            
        };
        aXuanlink[i].onmouseout=function()
        {
            if(this.index==aXuanlink.length-1)
            {
               aXuanlink[this.index].style.background='#5E4A4A';
            }
            else
            {
               aXuanlink[this.index].style.background='#918888';
            }
            
        };
    }
    ////////////////////////////////轮播图
    var oNull=document.getElementById('null_content');
    var oCondiv=getClass(oNull,'content_midd_top')[0];
    var oPrev=getClass(oNull,'prev')[0];
    var oNext=getClass(oNull,'next')[0];
    var aShow_btn=getClass(oNull,'show_img');
    var aPic=getClass(oNull,'pic_info');
    var now=0;
    var nowZindex=2;
    // alert(aPic.length);
    oCondiv.onmouseover=function()
    {
        oPrev.style.display = 'block';
         oNext.style.display = 'block';
         clearInterval(timer);
    };
    oCondiv.onmouseout=function()
    {
       oPrev.style.display = 'none';
       oNext.style.display = 'none';
       timer=setInterval(oNext.onclick,2000);
    };
     oPrev.onmouseover=oNext.onmouseover=function()
    {
         startmove(oPrev,{opacity:80});
    };
    oNext.onmouseover=function()
    {
         startmove(oNext,{opacity:80});
    }
    oPrev.onmouseout=function()
    {
        startmove(oPrev,{opacity:50});
      
    };
    oNext.onmouseout=function()
    {
          startmove(oNext,{opacity:50});
    };
    
    for(var i=0;i<aShow_btn.length;i++)
    {
        aShow_btn[i].index=i;
        aShow_btn[i].onmouseover=function()
        {
          if(this.index==now)return;
           now=this.index;

           tab();
        }
    }
    function tab()
    {
        for(var i=0;i<aShow_btn.length;i++)
        {
           aShow_btn[i].style.background='#FFFFFF';
        }
        aPic[now].style.zIndex =nowZindex++;
        aPic[now].style.width=0;
        startmove(aPic[now],{width:790});
        aShow_btn[now].style.background='#DB192A';
    }
    oPrev.onclick=function()
    { 
         now--;
         if(now==-1)
         {
            now=aPic.length-1;
         }
         tab();
    };
     oNext.onclick=function()
    { 
        now++;
       if(now==aPic.length)
       {
         now=0;
       }
      tab();
    };
    var timer=setInterval(oNext.onclick,2000);
     ///////////////////////////////////隐藏菜单
    var aHide_div=getClass(oNull,'hide_right_info');
    var aHide_li=getClass(oNull,'hide_left');
     // alert(aHide_div.length);
    for(var i=0;i<aHide_li.length;i++)
    {
          aHide_li[i].index=i;
          aHide_li[i].onmouseover=function()
          {
             aHide_li[this.index].style.background='#999395';
             aHide_div[this.index].style.display='block';
          };
          aHide_li[i].onmouseout=function()
          {
             aHide_li[this.index].style.background='#6E6568';
             aHide_div[this.index].style.display='none';
          };
    }
    //////////////////////
    var oRight_top=getClass(document,'rig_7')[0];
    oRight_top.onclick=function()
    {
        moveTop(document.getElementById('login'));
    };
};


var timer=null;
window.onscroll=function()
{
     var scrollTop=parseInt(document.documentElement.scrollTop||document.body.scrollTop);
    // 顶部悬浮
    var oHide_top=document.getElementById('hide_top');
    var oSerch_value=getClass(oHide_top,'serch_value')[0];
     if(scrollTop>(document.getElementById('jd_time').offsetTop-50))
    {
      oHide_top.style.display ='block';
       oSerch_value.value='跨店免4';
    }
    if(scrollTop<(document.getElementById('jd_time').offsetTop-50))
    {
         oHide_top.style.display ='none';
    }
    oSerch_value.onfocus=function()
    {
       this.value='';
       // this.select();
    };
    oSerch_value.onblur=function()
    {
       this.value='跨店免4';
       // this.select();
    };
    // 顶部悬浮结束
     // 左侧中间悬停
    var oXuanting=document.getElementById('xuanting');
    if(scrollTop>(document.getElementById('prize_ticket').offsetTop-50)) 
    {
      oXuanting.style.display ='block';
    }
    if(scrollTop<(document.getElementById('prize_ticket').offsetTop))
    {
         oXuanting.style.display ='none';
    }

    var oXuanting=document.getElementById('xuanting');
    var aXuanlink=oXuanting.getElementsByTagName('a');
    changeColor('join',0);
    changeColor('love',1);
    changeColor('house',2);
    changeColor('computer',3);
    changeColor('play',4);
    changeColor('love_eat',5);
    changeColor('love_body',6);
    changeColor('love_reading',7);
    changeColor('love_game',8);
    changeColor('nogo',9);
    function changeColor(id,num)
    {
        var nowTop=document.getElementById(id).offsetTop-scrollTop;
        var seeHeight=parseInt(document.documentElement.clientHeight/2);
        if(nowTop>=0&&nowTop<=seeHeight)
        {
             aXuanlink[num].style.background='#D70B1C';
        }
        else
        {
            aXuanlink[num].style.background='#918888';
        }
    }
    ////////////////
};
function moveScrollTop(num)
{
   switch (num)
    {
       case 0:
            moveTop(document.getElementById('join'));
           break;
       case 1:
            moveTop(document.getElementById('love'));
       break;
       case 2:
            moveTop(document.getElementById('house'));
       break;
       case 3:
            moveTop(document.getElementById('computer'));
       break;
       case 4:
            moveTop(document.getElementById('play'));
       break;
       case 5:
            moveTop(document.getElementById('love_eat'));
       break;
       case 6:
            moveTop(document.getElementById('love_body'));
       break;
       case 7:
            moveTop(document.getElementById('love_reading'));
       break;
       case 8:
            moveTop(document.getElementById('love_game'));
       break;
        case 9:
            moveTop(document.getElementById('nogo'));
       break;
       case 10:
            moveTop(document.getElementById('login'));
       default:
           // statements_def
           break;
   }
}
function moveTop(obj)
{
     clearInterval(timer);
            timer=setInterval(function(){
                var scrollTop=parseInt(document.documentElement.scrollTop||document.body.scrollTop);
                var top=obj.offsetTop-50;
                 var speed=0;
                 // flag=true;
                if(scrollTop>top)
                {
                    speed=-100;
                }
                else
                { 
                      speed=100;
                }
                if(scrollTop<=top+100&&scrollTop>=top-100)
                {
                    clearInterval(timer);
                    document.documentElement.scrollTop=document.body.scrollTop=top;
                }
                else
                {
                     document.documentElement.scrollTop=document.body.scrollTop=scrollTop+speed;
                }
            },30);        
}