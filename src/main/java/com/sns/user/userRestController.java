package com.sns.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sns.common.EncryptUtils;
import com.sns.user.bo.UserBO;
import com.sns.user.model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/user")
public class userRestController {
	
	@Autowired
	private UserBO userBO;
	
	@RequestMapping("/is_duplicated_id") 
	public Map<String, Object> isDuplicatedId(@RequestParam("loginId") String loginId) {
		Map<String, Object> result = new HashMap<>();
		boolean isDuplicated = false;
		try {
			isDuplicated = userBO.existLoginId(loginId);
		} catch (Exception e) {
			result.put("code", 500);
			result.put("errorMessage", "중복 확인하는데 실패했습니다.");
		}
		if(isDuplicated) { // 중복
			result.put("code", 1);
			result.put("result", true);
		} else { 		   // 중복 X
			result.put("code", 1);
			result.put("result", false);
		}
		return result;
	}
	
	@PostMapping("/sign_up")
	public Map<String, Object> singUp(
			@RequestParam("loginId") String loginId,
			@RequestParam("name") String name,
			@RequestParam("userId") String userId,
			@RequestParam("password") String password) {
		
		// 비번 해싱
		String hashedPassword = EncryptUtils.md5(password);
		
		//  DB 연결
		userBO.addUser(loginId, name, userId, hashedPassword);
		
		Map<String, Object> result = new HashMap<>();
		result.put("code", 1);
		result.put("result", "성공");
		
		return result;
	}
	
	@PostMapping("/sign_in")
	public Map<String, Object> signIn(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest request) {
		
		// 비번 해싱
		String hashedPassword = EncryptUtils.md5(password);
		
		// DB 연결
		User user = userBO.getUserByLoginIdPassword(loginId, hashedPassword);
		
		Map<String, Object> result  = new HashMap<>();
		if(user != null) { // 성공
			result.put("code", 1);
			result.put("result", "성공");
			
			// 세션애 유저 정보를 담는다. (로그인 상태 유지)
			HttpSession session = request.getSession();
			session.setAttribute("userId", user.getId()); // 사용자 이름
			session.setAttribute("userLoginId", user.getLoginId()); // 로그인 ID
			session.setAttribute("userName", user.getName()); // 이름
			session.setAttribute("userPassword", user.getPassword()); // 비번
		} else { // 실패
			result.put("code", 500);
			result.put("result", "일치하는 사용자가 없습니다.");
		}
		
		// return map
		return result;
	}
}