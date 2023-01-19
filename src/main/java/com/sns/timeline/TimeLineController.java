package com.sns.timeline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sns.post.bo.PostBO;

@Controller
@RequestMapping("/timeline")
public class TimeLineController {
	
	@Autowired
	private PostBO postBO;
	
//	@GetMapping("/timline/timeline_view")
//	public String timelineVeiw(Model model) {
//		
//		
//		return "";
//	}
}
