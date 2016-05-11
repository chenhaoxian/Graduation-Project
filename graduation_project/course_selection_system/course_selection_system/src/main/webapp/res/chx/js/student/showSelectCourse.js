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
var flag = 'Y';

$(document).ready(function(){
	ShowSelectCourse_Page.bindEvent();
	ShowSelectCourse_Page.init();	
});

function cancelSelect(cno,sno,row){
//	alert('cno:'+cno+'sno' + sno);
	var self = this;
	if(cno==null || cno=='' || sno==null || sno ==""){
		alert('操作失败');
	}else{
		$.ajax({
			type : "post",
			url : "../student/cancelSelectCourse.do",
			data : {
				"cno" : cno,
				"sno" : sno
			},
			success : function(msg){
				if(msg == "success"){
//					alert("操作成功");
//					flag = 'N';
//					alert($(this).val());
//					$(this).parent().attr("disabled","disabled");
//					$("#btn_"+'1').attr("disabled","disabled");
					//刷新全部数据
					$("#selectCourse_data_table tr:eq("+row+")").hide();
					
				}
			}
		});
	}
}
