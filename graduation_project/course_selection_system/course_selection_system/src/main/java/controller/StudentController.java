package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.CourseTongXuan;
import service.StudentService;

@Controller
@RequestMapping("student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("findAllCourseTongXuan")
	public String showCourseTongXuan(@RequestParam(required = false, defaultValue = "1")int page,
			@RequestParam(required = false, defaultValue = "5")int rows,
			Model model){
		
		List<CourseTongXuan> list = studentService.findAllCourseTongXuan(page, rows);
		System.out.println(list.size());
		model.addAttribute("courseTongXuanList", list);
		
		return "student/selection";
	}
	
	

}
