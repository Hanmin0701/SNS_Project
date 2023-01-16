package com.sns.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class userController {
	
	// 회원가입
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
	
	// 로그아웃
	@GetMapping("/sign_out")
	public String signOut(HttpSession session) {
		session.removeAttribute("userId");
		session.removeAttribute("userLoginId");
		session.removeAttribute("userName");
			
		return "redirect:/user/sign_in_view";
	}
}
