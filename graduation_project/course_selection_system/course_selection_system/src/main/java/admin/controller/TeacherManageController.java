package admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.model.Teacher;
import admin.service.AdminService;
import admin.service.TeacherManageService;
import teacher.service.TeacherService;
import util.CollectionUtil;

@Controller
@RequestMapping("admin/teacherManage")
public class TeacherManageController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private TeacherManageService teacherManageService;
	
	
	@RequestMapping("findAllTeacher")
	@ResponseBody
	private List<Teacher> searchAllTeacher(){
		
		List<Teacher> list = teacherManageService.seachAllTeacher();
		
		if(CollectionUtil.isNotEmptyList(list)){
			return list;
		}else{
			return null;
		}
		
		
	}
	
	
	
}
