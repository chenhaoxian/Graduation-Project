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
import model.SelectCourse;
import service.CommonService;
import service.StudentService;
import util.Tool;

@Controller
@RequestMapping("student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private CommonService commonService;
	
	private List<CourseTongXuan> courseTongXuanList;
	
	
	@RequestMapping("findAllCourseTongXuan")
	public String showCourseTongXuan(@RequestParam(required = false, defaultValue = "1")Integer page,
			@RequestParam(required = false, defaultValue = "7")Integer rows,
			@RequestParam(required = false, defaultValue = "0")Integer pages,
			Model model,
			@RequestParam(required = false, defaultValue = "0")boolean flag){
//		System.out.println(pages);
//		int page_int = Integer.parseInt(page);
		courseTongXuanList = studentService.findAllCourseTongXuan(page, rows);
//		for(CourseTongXuan c : courseTongXuanList){
//			System.out.println(c.toString());
//		}
//		
		model.addAttribute("courseTongXuanList", courseTongXuanList);
		model.addAttribute("page", page);
		if(flag){
			pages = commonService.countPages(rows, "courseTongXuan");
		}
		model.addAttribute("pages", pages);
		
		return "student/selection";
	}
	
	
	@RequestMapping("findCourseTongXuanByPage")
	public @ResponseBody String showCourseTongXuanByPage(@RequestParam(required = false, defaultValue = "1")Integer page,
			@RequestParam(required = false, defaultValue = "2")Integer rows,
			@RequestParam(required = false, defaultValue = "0")Integer pages,
			@RequestParam(required = false, defaultValue = "0")boolean flag){
		System.out.println(pages);
//		int page_int = Integer.parseInt(page);
		courseTongXuanList = studentService.findAllCourseTongXuan(page, rows);
//		for(CourseTongXuan c : courseTongXuanList){
//			System.out.println(c.toString());
//		}
		
		if(flag){
			pages = commonService.countPages(rows, "courseTongXuan");
		}
		
		return "success";
	}
	
	@RequestMapping("showTeacher")
	public @ResponseBody String findTeacherByTno(@RequestParam("tno")String tno){
		System.out.println(tno);
		return "success";
	}
	
	
	@RequestMapping("findSelectCourse")
	public String findSelectCourse(@RequestParam("sno")String sno, Model model){
		List<SelectCourse> selectCourseList = studentService.getSelectCourseList(sno);
		Tool.print(selectCourseList.get(0).toString());
		model.addAttribute("selectCourseList", selectCourseList);
		return "student/showSelectCourse";
	}
	
	@RequestMapping("selectCourse")
	@ResponseBody
	public String selectCourse(@RequestParam("cno")String cno, 
			@RequestParam("sno")String sno,
			Model model){
//		Tool.print("select Course operation success");
//		Tool.print(cno);
//		Tool.print(sno);
		if(studentService.handleSelectOperation(cno, sno)){
			return "success";
		}else{
			return "error";
		}
		
	}

	
}
