package com.spring.henallux.firstSpringProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;

@Controller
public class BaseController {
    @Autowired
    private MessageSource messageSource;
}
