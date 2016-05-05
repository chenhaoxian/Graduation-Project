package admin.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.model.Course;
import admin.service.CourseManageService;
import util.Tool;

@Controller
@RequestMapping("admin/courseManage")
public class CourseManageController {
	
	@Autowired
	private CourseManageService courseManageService;
	
	@RequestMapping("searchAllCourse")
	@ResponseBody
	public List<Course> searchAll(){
		List<Course> list = courseManageService.searchAllCourse();
		return list;
	}
	
	@RequestMapping("searchCourse")
	@ResponseBody
	public Course searchCourse(String cno){
//		Tool.print("test");
		Course course = courseManageService.searchCourseByCno(cno);
//		Tool.print(course.toString());
		return course;
	}
	
	@RequestMapping("deleteCourse")
	@ResponseBody
	public String deleteCourse(String cno){
		if(courseManageService.deleteCourseByAdmin(cno) >= 1){
			return "success";
		}else{
			return "fail";
		}
	}

}
