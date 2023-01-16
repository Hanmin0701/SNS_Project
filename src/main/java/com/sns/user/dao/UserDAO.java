package com.sns.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sns.user.model.User;

@ResponseBody
public interface UserDAO {
	
		// ID 중복 확인
		public boolean existLoginId(String loginId);
		
		// 회원가입 
		public void insertUser(
				@Param("loginId") String loginId, 
				@Param("name") String name, 
				@Param("userId") String userId, 
				@Param("password") String password);
		
		// 로그인
		public User selectUserByLoginIdPassword(
				@Param("loginId") String loginId, 
				@Param("password") String password); 
}
