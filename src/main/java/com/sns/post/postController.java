package com.sns.post;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class postController {
	
	// 글 목록
	@GetMapping("/post_list_view")
	public String postListView(Model model) {
		model.addAttribute("viewName", "post/postList");
		return "template/layout";
	}
	
	// 글쓰기
	@GetMapping("/post_create_view")
	public String postCreateView(Model model) {
		model.addAttribute("viewName", "post/postCreate");
		return "template/layout";
	}
}
