function checkSession() {
	
	$.post("AdminServlet", {
		"ope" : "checkSession"
		
	}, checkSession, "json");

	function checkSession(data) {
		
		if(data==true){
			alert("session登录已超时！");
               			 logout();
       window.top.location.href="index.jsp";
		 }
		
			}
	
}
function logout() {

		location.href = "LoginServlet?ope=logout";

	}

function goindex() {

	location.href = "LoginServlet";

}

function equip(){
	iframe.location.href="LoginServlet/admin/iframe/equip.jsp";
	
}
function addEquip(){
	iframe.location.href="LoginServlet/admin/iframe/addEquip.jsp";	
	
}
function userDm(){
	iframe.location.href="LoginServlet/admin/iframe/userDm.jsp";
	
}


function uuid(){
	iframe.location.href="RechargeServlet?ope=toUuid";
	
}
function addUuid(){
	iframe.location.href="RechargeServlet?ope=toAddUuid";
	
}

$(function(){

	$.post("AdminServlet", {
		"ope" : "getAdminById"
	},function getAdminById(data) {

		$("#adminInfo").empty();
		$("#adminInfo")
				.append("<ul><li class=mt-10 ><img  id=adminImg src="+data.img+" /></li></ul>"
						+"<ul><li class='white mt-2' >ID："+data.uid+"</li></ul>"
						+"<ul><li class='white mt-2' >"+data.name+"</li></ul>");


	}, "json");


	
	
	
	
	
	$("#equip").click(function(){


		if($("#equipDiv").is(":visible")){
			$("#leftList").find("div").hide();
		}else{
			$("#leftList").find("div").hide();
			$("#equipDiv").show();
			$("#equipDiv").addClass("animated flip");
		}
		
		
	}
	);


	$("#userDm").click(function(){

		
		if($("#userDmDiv").is(":visible")){
			$("#leftList").find("div").hide();
		}else{
			$("#leftList").find("div").hide();
			$("#userDmDiv").show();
			$("#userDmDiv").addClass("animated flip");
		}
		
		
	}
	);	
	
$("#uuid").click(function(){

		
		if($("#uuidDiv").is(":visible")){
			$("#leftList").find("div").hide();
		}else{
			$("#leftList").find("div").hide();
			$("#uuidDiv").show();
			$("#uuidDiv").addClass("animated flip");
		}
		
		
	}
	);	
	
});



