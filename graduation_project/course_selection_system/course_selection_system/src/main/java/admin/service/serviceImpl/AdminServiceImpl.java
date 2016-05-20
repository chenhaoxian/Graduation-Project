package admin.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.mapper.AdminMapper;
import admin.model.Student;
import admin.service.AdminService;
import util.CollectionUtil;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public int countContactMessage() {
		// TODO Auto-generated method stub
		return adminMapper.countUserContact();
	}

	@Override
	public List<Student> findAllStudent() {
		
		List<Student> list = adminMapper.getAllStudent();
		if(CollectionUtil.isNotEmptyList(list)){
			return list;
		}else{
			return null;
		}
		
	}

	@Override
	public int deleteStudent(String sno) {
		
		return adminMapper.deleteStudentBySno(sno);
	}

	@Override
	public Student searchStudentBySno(String sno) {
		return adminMapper.getStudentBySno(sno);
	}

	@Override
	public List<Student> findStudentByProfessionName(String professionName,String selectGrade) {
		return adminMapper.getStudentByProfessionName(professionName,selectGrade);
	}

}
