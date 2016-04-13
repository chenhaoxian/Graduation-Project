package admin.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.mapper.AdminMapper;
import admin.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public int countContactMessage() {
		// TODO Auto-generated method stub
		return adminMapper.countUserContact();
	}

}
