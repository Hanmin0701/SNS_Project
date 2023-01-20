package com.sns.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sns.comment.bo.CommentBO;

@Controller
@RequestMapping("/comment")
public class commentRestController {
	
	@Autowired
	private CommentBO commentBO;
	
	
}
