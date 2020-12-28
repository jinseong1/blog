package com.common.blog.move.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/move")
public class MoveController {
	
	@RequestMapping(value = "/short_codes")
	public String move_short_codes() {
		return "shortcodes";
	}
	
	@RequestMapping(value = "/simple_page")
	public String move_simple_page() {
		return "simple_page";
	}

}
