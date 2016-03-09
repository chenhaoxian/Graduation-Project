package monitor.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.MonitorSearchService;
import util.CollectionUtil;
import util.Tool;

public class SearchHelper {
	
	@Autowired
	private MonitorSearchService monitorSearchService;
	
	public void findCourseNameForAutoComplete(JspWriter out, String partialName) throws IOException{
		Tool.print("@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		List<String> courseNames = monitorSearchService.searchAutoCompleteName();
		Tool.print(courseNames.size());
		populateData(out, courseNames);
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
