$(function(){
	$('#loginform').submit(function(){
	  alert(1);
	  return false;
	});
	$('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
});

//for login
$(function(){
	$('#login_input').click(function(){
		var account = $('#account').val();
		var password = $('#password').val();
		var checkAccount =  /^[0-9]*$/;
		
		if(account == ''){
			$("#account_warning").html("");
			$("#password_warning").html("");
			$("#account_warning").html("不能为空！");
			$('#account').focus();
			return false;
		}else if(!checkAccount.test(account)){
			$("#account_warning").html("");
			$("#password_warning").html("");
			$("#account_warning").html("格式错误，只能为数字");
			$('#account').focus();
			return false;
		}else if(password == ''){
			$("#account_warning").html("");
			$("#password_warning").html("");
			$("#password_warning").html("不能为空！");
			$('#password').focus();
			return false;
		}else {
			//$('#loginform').sumbit();
			$.ajax({
				type:"post",
				url:"login/checkStudent.do",
				data:{
					account: account,
					password: password
				},
				success:function(data){
					if(data == "null"){
						$("#account_warning").html("");
						$("#password_warning").html("");
						$("#account_warning").html("用户不存在！");
					}else if(data == "error"){
						$("#account_warning").html("");
						$("#password_warning").html("");
						$("#password_warning").html("密码错误！");
						
					}else {
						//$('#loginform').sumbit();
						window.location.href = 'jsp/test.jsp';
					}
				}
			});
		}
	});
	
	$('#teacher_input').click(function(){
		var account = $('#tno').val();
		var password = $('#teacher_password').val();
		var usertype = 2;
		var checkAccount =  /^[0-9]*$/;
		
		if(account == ''){
			$("#tno_warning").html("");
			$("#t_pwd_warning").html("");
			$("#tno_warning").html("不能为空！");
			$('#tno').focus();
			return false;
		}else if(!checkAccount.test(account)){
			$("#tno_warning").html("");
			$("#t_pwd_warning").html("");
			$("#tno_warning").html("格式错误，只能为数字");
			$('#tno').focus();
			return false;
		}else if(password == ''){
			$("#tno_warning").html("");
			$("#t_pwd_warning").html("");
			$("#t_pwd_warning").html("不能为空！");
			$('#teacher_password').focus();
			return false;
		}else {
			$.ajax({
				type:"post",
				url:"login/checkTeacher.do",
				data:{
					account: account,
					password: password,
					usertype: usertype
				},
				success:function(data){
					if(data == "null"){
						$("#tno_warning").html("");
						$("#t_pwd_warning").html("");
						$("#tno_warning").html("用户不存在！");
					}else if(data == "error"){
						$("#tno_warning").html("");
						$("#t_pwd_warning").html("");
						$("#teacher_password").html("密码错误！");
						
					}else {
						window.location.href = '/jsp/test.jsp';
					}
				}
			});
		}
	});
	
	
	$('#admin_input').click(function(){
		var account = $('#aid').val();
		var password = $('#admin_password').val();
		var usertype = 3;
		var checkAccount =  /^[0-9]*$/;
		
		if(account == ''){
			$("#aid_warning").html("");
			$("#a_pwd_warning").html("");
			$("#aid_warning").html("不能为空！");
			$('#aid').focus();
			return false;
		}else if(!checkAccount.test(account)){
			$("#aid_warning").html("");
			$("#a_pwd_warning").html("");
			$("#aid_warning").html("格式错误，只能为数字");
			$('#aid').focus();
			return false;
		}else if(password == ''){
			$("#aid_warning").html("");
			$("#a_pwd_warning").html("");
			$("#a_pwd_warning").html("不能为空！");
			$('#admin_password').focus();
			return false;
		}else {
			//$('#loginform').sumbit();
			$.ajax({
				type:"post",
				url:"login/checkAdmin.do",
				data:{
					account: account,
					password: password,
					usertype: usertype
				},
				success:function(data){
					if(data == "null"){
						$("#aid_warning").html("");
						$("#a_pwd_warning").html("");
						$("#aid_warning").html("用户不存在！");
					}else if(data == "error"){
						$("#aid_warning").html("");
						$("#a_pwd_warning").html("");
						$("#admin_password").html("密码错误！");
						
					}else {
						//$('#loginform').sumbit();
						window.location.href = 'jsp/test.jsp';
					}
				}
			});
		}
	});
	
	
	
});

function close_form(){
	document.getElementById('loginmodal').style.display='none'; 
}