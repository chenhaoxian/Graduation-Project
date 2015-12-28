package service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mapper.UserMapper;
import model.Admin;
import model.Student;
import model.Teacher;
import model.User;
import service.LoginService;

@Service("loginService")
@Transactional
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public Student findUserByUserid(String sno) {
		Student student = new Student();
		student = userMapper.findUserByUserId(sno);
		
		return student;
	}

	@Override
	public Teacher findTeacherByTno(String tno) {
		Teacher teacher = new Teacher();
		teacher = userMapper.findTeacherByTno(tno);
		
		return teacher;
	}

	@Override
	public Admin findAdminByAid(String aid) {
		Admin admin = new Admin();
		admin = userMapper.findAdminByAid(aid);
		return admin;
	}

}
