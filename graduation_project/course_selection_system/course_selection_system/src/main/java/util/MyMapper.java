package util;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * 
 * @author CHENHY
 * ע�뷺��Mapper  �̳��䷺�͵����������
 * ���Լ��ķ���Mapper�ӿ���
 * @param <T>
 */
public interface MyMapper<T> extends Mapper<T> , MySqlMapper<T> { 

}
