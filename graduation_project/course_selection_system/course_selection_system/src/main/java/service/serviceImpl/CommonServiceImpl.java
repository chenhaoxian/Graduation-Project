package service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.CommonMapper;
import service.CommonService;

@Service("commonService")
public class CommonServiceImpl implements CommonService {

	@Autowired
	private CommonMapper commonMapper;
	
	@Override
	public int countPages(int pageSize, String sno) {
		int total = commonMapper.countTableRows(sno);
		int i = total / pageSize;
		int pages = (total <= pageSize*i ? i : (i+1));
		
		return pages;
	}

}
