package service;

import java.util.List;

import org.springframework.stereotype.Service;

/**
 * ͨ�ýӿ�
 * @author CHENHY
 *
 */

@Service
public interface IService<T> {
	T selectByKey(Object key);
	
	int save(T entity);
	
	int delete(Object key);
	
	int updateAll(T entity);
	
	int updateNotNull(T entity);
	
	List<T> selectByExample(Object example);

}
