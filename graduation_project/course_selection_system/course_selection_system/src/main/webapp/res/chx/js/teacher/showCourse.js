function ShowCourse(){
}

Selection.prototype.init = function(){
}

Selection.prototype.bindEvent = function(){
	var self = this;
	
//	$("#course_form_sumbit").click(function(){
//		alert(1);
//	});
//	
//	$("#btn_1").click(function(){
//		alert(11);
//	});
//	
//	$(".test").click(function(){
//		alert(1);
//	});
}

var ShowCourse_Page = new ShowCourse();


$(document).ready(function(){
	ShowCourse_Page.bindEvent();
	ShowCourse_Page.init();	
});


function deleteCourse(cno,tno,i){
	$.ajax({
		type : "post",
		url : "../teacher/deleteCourse.do",
		data : {
			"cno" : cno,
			"tno" : tno
		},
		success : function(msg){
			if(msg == "success"){
				alert("success");
				$("#selectCourse_data_table tr:eq("+i+")").hide();
			}else if(msg == "fail"){
				alert("fail");
			}
		}
	});
	
}


