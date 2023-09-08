package com.ehr.web.salary;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

@Component
public class Util {
	public int obToInt(Object object) {
		int result = 0;
		
		try {
			result = Integer.parseInt((String.valueOf(object)));
		} catch (Exception e) {
			
		}
		return result; 
	}
	
	public int getEno(HttpSession session) {
		int eno = obToInt(session.getAttribute("eno"));
		return eno;
	}
}
