package service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mapper.UserMapper;
import model.User;
import service.LoginService;

@Service("loginService")
@Transactional
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findUserByUserid(String userId) {
		User user = new User();
		user = userMapper.findUserByUserId(userId);
		
		return user;
	}

}
