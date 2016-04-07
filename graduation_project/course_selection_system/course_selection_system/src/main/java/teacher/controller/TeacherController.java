package teacher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import util.Tool;

@Controller
@RequestMapping("teacher")
public class TeacherController {

	
	
	@RequestMapping("addCourse")
	public String addCourse(String cname, String ctype, String ctime, String credit, String total){
		
		Tool.print(cname);
		return "redirect:/jsp/teacher/teacherIndex.jsp";
	}
	
}
