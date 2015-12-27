package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.UserOperationService;

@Controller
@RequestMapping("userOperation")
public class UserOperationController {
	
	@Autowired
	private UserOperationService userOperationService ;
	
	@RequestMapping("sendEmail")
	private @ResponseBody String sendContactEmail(String name, String email, String message){
		
		print(name);
		print(email);
		print(message);
		
		if(userOperationService.sendContactEmail(name, email, message)){
			print("ok");
			return "send";
		}else {
			print("false");
			return "error";
		}
		 
	}
	
	@RequestMapping("contactMessage")
	private @ResponseBody String sendContactMessage(String name, String email, String message){
		if(userOperationService.sendContactMessage(name, email, message)){
			return "send";
		}else{
			return "error";
		}
	}
	
	private void print(Object msg){
		System.out.println("=====================================================");
		System.out.println(msg);
		System.out.println("=====================================================");
	}
	

}
