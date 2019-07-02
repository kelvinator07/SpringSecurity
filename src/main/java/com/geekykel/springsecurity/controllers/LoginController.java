package com.geekykel.springsecurity.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/showLoginPage")
    public String loginPage() {

        return "loginPage";
    }

    @GetMapping("/")
    public String homePage() {

        return "index";
    }


    @GetMapping("/leaders")
    public String leadersPage() {

        return "leaders";
    }

    @GetMapping("/systems")
    public String systemsPage() {

        return "systems";
    }

    @GetMapping("/accessDenied")
    public String accessDeniedPage() {

        return "accessDenied";
    }
}
