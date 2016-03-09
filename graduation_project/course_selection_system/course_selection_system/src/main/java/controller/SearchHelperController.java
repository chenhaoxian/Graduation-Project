package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.MonitorSearchService;
import util.CollectionUtil;
import util.Tool;

@Controller
@RequestMapping("/searchHelper")
public class SearchHelperController {
	
	@Autowired
	private MonitorSearchService monitorSearchService;
	
//	@RequestMapping("/findCourseNameForAutoComplete")
//	@ResponseBody
//	public List<String> findCourseNameForAutoComplete(JspWriter out, String partialName) throws IOException{
//		Tool.print("====================Find Course Name Start===================");
//		List<String> courseNames = monitorSearchService.searchAutoCompleteName(partialName);
//		Tool.print(courseNames.size());
//		return courseNames;
////		populateData(out, courseNames);
//	}
	
	@RequestMapping("/findCourseNameForAutoComplete")
	@ResponseBody
	public List<String> findCourseNameForAutoComlete(){
		List<String> courseNames = monitorSearchService.searchAutoCompleteName();
		return courseNames;
	}
	
	
	private void populateData(JspWriter out, List<String> names) throws IOException{
		if(CollectionUtil.isNotEmptyList(names)){
			for(String report : names){
				out.println(report);
			}
		}else{
			out.println("No Record Found");
		}
		
	}

}
