package service.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;

import model.CourseTongXuan;
import service.CourseTongXuanService;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.util.StringUtil;

@Service("courseTongXuanService")
@Transactional
public class CourseTongXuanServiceImpl extends BaseService<CourseTongXuan> implements CourseTongXuanService {

	@Override
	public List<CourseTongXuan> selectByConrseTongXuan(String tno, int page, int rows) {

		Example example = new Example(CourseTongXuan.class);
		Example.Criteria criteria = example.createCriteria();
		if(StringUtil.isNotEmpty(tno)){
			print("########");
			criteria.andEqualTo("tno",tno);
//			criteria.getAllCriteria();
		}
		
		//∑÷“≥≤È—Ø
		PageHelper.startPage(page,rows);
		return selectByExample(example);
	}
	
	private void print(Object msg){
		System.out.println("=====================================================");
		System.out.println(msg);
		System.out.println("=====================================================");
	}

}
