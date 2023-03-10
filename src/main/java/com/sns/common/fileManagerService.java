package com.sns.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class fileManagerService {
	public static final String FILE_UPLOAD_PATH = "D:\\Leehanmin\\7. Spring_Project\\sns\\workspace\\Images/";
		
	public String saveFile(String userLoginId, MultipartFile file) {
		String directoryName = userLoginId + "_" + System.currentTimeMillis() + "/";
		String filePath = FILE_UPLOAD_PATH + directoryName; 
		
		File directory = new File(filePath);
		if(directory.mkdir() == false) {
			return null; // 폴더 만드는데 실패시 image path null
		}
			
		// 파일 업로드: byte로 단위로 업로드 된다.
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(filePath + file.getOriginalFilename()); 
			Files.write(path, bytes);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
			
		return "/images/" + directoryName + file.getOriginalFilename(); 
	}
}
