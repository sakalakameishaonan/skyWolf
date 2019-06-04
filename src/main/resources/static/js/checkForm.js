var rName=$("[name='name']").val();
$(function (){
	
	
	
	function checkName(){
		var name = $("[name='name']").val();
		var reg = /^\S/;
		 if (!reg.test(name)){
				$("#checkName").text("请填写装备名称！");
			}else{
				
				$("#checkName").text("");
				
			}
		
		
	}
	
	
	function checkEffectType(){
		
		var effectType = $("#effectType").val();

		 if (effectType==0) {
			
			$("#checkEffectType").text("请选择附加功能！");
		}else{
			
			$("#checkEffectType").text("");	
			
		}
		
	}
	
	function checkEquipType(){
		
		var equipType = $("#equipType").val();
		if (equipType==0) {
			$("#checkEquipType").text("请选择装备类型！");
		} else{
			
			$("#checkEquipType").text("");
			
		}
		
	}
	
	
	
	function checkPrice(){
		var price =  $("[name='price']").val();
	    var regPrice = /(^[1-9]([0-9]+)?(\.[0-9]{1,2})?$)|(^(0){1}$)|(^[0-9]\.[0-9]{1,2}$)/;
		if(!regPrice.test(price)) {
			
			$("#checkPrice").text("金额格式不正确！");
		}else {
			
			$("#checkPrice").text("");
			
		}
		
	}
	


	function checkRname(){
		
		var name = $("[name='name']").val();

		$.post("AdminServlet", {
			"ope" : "checkName",
			 "name": name
		}, 


		function check(data) {
			
			if(parseInt(data)>0&&name!=rName){
				$("#checkRname").text("装备名重复！");
				$("#checkName").text("");
				$("[name='name']").focus();
				$("[name='name']").select();
			}else{
				$("#checkRname").text("");	
			
			}
			

		},"JSON");
		
	}
	
	

	
	
	$("[name='name']").blur(function(){
		checkRname();
		checkName();
		
		
	});
	
	
	$("[name='equipType']").change(function(){
	
		checkEquipType();
		
	});
	
	$("[name='effectType']").change(function(){
		
		checkEffectType();
		
	});
	
$("[name='price']").keyup(function(){
		
		checkPrice();
		
	});
	

  
	
	
	

});
