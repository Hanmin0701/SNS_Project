package com.sns.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class user {
	@GetMapping("/sign_up_view")
	public String signUpView(Model model) {
		model.addAttribute("signUpView", "user/signUp");  
		return "/template/layout";
	}
}
