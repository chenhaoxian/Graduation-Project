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

	$('#course_data_table tr:odd').css('background-color', '#CCCCCC');
	$('#course_data_table tr:even').css('background-color','');
	$("#course_data_table tr:odd").addClass("odd");
	$("#course_data_table tr:even").addClass("even");
	
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
//		multiple: true,
//		multipleSeparator: " ",
//		multipleSeparator:String.fromCharCode(17),
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

Selection.prototype.bindEvent = function(){
	var self = this;
	
	$("#btn_search_course").click(function(){
		var courseName = $.trim($("#courseName").val());
		if(courseName == "" || courseName == null){
			alert("请输入课程名");
		}else{
			$.ajax({
				type: "post",
				url: "../searchHelper/searchCourseByCourseName.do",
				data: {
					"courseName": courseName
				},
				cache: true,
				dataType : "json",
				success: function(data){
					if(data != null){
						var tbody = $("#course_data_table");
						tbody.empty();
						var resultRow = "<tr><td><input value=\"选择\" type=\"button\" class=\"button button-glow button-rounded \" onclick=\"selectCourse('"+data.cno+"')\" ></td><td>"+data.ctime+"</td><td><button class=\"button button-glow button-rounded \" onclick=\"show_teacher('"+data.teacher.tname+"','"+data.teacher.department.departmentName+" ')\">"+data.cname+"</button></td><td>"+data.ctype+"</td><td>"+data.credit+"</td><td>"+data.total+"</td><td>"+data.margin+"</td></tr>";
						tbody.append(resultRow);
						$("#btn_previous").attr("disabled","disabled");
						$("#btn_next").attr("disabled","disabled");
					}else{
						alert("对不起，没有这门课！");
					}
				},
				error : function(){
					alert("对不起，没有这门课！");
				}
			});
		}
	});
	
}

var Selection_Page = new Selection();

var data = [];

$(document).ready(function(){
	Selection_Page.bindEvent();
	Selection_Page.init();	
});

function show_teacher(teacherName,departmentName){
	alert('授课老师:'+teacherName+' , 学院：'+departmentName);
}

function selectCourse(cno){
	$.ajax({
		type: "post",
		url: "../student/selectCourse.do",
		data:{
			"cno" : cno
			
		},
		success: function(msg){
			if(msg == "success"){
				alert("选课成功");
				$(this).vjs.Slider;
			}else if(msg == "fail"){
				alert("选课失败，你已经选择了这门课");
				$(this).attr("disabled","disabled");
			}else if(msg == "error"){
				alert("操作失败,请登录");
			}
		}
	});
}