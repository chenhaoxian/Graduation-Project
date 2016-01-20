package service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import service.IService;
import tk.mybatis.mapper.common.Mapper;

public abstract class BaseService<T> implements IService<T> {
	
	//@Autowired
	protected Mapper<T> mapper; 
	

	public Mapper<T> getMapper() {
		return mapper;
	}

	public void setMapper(Mapper<T> mapper) {
		this.mapper = mapper;
	}

	@Override
	public T selectByKey(Object key) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(key);
	}

	@Override
	public int save(T entity) {
		// TODO Auto-generated method stub
		return mapper.insert(entity);
	}

	@Override
	public int delete(Object key) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(key);
	}

	@Override
	public int updateAll(T entity) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(entity);
	}

	@Override
	public int updateNotNull(T entity) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(entity);
	}

	@Override
	public List<T> selectByExample(Object example) {
		// TODO Auto-generated method stub
		return  mapper.selectByExample(example);
	}

}
