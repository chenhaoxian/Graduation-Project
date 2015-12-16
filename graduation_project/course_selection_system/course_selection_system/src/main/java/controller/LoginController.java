package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.User;
import service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	
	@RequestMapping("/checkUser")
	public @ResponseBody String checkUser(HttpServletRequest request) throws ServletException, IOException {
			String userId = request.getParameter("account");
			String password = request.getParameter("password");
			User user = loginService.findUserByUserid(userId);
			if(user == null){
				return "null";
			}else if(!password.equals(user.getPassword())){
				return "error";
			}else {
				print(user.toString());
				request.getSession().setAttribute("user", user);
				return "success";
			}
			
	}
	
	
	private void print(Object msg){
		System.out.println(msg);
	}
	
	
	
	
}
