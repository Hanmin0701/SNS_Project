package com.sns.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sns.common.fileManagerService;
import com.sns.post.dao.PostDAO;
import com.sns.post.model.Post;

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
	
	public List<Post> getPostListByUserId(int userId) {
		return postDAO.selectPostListByUserId(userId);
	}
	
	public Post getPostByPostIdUserId(int userId, int postId) {
		return postDAO.getPostByPostIdUserId(userId, postId);
	}
}
