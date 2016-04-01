	
	//设备分享判断
	$(document).ready(function() {
	   	   var rstemp = localStorage.getItem("reqSource");
		   if(rstemp=="android" || rstemp=="ios") {
			   $("#appShareEm").show();
			   $("#redAppShareEm").show();
		   } else {
			   $("#appShareEm").hide();
			   $("#redAppShareEm").hide();
		   }
		   
		   var vrtemp = localStorage.getItem("appVersion");
		   if(!!vrtemp) {
			   $("#version").html(vrtemp);
		   }
 	});
	/*
	 *	页面js延迟加载以及其他优化 
	 */
	$(window).on("load",function(){
		function getData(obj){
			for(var i in obj){
				$(obj[i]).attr("src",$(obj[i]).attr("data-src"));
			}
		};
		getData(["#chartsJs","#indexJs"]);
		$("#indexJs").on("load",function(){
			//app共用 $.os.weixin localStorage.getItem("reqSource") != null
			if(index.isFromApp()){
				if(localStorage.getItem("loginFlag") == "0"){
				   window.location.href="http://www.username.com/#"+localStorage.getItem("username");
				}else if(localStorage.getItem("loginFlag") == "1"){
					window.location.href="http://www.logout.com/";
				}
			}
			index.show();
			credit.show();
			account.show();
			product.show();
			treasure.show();
			intercalate.show();
			resetPayPassword.show();
			setPayPassword.show();
			caikr_recharge.show();
			goldcoin.show();
			grabEntrance.show();
			mobile_recharge.show();
			dynamic_pwd.show();
			verification.show();
		});
	});