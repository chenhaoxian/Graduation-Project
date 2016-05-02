package admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.model.Student;
import admin.service.AdminService;
import util.CollectionUtil;
import util.Tool;

@Controller
@RequestMapping("myAdmin")
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
	
	@RequestMapping("findAllStudent")
	@ResponseBody
	private List<Student> findAllStudent(){
		
		List<Student> list = adminService.findAllStudent();
//		Tool.print(list.get(0).toString());
		return list;
	}
	
	@RequestMapping("deleteStudent")
	@ResponseBody
	private String deleteStudent(String sno){
//		
//		Tool.print("test");
//		Tool.print(sno);
		if(adminService.deleteStudent(sno)==0){
			return "success";
		}else{
			return "fail";
		}
	}
	
	
	@RequestMapping("searchStudentBySno")
	@ResponseBody
	private Student searchStudentBySno(String sno){
		Student student = adminService.searchStudentBySno(sno);
//		Tool.print(student.toString());
		return student;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("test1")
	@ResponseBody
	public String myTest(){
		Tool.print("test success!");
		return "success";
	}
	
}
