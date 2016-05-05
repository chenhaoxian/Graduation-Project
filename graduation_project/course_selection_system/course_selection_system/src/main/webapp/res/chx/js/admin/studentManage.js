function StudentManage(){
	this.dom_search_all = "btn_search_allStudent";
}

StudentManage.prototype.init = function(){
	var self = this;

}

StudentManage.prototype.bindEvent = function(){
	var self = this;
	var test = "test";
	var tbody = $("#student_data_table");
	
	
	$("#btn_search_allStudent").click(function(){
		tbody.empty();
		$.ajax({
			type:"POST",
			url:"../../myAdmin/findAllStudent.do",
			data:{},
			cache:false,
			dataType: "json",
			processData : true,
			async: false,
			success:function(list){
				if(list != null){
					var trs = "";
					$.each(list,function(key,value){
						trs += "<tr><td>"+(key+1)+"</td><td>"+value.sname+"</td><td>"+value.sno+"</td><td>"+value.grade+"</td><td>"+value.professionName+"</td><td>"+value.departmentName+"</td><td align='center'><button class='btn btn-danger' onclick='deleteStudent(\""+value.sno+"\",\""+key+"\")'>移除</button></td></tr>";
					});
					$("#student_data_table").append(trs);
					
				}else{
					var tr = "<tr><td>no data found!</td></tr>";
					$("#student_data_table").append(trs);
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
	
	$("#btn_search_student").click(function(){
		
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
						
						var resultRow = "<tr><td>"+1+"</td><td>"+data.sname+"</td><td>"+data.sno+"</td><td>"+data.grade+"</td><td>"+data.professionName+"</td><td>"+data.departmentName+"</td><td align='center'><button class='btn btn-danger' onclick='deleteStudent(\""+data.sno+"\",\""+1+"\")'>移除</button></td></tr>";
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

var StudentManage_Page = new StudentManage();


$(document).ready(function(){
	StudentManage_Page.bindEvent();
	StudentManage_Page.init();	
});

function deleteStudent(sno,row){
	$.ajax({
		type : "post",
		url : "../../myAdmin/deleteStudent.do",
		data : {
			"sno" : sno
		},
		success : function(msg){
			alert(msg);
			if(msg == "success"){
				alert("删除学生成功");
				$("#student_data_table tr:eq("+row+")").hide();
			}else if(msg == "fail"){
				alert("删除学生失败");
			}
		}
	});

}


