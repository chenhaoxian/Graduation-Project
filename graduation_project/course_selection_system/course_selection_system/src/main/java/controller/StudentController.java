package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.CourseTongXuan;
import model.SelectCourse;
import model.Student;
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
			@RequestParam(required = false, defaultValue = "5")Integer rows,
			@RequestParam(required = false, defaultValue = "1")Integer pages,
			@RequestParam(required = true)String sno,
			Model model,
			@RequestParam(required = false, defaultValue = "false")boolean flag){
//		System.out.println(pages);
//		int page_int = Integer.parseInt(page);
//		Tool.print(pages);
		courseTongXuanList = studentService.findAllCourseTongXuan(page, rows,sno);
//		for(CourseTongXuan c : courseTongXuanList){
//			System.out.println(c.toString());
//		}
//		
		model.addAttribute("courseTongXuanList", courseTongXuanList);
		model.addAttribute("page", page);
		if(flag){
			pages = commonService.countPages(rows, sno);
		}
//		Tool.print(pages);
		model.addAttribute("pages", pages);
		
		return "student/selection";
	}
	
	
	@RequestMapping("findCourseTongXuanByPage")
	public @ResponseBody String showCourseTongXuanByPage(@RequestParam(required = false, defaultValue = "1")Integer page,
			@RequestParam(required = false, defaultValue = "2")Integer rows,
			@RequestParam(required = false, defaultValue = "0")Integer pages,
			@RequestParam(required = true)String sno,
			@RequestParam(required = false, defaultValue = "0")boolean flag){
		System.out.println(pages);
//		int page_int = Integer.parseInt(page);
		courseTongXuanList = studentService.findAllCourseTongXuan(page, rows,sno);
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
//		Tool.print(selectCourseList.get(0).toString());
		model.addAttribute("selectCourseList", selectCourseList);
		return "student/showSelectCourse";
	}
	
	@RequestMapping("selectCourse")
	@ResponseBody
	public String selectCourse(@RequestParam("cno")String cno, 
			Model model,
			HttpServletRequest request){
//		Tool.print("select Course operation success");
//		Tool.print(cno);
//		Tool.print(sno);
		HttpSession session = request.getSession();
		Student student = new Student();
		student = (Student)session.getAttribute("student");
		
		if(student == null ){
			return "error";
		}else if(studentService.handleSelectOperation(cno, student.getSno())){
			return "success";
		}else{
			return "fail";
		}
	}
	
	@RequestMapping("cancelSelectCourse")
	@ResponseBody
	public String cancelSelect(String cno,String sno){
		
		studentService.cancelSelectCourse(cno, sno);
		return "success";
	}

	
}
