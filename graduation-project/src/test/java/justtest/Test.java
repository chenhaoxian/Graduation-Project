package justtest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class Test {

	@RequestMapping("/test1")
	public String test1(){
		return "test/test";
	}
	
	private void print(Object msg){
		System.out.println(msg);
	}
}
