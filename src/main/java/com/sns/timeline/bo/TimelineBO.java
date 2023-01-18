package com.sns.timeline.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sns.common.fileManagerService;
import com.sns.timeline.dao.TimelineDAO;

@Service
public class TimelineBO {
	
	@Autowired
	private TimelineDAO timelineDAO;
	
	@Autowired
	private fileManagerService fileManagerService;
	
	
}
