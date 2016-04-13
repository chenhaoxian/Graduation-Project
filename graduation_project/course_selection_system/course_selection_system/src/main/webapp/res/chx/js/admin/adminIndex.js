function AdminIndex(){
}

AdminIndex.prototype.init = function(){
//	var self = this;
//	$.ajax({
//		type: "post",
//		url : "../admin/countContactMessage.do" ,
//		data : {},
////		dataType : "json",
//		success : function(msg){
//			alert(1);
//			alert(msg);
////			$("#count_message_span").html("12");
////			$("#count_message").show();
//		},
//		error : function(msg){
//			alert(2);
//			alert(msg);
//		}
//	});
//	$.post('../admin/countContactMessage.do',{},function(text,status){
//		alert(text);
//	});
	
}

AdminIndex.prototype.bindEvent = function(){
	var self = this;

}

var AdminIndex_Page = new AdminIndex();


$(document).ready(function(){
	AdminIndex_Page.bindEvent();
	AdminIndex_Page.init();	
});


