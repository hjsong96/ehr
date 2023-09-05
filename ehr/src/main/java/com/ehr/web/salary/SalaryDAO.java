package com.ehr.web.salary;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SalaryDAO {

	Map<String, Object> elist(Map<String, Object> map);

	Map<String, Object> slist(Map<String, Object> map);

	Map<String, Object> searchSal(Map<String, Object> map);

	Map<String, Object> searchSal2(Map<String, Object> map);
	
}