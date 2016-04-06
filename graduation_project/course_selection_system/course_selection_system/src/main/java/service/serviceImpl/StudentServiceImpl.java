package service.serviceImpl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import mapper.StudentMapper;
import model.CourseTongXuan;
import model.SelectCourse;
import service.StudentService;

@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentMapper studentMapper;

	@Override
	public List<CourseTongXuan> findAllCourseTongXuan(@Param("page")int page, @Param("rows")int rows, @Param("sno")String sno) {
		
//		Page<CourseTongXuan> pages = new Page<CourseTongXuan>(); 
		
		PageHelper.startPage(page,rows,false);
//		pages.setPageSize(rows);
//		pages.setPageNum(page);
		
		List<CourseTongXuan> list = studentMapper.findAllCourseTongXuan(page, rows,sno);
		
		return list;
	}

	@Override
	public int getPages(int pageSize) {
		
		int pages = 0;
		int countCourse ;
		return 0;
	}

	@Override
	public List<SelectCourse> getSelectCourseList(String sno) {
		List<SelectCourse> selectCourseList = studentMapper.findSelectCourse(sno);
		
		return selectCourseList;
	}

	@Override
	public Boolean handleSelectOperation(String cno, String sno) {
		if(studentMapper.countSelectCourseByCnoSno(cno, sno) > 0){
			return false;
		}else{
			studentMapper.insertSelectCourse(cno, sno);
			return true;
		}
		
	}

	@Override
	public void cancelSelectCourse(String cno, String sno) {
		
		studentMapper.deleteSelectCourseByCnoSno(cno, sno);
	}

}
