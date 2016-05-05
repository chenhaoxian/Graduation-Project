package admin.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.mapper.AdminMapper;
import admin.model.Teacher;
import admin.service.TeacherManageService;

@Service("teacherManageService")
public class TeacherManageServiceImpl implements TeacherManageService {
	
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public List<Teacher> seachAllTeacher() {
		// TODO Auto-generated method stub
		return adminMapper.getAllTeacher();
	}

	@Override
	public int deleteTeacherByTno(String tno ) {
		// TODO Auto-generated method stub
		return adminMapper.deleteTeacherByTno(tno);
	}

	@Override
	public Teacher findTeacherByTno(String tno) {
		// TODO Auto-generated method stub
		return adminMapper.getTeacherByTno(tno);
	}

}
