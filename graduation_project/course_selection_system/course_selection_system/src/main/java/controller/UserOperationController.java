package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("useroperation")
public class UserOperationController {
	
	@Autowired
	private UserOperationController userOperationController;
	
	@RequestMapping("sendEmail")
	private @ResponseBody String sendContactEmail(String name, String email, String msg){
		
		if(userOperationController.sendContactEmail(name, email, msg) != null){
			return "send";
		}else {
			return "error";
		}
		
	}
	

}
