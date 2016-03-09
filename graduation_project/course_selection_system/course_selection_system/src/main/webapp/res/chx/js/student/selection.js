function Selection(){
	this.dom_CourseName = "courseName";
	
	
//	this.courseNameOption={
//			width: 320,
//			onFindValue: function(){
//			},
//			minChars: 1,
//		    matchContains: true,
//		    cacheLength: 200,
//		    max:21,
//		    multipleSeparator:String.fromCharCode(17),
//		    formatItem: function(row) {
//		    	return row[0];
//			  },
//			  formatResult: function(row) {
//		    	return row[0];
//		  	}
//	};
	
}

Selection.prototype.init = function(){
	var self = this;
//	$('#courseName').autocomplete("${pageContext.request.contextPath}/jsp/student/course_name.jsp",self.courseNameOption);

//	window.location.href = "${pageContext.request.contextPath}/searchHelper/findCourseNameForAutoComplete.do";
	$.ajax({
		type: "POST",
		url: "../searchHelper/findCourseNameForAutoComplete.do",
		data: {},
		cache : false,
		dataType: "json",
		processData : true,
		async: false,
		success: function(result){
			data = result;
		},
		error : function(){
			alert("获取课程名失败！");
		}
	});

//	$("#btn_test").click(function(){
//		var str = "../searchHelper/findCourseNameForAutoComplete.do"
//		window.location.href = str;
//	});
	
	
	$("#courseName").autocomplete(data, {
		width: 400,
		onFindValue: function(){
		},
		matchContains: true,
		highlight: false,
		multiple: true,
		multipleSeparator: " ",
		multipleSeparator:String.fromCharCode(17),
		scroll: true,
		scrollHeight: 300,
		formatItem: function(row) {
	    	return row[0];
		  },
		  formatResult: function(row) {
	    	return row[0];
	  	}
	});
}

var Selection_Page = new Selection();

var data = [];

$(document).ready(function(){
	
	Selection_Page.init();

	
});


function show_teacher(teacherName,departmentName){
	alert('授课老师:'+teacherName+' , 学院：'+departmentName);

}