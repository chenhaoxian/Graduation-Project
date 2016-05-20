function StudentManage(){
	this.dom_search_all = "btn_search_allStudent";
}

StudentManage.prototype.init = function(){
	var self = this;
	
	
	$.ajax({
		type: "POST",
		url: "../../searchHelper/findProfessionNames.do",
		data: {},
		cache : false,
		dataType: "json",
		processData : true,
		async: false,
		success: function(result){
//			alert(result);
			data = result;
		},
		error : function(){
			alert("获取课程名失败！");
		}
	});
	
	
	$("#studentNo").autocomplete(data, {
		width: 400,
		onFindValue: function(){
		},
		matchContains: true,
		highlight: false,
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
	});
	
	
	$("#btn_search_by_professionName").click(function(){
		var studentNo = $.trim($("#studentNo").val());
		var select_grade = $.trim($("#select_grade").val());
		if(studentNo == "" || studentNo == null ){
			alert("请先输入专业名！");
		}else if(select_grade == "" || select_grade == null ){
			alert("请先输入查询年级！");
		}else{
			tbody.empty();
			$.ajax({
				type:"POST",
				url:"../../myAdmin/searchStudentByProfessionName.do",
				data:{
					"professionName":studentNo,
					"selectGrade":select_grade
				},
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
		}
		
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
						
						var resultRow = "<tr><td>"+1+"</td><td>"+data.sname+"</td><td>"+data.sno+"</td><td>"+data.grade+"</td><td>"+data.professionName+"</td><td>"+data.departmentName+"</td><td align='center'><button class='btn btn-danger' onclick='deleteStudent(\""+data.sno+"\",\""+0+"\")'>移除</button></td></tr>";
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
var data = [];
var studentList = [];

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
			if(msg == "success"){
				alert("删除学生成功");
				$("#student_data_table tr:eq("+row+")").hide();
			}else if(msg == "fail"){
				alert("删除学生失败");
			}
		}
	});

}


