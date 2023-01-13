package com.sns.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class userController {
	
	@GetMapping("/sign_up_view")
	public String signUpView(Model model) {
		model.addAttribute("signUpView", "user/signUp");  
		return "/template/layout";
	}
	
	// 로그인 화면
	@GetMapping("/sign_in_view")
	public String signInView(Model model) {
		model.addAttribute("viewSignIn", "user/signIn");
		return "/template/layout_signIn";
	}	
}