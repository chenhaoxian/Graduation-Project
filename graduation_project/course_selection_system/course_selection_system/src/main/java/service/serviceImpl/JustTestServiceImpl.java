package service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mapper.UserMapper;
import model.User;
import service.JustTestService;

@Service("testService")
@Transactional
public class JustTestServiceImpl implements JustTestService {
	
	@Autowired
	private UserMapper userMapper;
	
	public List<User> testFindAll() {
		
		List<User> list = userMapper.findAll();
		
		return list;
	}
}
