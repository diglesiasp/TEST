package com.diglesiasp.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.diglesiasp.test.dao.DepartmentDAO;
import com.diglesiasp.test.model.Department;

@Controller
public class DepartmentController {

	@Autowired
    private DepartmentDAO departmentDAO;

    @RequestMapping(value = { "/" }, method = RequestMethod.GET)
    public String welcomePage(Model model) {
    	
        List<Department> list = departmentDAO.listDepartment();
        model.addAttribute("departments", list);
        return "index";
    }
}