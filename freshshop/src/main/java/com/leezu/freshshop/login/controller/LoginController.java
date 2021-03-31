package com.leezu.freshshop.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.leezu.freshshop.login.dto.UserDto;

@Controller
public class LoginController {

	@PostMapping("/signup")
	public String signup(@ModelAttribute UserDto userDto, BindingResult bindingResult) {
		// 유효성 검사하기
		
		return "redirect:/";
	}
	
	@GetMapping("/signup")
	public String singup(@ModelAttribute UserDto userDto) {
		return "root.signup";
	}
}
