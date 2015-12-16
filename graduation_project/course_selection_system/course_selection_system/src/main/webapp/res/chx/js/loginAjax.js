$(function(){
	$('#loginform').submit(function(){
	  alert(1);
	  return false;
	});
	$('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
});

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
				url:"login/checkUser.do",
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
						window.location.href = 'test.jsp';
					}
				}
			});
		}
	});
});

function close_form(){
	document.getElementById('loginmodal').style.display='none'; 
}