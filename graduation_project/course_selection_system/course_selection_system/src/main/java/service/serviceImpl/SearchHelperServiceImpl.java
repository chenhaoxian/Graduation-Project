package service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.SearchHelpMapper;
import service.MonitorSearchService;

@Service("monitorSearchService")
public class SearchHelperServiceImpl implements MonitorSearchService {

	@Autowired
	private SearchHelpMapper searchHelpMapper;
	
	@Override
	public List<String> searchAutoCompleteName() {
		List<String> list = searchHelpMapper.searchAutoCompleteName();
		return list;
	}

}
