function AddCourse(){
}

Selection.prototype.init = function(){
}

Selection.prototype.bindEvent = function(){
	var self = this;
	
	$("#course_form_sumbit").click(function(){
		alert(1);
	});
	
}

var AddCourse_Page = new AddCourse();


$(document).ready(function(){
	AddCourse_Page.bindEvent();
	AddCourse_Page.init();	
});

function check(){
	alert(1);
}
