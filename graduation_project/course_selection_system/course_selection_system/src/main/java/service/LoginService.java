package service;

import model.User;

public interface LoginService {
	User findUserByUserid(String userId);

}
