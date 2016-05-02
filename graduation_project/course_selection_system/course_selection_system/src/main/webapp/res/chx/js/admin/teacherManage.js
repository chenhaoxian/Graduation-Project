function TeacherManage(){
	this.dom_search_all = "btn_search_allTeacher";
}

TeacherManage.prototype.init = function(){
	var self = this;

}

TeacherManage.prototype.bindEvent = function(){
	var self = this;
	var test = "test";
	var tbody = $("#teacher_data_table");
	
	
	$("#btn_search_allTeacher").click(function(){
		tbody.empty();
		$.ajax({
			type:"POST",
			url:"../../admin/teacherManage/findAllTeacher.do",
			data:{},
			cache:false,
			dataType: "json",
			processData : true,
			async: false,
			success:function(list){
				if(list != null){
					var trs = "";
					$.each(list,function(key,value){
						trs += "<tr><td>"+(key+1)+"</td><td>"+value.tname+"</td><td>"+value.tno+"</td><td>"+value.departmentName+"</td><td><button onclick='deleteTeacher(\""+value.tno+"\",\""+key+"\")'>移除</button></td></tr>";
					});
					$("#teacher_data_table").append(trs);
					
				}else{
					var tr = "<tr><td>no record found!</td></tr>";
					$("#teacher_data_table").append(trs);
				}
			},
			error:function(){
				alert("error");
			}
		});
//		alert(test);
//		$.ajax({
//			type:"post",
//			url:"../../myAdmin/findAllStudent.do",
//			data:{},
//			success:function(msg){
//				alert(2);
//			}
//		});

	});
	
	$("#btn_search_teacher").click(function(){
		
		var studentNo = $.trim($("#studentNo").val());
		if(studentNo == "" || studentNo == null){
			alert("请输入学生学号");
		}else{
			tbody.empty();
			$.ajax({
				type: "post",
				url: "../../myAdmin/searchStudentBySno.do",
				data: {
					"sno": studentNo
				},
				cache: true,
				dataType : "json",
				success: function(data){
					if(data != null){
						
						var resultRow = "<tr><td>"+1+"</td><td>"+data.sname+"</td><td>"+data.sno+"</td><td>"+data.grade+"</td><td>"+data.professionName+"</td><td>"+data.departmentName+"</td><td><button onclick='deleteStudent(\""+data.sno+"\",\""+1+"\")'>移除</button></td></tr>";
						tbody.append(resultRow);
//						$("#btn_previous").attr("disabled","disabled");
//						$("#btn_next").attr("disabled","disabled");
					}else{
						var resultRow = "<tr><td>no data found!</td></tr>";
						tbody.append(resultRow);
					}
				},
				error : function(){
					alert("对不起，没有这门课！");
				}
			});
		}
	});

}

var TeacherManage_Page = new TeacherManage();


$(document).ready(function(){
	TeacherManage_Page.bindEvent();
	TeacherManage_Page.init();	
});

function deleteTeacher(tno,row){
//	alert(tno+'   '+row);
	$.ajax({
		type : "post",
		url : "../../admin/deleteTeacher.do",
		data : {
			"tno" : tno
		},
		success : function(msg){
			alert(msg);
			if(msg == "success"){
				alert("删除教师成功");
				$("#teacher_data_table tr:eq("+row+")").hide();
			}else if(msg == "fail"){
				alert("删除教师失败");
			}
		}
	});

}


