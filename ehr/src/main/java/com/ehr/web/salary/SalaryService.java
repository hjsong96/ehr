package com.ehr.web.salary;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SalaryService {

	@Autowired
	private SalaryDAO salaryDAO;

	public Map<String, Object> elist(Map<String, Object> map) {
		return salaryDAO.elist(map);
	}

	public Map<String, Object> slist(Map<String, Object> map) {
		return salaryDAO.slist(map);
	}

	public Map<String, Object> searchSal(Map<String, Object> map) {
		return salaryDAO.searchSal(map);
	}

	public Map<String, Object> searchSal2(Map<String, Object> map) {
		return salaryDAO.searchSal2(map);
	}

	public List<Map<String, Object>> list(Map<String, Object> map) {
		return salaryDAO.list(map);
	}
	
}
