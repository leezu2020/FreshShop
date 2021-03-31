package com.leezu.freshshop.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.leezu.freshshop.login.dto.UserRegDto;
import com.leezu.freshshop.login.validator.UserValidator;

@Controller
public class LoginController {

	@PostMapping("/signup")
	public String signup(@ModelAttribute UserRegDto userRegDto, BindingResult bindingResult) {
		
		// 유효성 검사하기
		UserValidator validator = new UserValidator();
		validator.validate(userRegDto, bindingResult);
		
		if(bindingResult.hasErrors()) {
			return "root.signup";
		}
		
		return "redirect:/";
	}
	
	@GetMapping("/signup")
	public String singup(@ModelAttribute UserRegDto userRegDto) {
		return "root.signup";
	}
}
