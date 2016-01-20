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
	public CourseTongXuan selectByKey(Object key) { 
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int save(CourseTongXuan entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Object key) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAll(CourseTongXuan entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateNotNull(CourseTongXuan entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CourseTongXuan> selectByExample(Object example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CourseTongXuan> selectByConrseTongXuan(CourseTongXuan courseTongXuan, int page, int rows) {
		Example example = new Example(CourseTongXuan.class);
		Example.Criteria criteria = example.createCriteria();
		if(StringUtil.isNotEmpty(courseTongXuan.getTno())){
			criteria.andEqualTo("tno","tx1");
		}
		
		//∑÷“≥≤È—Ø
		PageHelper.startPage(page,rows);
		return selectByExample(example);
	}

}
