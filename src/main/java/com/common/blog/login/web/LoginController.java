package com.common.blog.login.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	@RequestMapping(value = "/connect", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, Object> map, HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		StringBuffer result = new StringBuffer();
		
		if(1 == 1) {
			session.setAttribute("id", map.get("id").toString());
			result.append("redirect:/");
		} else {
			session.invalidate();
			model.addAttribute("result", "로그인 정보가 틀렸습니다. 다시 시도하여 주세요.");
			result.append("/login/login");
		}
		return result.toString();
	
	}
}
