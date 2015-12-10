package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.User;
import service.JustTestService;

@Controller
@RequestMapping("/testmybatis")
public class JustTestController {
	
	@Autowired
	private JustTestService testService;

	@RequestMapping("/test1")
	public String testFindAll(){
		List<User> user = testService.testFindAll();
		print(user.toString());
		return "test/test";
	}

	
	private void print(Object msg){
		System.out.println(msg);
	}
	
}
