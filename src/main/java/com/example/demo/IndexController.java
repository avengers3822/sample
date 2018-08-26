package com.example.demo;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@RequestMapping("/")
	public String index(Model model) {
		List<Map<String,Object>> list;
		StringBuffer sb = new StringBuffer();

		sb.append("select member.id,member.name,map.lat,map.lng ");
		sb.append("from member ");
		sb.append("left outer join map ");
		sb.append("on member.id = map.id ");
		sb.append("order by member.id ");

		list = jdbcTemplate.queryForList(sb.toString());
		model.addAttribute("members", list);
		return "index";
	}
}