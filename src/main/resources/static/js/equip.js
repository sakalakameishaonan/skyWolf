function equipUpdate(e) {
	var id = $(e).attr("name");
	location.href ="AdminServlet?ope=equipUpdate&id="+id;
	
	
}

function equipDelete(e){
	var id = $(e).attr("name");
	var msg="确认要删除此条信息吗？\n请选择！"
	if (confirm(msg)){
	$.post("AdminServlet", {
		"ope" : "equipDel",
		"id" : id
		
	}, equipDel, "json");

	function equipDel(data) {
	
		if(parseInt(data)>0){
		
		equipManager(1, 4, 0,null);
		
	}else{
		
		alert("删除失败！");
	}
		
}
	return;	
	}
}

function equipManager(pageIndex, pageSize, type,name) {
		
			
			$.post("AdminServlet", {
				"ope" : "equip",
				"name" : name,
				"type" : type,
				"pageIndex" : pageIndex,
				"pageSize" : pageSize
			}, equipShow, "json");

			function equipShow(data) {
				$("#equipShow").empty();
				$("#equipTitle").empty();
				
				if (data == null) {
		
		
			$("#equipShow").append("<span style=text-align:center;font-size:110px;line-height:140px; class=blury >空空如也</span>");
		
					

				} else {
					
					$("#equipTitle").append("<ul class=ul ><li class='li bg' >图片</li><li class='li bg' >名称</li><li class='li bg' >价格</li><li class='li bg' >类型</li><li class='li bg' >作用</li><li class='li bg' >操作</li></ul>");
					for (var i = 0; i < data.length; i++) {
                      var li = ((i+1)%4==0)? "lib":"li";
						
				$("#equipShow").append("<ul class=ul ><li  class="+li+" ><img  style=height:40px;width:40px;margin:5px;padding:5px;border-radius:4px; src="
						+ data[i].img
						+ " /></li><li  class="+li+" >"+ data[i].name+"</li><li  class="+li+" >"+ data[i].price+"</li><li class="+li+" >"+ data[i].typename+"</li><li  class="+li+" >"+ data[i].desc+"</li><li class="+li+" ><a href=javascript:; name="+ data[i].id+" onClick=equipUpdate(this) style=color:#000><span class=updateSpan>编辑</span></a>&nbsp;&nbsp;<a href=javascript:; name="+ data[i].id+" onClick=equipDelete(this) style=color:#000><span class=deleteSpan>删除</span></a></span></div>");

					}

					
					
					
					
					$.post("AdminServlet", {
						"ope" : "equipLimit",
						"name" : name,
						"type" : type,
						"pageIndex" : pageIndex,
						"pageSize" : pageSize
					}, equipLimit, "json");
					

					function equipLimit(data) {
						$("#equipLimit").empty();
						var totalPage = data.totalPageCount;
				    	
						if(data.totalCount>0){
					if (pageIndex != 1) {

						$("#equipLimit").append("<a  href=javascript:; class=limitSpan onclick=equipManager(1,4,"
										+ type
										+ ","+name+")>首页</a>&nbsp;<a href=javascript:; class=limitSpan  onclick=equipManager("
										+ (Number(pageIndex) - Number(1))
										+ ","
										+ data.pageSize
										+ ","
										+ type
										+ ","+name+") > 上一页</a>");

					}

					if (pageIndex != totalPage) {

						$("#equipLimit")
								.append("&nbsp;<a href=javascript:; class=limitSpan onclick=equipManager("
										+(Number(pageIndex) + Number(1))
										+ ","
										+ data.pageSize
										+ ","
										+ type
										+","+name+")>下一页</a>&nbsp;<a  href=javascript:; class=limitSpan onclick=equipManager("
										+ totalPage
										+ ","
										+ data.pageSize
										+ ","
										+ type
										+","+name+")>尾页</a>")

					}

					$("#equipLimit").append("&nbsp;<span class=limitSpan>第"
							+ pageIndex
							+ "页，共"
							+ totalPage
							+ "页");
					

				
					
				}
					}
			}
			
			
			
		}
			}



$(function(){
	equipManager(1, 4, 0,null);
});