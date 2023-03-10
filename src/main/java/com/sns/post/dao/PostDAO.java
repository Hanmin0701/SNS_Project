package com.sns.post.dao;

import java.util.*;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sns.post.model.Post;

@Repository
public interface PostDAO {
	
	public List<Map<String, Object>> selectPostListTest();
	
	public int insertPost(
			@Param("userId") int userId, 
			@Param("subject") String subject, 
			@Param("content") String content, 
			@Param("imagePath") String imagePath);
	
	public List<Post> selectPostListByUserId(int userId);
	
	public Post getPostByPostIdUserId(int userId, int postId);
}