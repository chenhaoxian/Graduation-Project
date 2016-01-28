package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.CourseTongXuan;
import service.CommonService;
import service.StudentService;

@Controller
@RequestMapping("student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private CommonService commonService;
	
	private List<CourseTongXuan> courseTongXuanList;
	
	@RequestMapping("findAllCourseTongXuan")
	public String showCourseTongXuan(@RequestParam(required = false, defaultValue = "1")String page,
			@RequestParam(required = false, defaultValue = "2")int rows,
			Model model,
			@RequestParam(required = false, defaultValue = "0")boolean flag){
		System.out.println(page);
		int page_int = Integer.parseInt(page);
		courseTongXuanList = studentService.findAllCourseTongXuan(page_int, rows);
		model.addAttribute("courseTongXuanList", courseTongXuanList);
		model.addAttribute("page", page_int);
		if(flag){
			int pages = commonService.countPages(rows, "courseTongXuan");
			model.addAttribute("pages", pages);
		}
		
		return "student/selection";
	}
	
	
}
