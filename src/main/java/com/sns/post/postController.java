package com.sns.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sns.post.bo.PostBO;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/post")
public class postController {
	
	@Autowired
	private PostBO postBO;
	
	// 글 목록
	@GetMapping("/post_list_view")
	public String postListView(Model model) {
		model.addAttribute("viewName", "post/postList");
		return "template/layout_content";
	}
	
	/**
	 * 글쓰기
	 * @param model
	 * @return
	 */
	@GetMapping("/post_create_view")
	public String postCreateView(Model model) {
		model.addAttribute("viewName", "post/postCreate");
		return "template/layout_content";
	}
	
	@GetMapping("/post_detail_view")
	public String postDetailView(@RequestParam("postId") int postId, HttpSession session, Model model) {
		Integer userId = (Integer)session.getAttribute("userId");
		if (userId == null) {
			return "redirect:/user/sign_in_view";
		}
		
		// DB select by - userId, postId
		int rows = postBO.addPostDetail(userId, postId);
		
		model.addAttribute("viewName", "post/postDetail");
		return "template/layout";
	}
}