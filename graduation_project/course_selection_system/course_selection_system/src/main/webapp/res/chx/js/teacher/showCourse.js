function ShowCourse(){
}

Selection.prototype.init = function(){
}

Selection.prototype.bindEvent = function(){
	var self = this;
	
	$("#course_form_sumbit").click(function(){
		alert(1);
	});
	
}

var ShowCourse_Page = new ShowCourse();


$(document).ready(function(){
	ShowCourse_Page.bindEvent();
	ShowCourse_Page.init();	
});

function check(){
	alert(1);
}
