// $(document).ready(function(){
//        $('#send_message1').click(function(e){
//            
//            //Stop form submission & check the validation
//            e.preventDefault();
//            alert(22);
//            
//            // Variable declaration
//            var error = false;
//            var name = $('#name').val();
//            var email = $('#email').val();
//            var message = $('#message').val();
//
//         	// Form field validation
//            if(name.length == 0){
//                var error = true;
//                $('#name_error').fadeIn(500);
//            }else{
//                $('#name_error').fadeOut(500);
//            }
//            if(email.length == 0 || email.indexOf('@') == '-1'){
//                var error = true;
//                $('#email_error').fadeIn(500);
//            }else{
//                $('#email_error').fadeOut(500);
//            }
//            if(message.length == 0){
//                var error = true;
//                $('#message_error').fadeIn(500);
//            }else{
//                $('#message_error').fadeOut(500);
//            }
//            
//            // If there is no validation error, next to process the mail function
//            if(error == false){
//               // Disable submit button just after the form processed 1st time successfully.
//                $('#send_message').attr({'disabled' : 'true', 'value' : '发送中...' });
//                
////                $.post("userOperation/sendEmail.do", $("#contact_form").serialize(),function(result){
////                    if(result == 'sent'){
////                        //If the email is sent successfully, remove the submit button
////                         $('#submit').remove();
////                        //Display the success message
////                        $('#mail_success').fadeIn(500);
////                    }else{
////                        //Display the error message
////                        $('#mail_fail').fadeIn(500);
////                        // Enable the submit button again
////                        $('#send_message').removeAttr('disabled').attr('value', 'Send The Message');
////                    }
////                });
//                
//                $.ajax({
//                    type: "POST",
//                    url:"userOperation/sendEmail.do",
//                    data:$('#contact_form').serialize(),// 要提交的表单
//                    success: function(msg) {alert(msg);}
//                });
//            }
//        });    
//    });
//
////$(function(){
////	$('#send_contactMessage').click(function(){
////		alert(11);
////		//return false;
////	});
////});



    	$(function(){
			$('#send_message').click(function(e){
				e.preventDefault();
				var error = false;
				var name = $('#name').val();
				var email = $('#email').val();
				var message = $('#message').val();
    			
          if(name.length == 0 || name.length > 20){
              var error = true;
              $('#name_error').fadeIn(500);
          }else{
              $('#name_error').fadeOut(500);
          }
          if(email.length == 0 || email.indexOf('@') == '-1' || email.length > 30){
              var error = true;
              $('#email_error').fadeIn(500);
          }else{
              $('#email_error').fadeOut(500);
          }
          if(message.length == 0 || message.length > 100){
              var error = true;
              $('#message_error').fadeIn(500);
          }else{
              $('#message_error').fadeOut(500);
          }
    			
          
          if(error == false){
               $('#send_message').attr({'disabled' : 'true', 'value' : '发送中...' });
               
               $.ajax({
                   type: "POST",
                   url:"userOperation/contactMessage.do",
                   data:$('#contact_form').serialize(),// 要提交的表单
                   success: function(msg) {
                	   
                	   if(msg == 'send'){
               		   		 //$('#name_error').fadeOut(500);
                         // $('#submit').remove();
                          $('#mail_success').fadeIn(500);
                          //$("#send_message").attr("disabled",true);
                          $('#mail_fail').fadeOut(500);
                          $('#send_message').remove();
                      }else{
                   	   		//alert(msg);
                   	   	$('#mail_success').fadeOut(500);
                          $('#mail_fail').fadeIn(500);
                          $('#send_message').removeAttr('disabled').attr('value', '提 交');
                      }
                	 }
               });
           }
    		});
    	});