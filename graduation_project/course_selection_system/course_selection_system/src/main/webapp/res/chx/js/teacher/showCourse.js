function ShowCourse(){
}

ShowCourse.prototype.init = function(){
	$("#showStudent").hide();
	
}

ShowCourse.prototype.bindEvent = function(){
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
	$("#student_data_table_close").click(function(){
		$("#showStudent").hide();
	});
	
}

var ShowCourse_Page = new ShowCourse();


$(document).ready(function(e){
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
				$("#course_data_table tr:eq("+i+")").hide();
			}else if(msg == "fail"){
				alert("fail");
			}
		}
	});	
}

function displayStudent(cno){
//	document.getElementById("showStudent").display = true;
//	$("showStudent").
//	document.getElementById('showStudent').style.display='block';
//	document.getElementById('showStudent').style.left=50+"%";
//	document.getElementById('showStudent').style.top=50+"%";
//	document.getElementById('showStudent').style.position="absolute";
	$("#student_data_table").empty();
	
	$.ajax({
		type: "post",
		url : "../teacher/findStudent.do",
		data: {
			"cno" : cno
		},
		dataType: "json",
		success : function(list){
			if(list != null){
				
//				$("#showStudent").after("<jsp:include page='studentData.jsp'></jsp:include>");
//				alert(list[0].id);
//				$("#student_data_table").after("");
				var trs = "";
				$.each(list,function(key,value){
//					alert(key+'   '+value);
					
					trs += "<tr><td>"+(key+1)+"</td><td>"+value.sname+"</td><td>"+value.sno+"</td><td>"+value.grade+"</td><td>"+value.professionName+"</td><td>"+value.departmentName+"</td><td><button onclick='removeStudent(\""+value.sno+"\",\""+cno+"\",\""+key+"\")'>移除</button></td></tr>";
				});
//				
				$("#student_data_table").append(trs);
				$("#showStudent").show();
//				window.open("../jsp/teacher/studentData.jsp")
				
			}
		}
	});

}

function removeStudent(sno,cno,row){
	$.ajax({
		type : "post",
		url : "../teacher/removeStudent.do",
		data : {
			"sno" : sno,
			"cno" : cno
		},
		success : function(msg){
			if(msg == "success"){
				alert("移除学生成功");
				$("#student_data_table tr:eq("+row+")").hide();
			}else if(msg == "fail"){
				alert("移除学生失败");
			}
		}
	});
}

