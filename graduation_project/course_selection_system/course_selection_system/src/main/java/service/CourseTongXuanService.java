package service;

import java.util.List;

import model.CourseTongXuan;

public interface CourseTongXuanService extends IService<CourseTongXuan> {
	
	List<CourseTongXuan> selectByConrseTongXuan(String tno, int page, int rows);
	
	

}
