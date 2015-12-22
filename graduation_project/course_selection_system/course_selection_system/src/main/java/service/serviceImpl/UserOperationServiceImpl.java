package service.serviceImpl;

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
	public boolean sendContactMessage(String name, String email, String msg) {
		if(userMapper.checkContactMessage(email) == 0){
			contactMessageMapper.saveContactMessage(name, email, msg);
			return true;
		}else{
			return false;
		}
		
	}

}
