package teacher.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.CourseTongXuan;
import model.Teacher;
import teacher.service.TeacherService;
import util.Tool;

@Controller
@RequestMapping("teacher")
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;

	@RequestMapping("addCourse")
	public String addCourse(String cname,
			String ctype, 
			String ctime, 
			@RequestParam(required=false,defaultValue="2")String credit,
			@RequestParam(required=false,defaultValue="50")String total,
			HttpServletRequest request){
		
		HttpSession session = request.getSession();
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		String tno = teacher.getTno();
		
		int creditInt = Integer.parseInt(credit);
		int totalInt = Integer.parseInt(total);
		
//		
//		Tool.print(cname);
//		Tool.print(ctype);
//		Tool.print(ctime);
//		Tool.print(credit);
//		Tool.print(total);
		teacherService.insertCourse(cname, ctype, ctime, creditInt, totalInt, tno);
		return "redirect:/jsp/teacher/teacherIndex.jsp";
	}
	
	@RequestMapping("findCourse")
	private String findCourse(String tno, Model model){
		
		List<CourseTongXuan> courseList = teacherService.findCourse(tno);
		Tool.print(courseList.size());
		Tool.print(courseList.get(0).toString());
		model.addAttribute("courseList", courseList);
		return "teacher/showCourse";
	}
	
}
