function ShowSelectCourse(){
	
}

ShowSelectCourse.prototype.init = function(){
	var self = this;

	$('#selectCourse_data_table tr:odd').css('background-color', '#CCCCCC');
	$('#selectCourse_data_table tr:even').css('background-color','');
	$("#selectCourse_data_table tr:odd").addClass("odd");
	$("#selectCourse_data_table tr:even").addClass("even");
	
	
}

ShowSelectCourse.prototype.bindEvent = function(){
	var self = this;
	
}

var ShowSelectCourse_Page = new ShowSelectCourse();


$(document).ready(function(){
	ShowSelectCourse_Page.bindEvent();
	ShowSelectCourse_Page.init();	
});
