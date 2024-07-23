package com.bookbookbook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import com.bookbookbook.service.AdminService;

@Controller
public class AdminController {

	
		@Autowired
		AdminService adminService;
		
}
