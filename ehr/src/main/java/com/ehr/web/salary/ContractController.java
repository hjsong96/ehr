package com.ehr.web.salary;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ContractController {

	@Autowired
	private ContractService contractService;
	
	@Autowired
	private Util util;
	

	@GetMapping("/contract")
	public String contract(@RequestParam Map<String, Object> map, Model model) {
		
		//System.out.println(map);
		List<Map<String, Object>> clist = contractService.clist(map);
		model.addAttribute("clist", clist);
		
		return "/contract";
	}
	
	@ResponseBody
	@PostMapping("/modal")
	public String modal(@RequestParam Map<String, Object> map, Model model) {

		//System.out.println(map);
		
		Map<String, Object> elist = contractService.elist(map);
		model.addAttribute("elist", elist);
		//System.out.println(elist);

		Map<String, Object> clist2 = contractService.clist2(map);
		model.addAttribute("clist2", clist2);
		//System.out.println(clist2);
		
		JSONObject json = new JSONObject();
		json.put("elist", elist);
		json.put("clist2", clist2);

		return json.toString();
	}
	
	
	@PostMapping("/contrack")
	public String contrack(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		int eno = util.getEno(session);
		map.put("eno", eno);
		System.out.println(map);
		
		int result = contractService.aggrCheck(map);
		model.addAttribute("result",result);
		
		
		return "redirect:/contract?eno=" + eno;
	}
}
