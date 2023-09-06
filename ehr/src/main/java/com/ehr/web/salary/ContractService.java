package com.ehr.web.salary;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContractService {
	
	@Autowired
	private ContractDAO contractDAO;

	public List<Map<String, Object>> clist(Map<String, Object> map) {
		return contractDAO.clist(map);
	}
	
	

}
