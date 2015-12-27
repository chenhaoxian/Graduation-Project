package service.serviceImpl;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mapper.ContactMessageMapper;
import mapper.UserMapper;
import service.UserOperationService;
import util.EmailUtil;

@Service("userOperationService")
@Transactional
public class UserOperationServiceImpl implements UserOperationService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private ContactMessageMapper contactMessageMapper;

	@Override
	public boolean sendContactEmail(String name, String email, String msg) {
		
		EmailUtil emailUtil = new EmailUtil(); 
		boolean isSend = emailUtil.sendMail(name, email, msg);
		if(isSend){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean sendContactMessage(@Param("name")String name, @Param("email")String email, @Param("message")String message) {
		print(name);
		if(contactMessageMapper.checkContactMessage(email) == 0){
			print("数据库不存在这个邮箱");
			contactMessageMapper.saveContactMessage(name, email, message);
			return true;
		}else{
			print("数据库存在这个邮箱");
			return false;
		}
		
	}
	
	
	private void print(Object msg){
		System.out.println(msg);
	}

}
