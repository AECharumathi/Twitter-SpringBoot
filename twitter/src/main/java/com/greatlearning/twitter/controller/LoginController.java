package com.greatlearning.twitter.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {
    
	@GetMapping({"/", "/welcome"})
    public String home() {
        return "welcome.jsp";
    }

}

