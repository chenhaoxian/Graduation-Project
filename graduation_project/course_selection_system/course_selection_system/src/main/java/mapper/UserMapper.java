package mapper;

import java.util.List;

import model.Admin;
import model.Student;
import model.Teacher;
import model.User;

public interface UserMapper {
	
	/**
	 * dao ½Ó¿Ú
	 */
//	void save(User user);
//	boolean update(User user);
//	boolean delete(int id);
//	User findById(int id);
//	List<User> findAll();
//	User testFindById(int id);
//	List<User> testFindAll();
	Student findUserByUserId(String sno);
	Teacher findTeacherByTno(String tno);
	Admin findAdminByAid(String aid);
	
	
}
