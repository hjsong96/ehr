package com.ehr.web.attend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttendService {

	@Autowired
	private AttendDAO attendDAO;
	
}
