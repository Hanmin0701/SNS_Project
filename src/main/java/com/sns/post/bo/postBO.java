package com.sns.post.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sns.common.fileManagerService;
import com.sns.post.dao.PostDAO;

@Service
public class PostBO {
	
	@Autowired
	private PostDAO postDAO;
	
	@Autowired
	private fileManagerService fileManagerService;
	
	public int addPost(int userId, String userLoginId, String subject, String content, MultipartFile file) {
		
		String imagePath = null;
		if (file != null) {
			fileManagerService.saveFile(userLoginId, file);
		}
		
		
		return 1;
		
		// dao insert
		// return postDAO.insertPost(userId, subject, content, null);
	}
}
