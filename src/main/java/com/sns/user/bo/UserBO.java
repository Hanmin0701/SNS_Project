package com.sns.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sns.user.dao.UserDAO;
import com.sns.user.model.User;

@Service
public class UserBO {
		
		@Autowired
		private UserDAO userDAO;
	
		// ID 중복 확인
		public boolean existLoginId(String loginId) {
			return userDAO.existLoginId(loginId); 
		}
		
		// 회원가입
		public void addUser(String loginId, String name, String userId, String password) {
			userDAO.insertUser(loginId, name, userId, password);
		}
		
		// 로그인
		public User getUserByLoginIdPassword(String loginId, String password) {
			return userDAO.selectUserByLoginIdPassword(loginId, password);
		}
}	
