package admin.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import admin.model.Student;

public interface AdminService {
	
	int countContactMessage();
	
	List<Student> findAllStudent();
	
	int deleteStudent(String sno);
	
	Student searchStudentBySno(String sno );
	
	List<Student> findStudentByProfessionName(@Param("professionName")String professionName,@Param("selectGrade")String selectGrade);

}
