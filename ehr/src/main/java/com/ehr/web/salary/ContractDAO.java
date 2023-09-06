package com.ehr.web.salary;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ContractDAO {
	List<Map<String, Object>> clist(Map<String, Object> map);
}
