$(document).ready(

function() {
    
	
	$("#checkUser").click(function(){
		var user =$("#user").val();
		var pwd =$("#pwd").val();
		var reg = /^\w{5,}$/;
	
		if(!reg.test(user)){
			 
			 alert("账号格式不正确");
			 return false;
			 
		 }
		if(!reg.test(pwd)){
			 
			 alert("密码格式不正确");
			 return false;
			 
		 }
		
		
		
		return true;
	});
	
	
	
	
	

});
