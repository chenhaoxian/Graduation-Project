package service;

import java.util.List;

import model.CourseTongXuan;

public interface CourseTongXuanService extends IService<CourseTongXuan> {
	
	List<CourseTongXuan> selectByConrseTongXuan(CourseTongXuan courseTongXuan, int page, int rows);
	
	

}
