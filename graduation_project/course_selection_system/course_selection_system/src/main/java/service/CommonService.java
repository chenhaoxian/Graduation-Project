package service;

import org.apache.ibatis.annotations.Param;

public interface CommonService {
	
	int countPages(@Param("pageSize")int pageSize, @Param("sno")String sno);

}
