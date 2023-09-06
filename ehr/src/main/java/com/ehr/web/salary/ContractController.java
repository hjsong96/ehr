package com.ehr.web.salary;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContractController {

	@Autowired
	private ContractService contractService;

	@GetMapping("/contract")
	public String contract(@RequestParam Map<String, Object> map, Model model) {
		
		System.out.println(map);
		List<Map<String, Object>> clist = contractService.clist(map);
		model.addAttribute("clist", clist);

		return "/contract";
	}


}
