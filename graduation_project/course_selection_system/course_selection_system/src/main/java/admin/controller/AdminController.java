package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.service.AdminService;
import util.Tool;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("countContactMessage")
	@ResponseBody
	private String countContactMessage(){
//		Tool.print(adminService.countContactMessage());
//		Tool.print(test);
		int count = adminService.countContactMessage();
		String countStr = String.valueOf(count);
//		model.addAttribute("messageCount", count);
		return "success";
	}
	
}
