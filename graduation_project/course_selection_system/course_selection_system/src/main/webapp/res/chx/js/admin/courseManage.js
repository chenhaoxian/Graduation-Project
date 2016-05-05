function CourseManage(){
	this.dom_search_all = "btn_search_allCourse";
}

CourseManage.prototype.init = function(){
	var self = this;

}

CourseManage.prototype.bindEvent = function(){
	var self = this;
	var test = "test";
	var tbody = $("#course_data_table");
	
	
	$("#btn_search_allCourse").click(function(){
		tbody.empty();
		$.ajax({
			type:"POST",
			url:"../../admin/courseManage/searchAllCourse.do",
			data:{},
			cache:false,
			dataType: "json",
			processData : true,
			async: false,
			success:function(list){
				if(list != null){
					var trs = "";
					$.each(list,function(key,value){
						trs += "<tr><td>"+(key+1)+"</td><td>"+value.cname+"</td><td>"+value.cno+"</td><td>"+value.ctime+"</td><td>"+value.tname+"</td><td>"+value.tno+"</td><td align='center'><button class='btn btn-danger' onclick='deleteCourse(\""+value.cno+"\",\""+key+"\")'>移除</button></td></tr>";
					});
					$("#course_data_table").append(trs);
					
				}else{
					var tr = "<tr><td>no record found!</td></tr>";
					$("#course_data_table").append(tr);
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
	
	$("#btn_search_course").click(function(){
		
		var courseNo = $.trim($("#courseNo").val());
		if(courseNo == "" || courseNo == null){
			alert("请输入课程号");
		}else{
			tbody.empty();
			$.ajax({
				type: "post",
				url: "../../admin/courseManage/searchCourse.do",
				data: {
					"cno": courseNo
				},
				cache: true,
				dataType : "json",
				success: function(value){
					if(value != null){
						var resultRow = '';
						resultRow += "<tr><td>"+1+"</td><td>"+value.cname+"</td><td>"+value.cno+"</td><td>"+value.ctime+"</td><td>"+value.tname+"</td><td>"+value.tno+"</td><td align='center'><button class='btn btn-danger' onclick='deleteCourse(\""+value.cno+"\",\""+0+"\")'>移除</button></td></tr>";
						tbody.append(resultRow);
//						$("#btn_previous").attr("disabled","disabled");
//						$("#btn_next").attr("disabled","disabled");
					}else{
						var resultRow = "<tr><td>no record found!</td></tr>";
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

var CourseManage_Page = new CourseManage();


$(document).ready(function(){
	CourseManage_Page.bindEvent();
	CourseManage_Page.init();	
});

function deleteCourse(cno,row){
//	alert(cno+'   '+row);
	$.ajax({
		type : "post",
		url : "../../admin/courseManage/deleteCourse.do",
		data : {
			"cno" : cno
		},
		success : function(msg){
			if(msg == "success"){
				alert("删除课程成功");
				$("#course_data_table tr:eq("+row+")").hide();
			}else if(msg == "fail"){
				alert("删除课程失败");
			}
		}
	});

}


