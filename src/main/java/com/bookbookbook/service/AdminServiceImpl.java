package com.bookbookbook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookbookbook.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{

	
		@Autowired
		AdminDAO adminDAO;
}
