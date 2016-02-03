package service;

import java.util.List;

import model.CourseTongXuan;

public interface UserOperationService {
	boolean sendContactEmail(String name, String email, String msg);
	boolean sendContactMessage(String name, String email, String msg);
	
	//List<CourseTongXuan> findCourseTongXuanByTno(String tno, int page, int rows);

}
