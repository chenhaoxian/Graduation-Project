package controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import model.CourseTongXuan;
import service.CourseTongXuanService;
import service.UserOperationService;

@Controller
@RequestMapping("userOperation")
public class UserOperationController {
	
	@Autowired
	private UserOperationService userOperationService ;
	
	@Autowired
	private CourseTongXuanService courseTongXuanService; 
	
	@RequestMapping("sendEmail")
	private @ResponseBody String sendContactEmail(String name, String email, String message){
		
		if(userOperationService.sendContactEmail(name, email, message)){
			return "send";
		}else {
			return "error";
		} 
	}
	
	@RequestMapping("contactMessage")
	private @ResponseBody String sendContactMessage(String name, String email, String message){
		if(userOperationService.sendContactMessage(name, email, message)){
			return "send";
		}else{
			return "error";
		}
	}
	
	@RequestMapping("/testSplitPage")
	private String getCourseTongXuan(String tno,
			@RequestParam(required = false, defaultValue = "1")int page,
			@RequestParam(required = false, defaultValue = "10") int rows){
		print(tno);
		
		List<CourseTongXuan> courseTongXuanList = userOperationService.findCourseTongXuanByTno(tno, page, rows);
		print(courseTongXuanList.size());
		Iterator<CourseTongXuan> it = courseTongXuanList.iterator();
		while(it.hasNext()){
			
			print(it.next().toString());
		}
		return "test";
	}
	
//	@RequestMapping("/testGeneralMapper")
//	private String getCourseTongXuan(@RequestParam(required = false) String tno, 
//																		@RequestParam(required = false, defaultValue = "1") int page,
//																		@RequestParam(required = false, defaultValue = "3") int rows,
//																		HttpServletRequest request){
//		
//		List<CourseTongXuan> courseTongXuanList = courseTongXuanService.selectByConrseTongXuan(tno, page, rows);
//
////		print(courseTongXuanList.size());
////		Iterator<CourseTongXuan> it = courseTongXuanList.iterator();
////		while(it.hasNext()){
////			
////			print(it.next().toString());
////		}
////		
//		return "test";
//	}
	
//	@RequestMapping("/testGeneralMapper")
//	public ModelAndView getCourseTongXuan(@RequestParam(required = false) CourseTongXuan courseTongXuan, 
//																				@RequestParam(required = false, defaultValue = "1") int page,
//																				@RequestParam(required = false, defaultValue = "10") int rows){
//		print("okokokok");
//		
//		ModelAndView result = new ModelAndView("test");
//		List<CourseTongXuan> courseTongXuanList = courseTongXuanService.selectByConrseTongXuan(courseTongXuan, page, rows);
//		result.addObject("courseTongXuanList", new PageInfo<CourseTongXuan>(courseTongXuanList));
//		result.addObject("queryParam", courseTongXuan);
//		result.addObject("page", page);
//		result.addObject("rows", rows);
//		return result;
//	}
	
//	@RequestMapping("/testGeneralMapper2")
//	public ModelAndView getCourseTongXuan2(String tno, 
//																				@RequestParam(required = false, defaultValue = "1") int page,
//																				@RequestParam(required = false, defaultValue = "10") int rows){
//		print("okokokok");
//		
//		ModelAndView result = new ModelAndView("test");
//		List<CourseTongXuan> courseTongXuanList = courseTongXuanService.selectByConrseTongXuan(tno, page, rows);
//		result.addObject("courseTongXuanList", new PageInfo<CourseTongXuan>(courseTongXuanList));
////		result.addObject("queryParam", courseTongXuan);
//		result.addObject("page", page);
//		result.addObject("rows", rows);
//		return result;
//	}
	
	

	
	
	
	
	
	private void print(Object msg){
		System.out.println("=====================================================");
		System.out.println(msg);
		System.out.println("=====================================================");
	}
	

}
