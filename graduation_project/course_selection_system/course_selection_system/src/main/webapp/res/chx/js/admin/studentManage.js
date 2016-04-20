function StudentManage(){
	this.dom_search_all = "btn_search_allStudent";
}

StudentManage.prototype.init = function(){
	var self = this;

}

StudentManage.prototype.bindEvent = function(){
	var self = this;
//	var test = "test";
	
	$("#btn_search_allStudent").click(function(){
		alert(1);
//		$.ajax({
//			type:"POST",
//			url:"../admin/findAllStudent.do",
//			data:{},
//			cache:false,
//			dataType: "json",
//			processData : true,
//			async: false,
//			success:function(list){
//				if(list != null){
//					alert(2);
//					var trs = "";
//					$.each(list,function(key,value){
//						trs += "<tr><td>"+(key+1)+"</td><td>"+value.sname+"</td><td>"+value.sno+"</td><td>"+value.grade+"</td><td>"+value.professionName+"</td><td>"+value.departmentName+"</td><td><button onclick='deleteStudent(\""+value.sno+"\",\""+key+"\")'>移除</button></td></tr>";
//					});
//					$("#student_data_table").append(trs);
//					
//				}else{
//					var tr = "<tr><td>no data found!</td></tr>";
//					$("#student_data_table").append(trs);
//				}
//			},
//			error:function(){
//				alert("error");
//			}
//		});
		
		$.ajax({
			type:"post",
			url:"../myadmin/test.do",
			data:{},
			success:function(){
				alert(2);
			}
		});

	});

}

var StudentManage_Page = new StudentManage();


$(document).ready(function(){
	StudentManage_Page.bindEvent();
	StudentManage_Page.init();	
});

function deleteStudent(sno,row){
	alert(sno+'     '+row);
}


