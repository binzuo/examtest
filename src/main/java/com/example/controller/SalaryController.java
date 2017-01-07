package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Salary;
import com.example.service.SalaryService;

@Controller
@RequestMapping("salary")
public class SalaryController extends BaseController {

    private final SalaryService salaryService;

    @Autowired
    public SalaryController(SalaryService salaryService) {
        this.salaryService = salaryService;
    }

    @RequestMapping("add")
    private String add(Salary salary) {
        salaryService.add(salary);
        return "redirect:/salary/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        salaryService.remove(id);
        return "redirect:/salary/list";
    }

    @RequestMapping("modify")
    private String modify(Salary salary) {
        salaryService.modify(salary);
        return "redirect:/salary/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        //getSession().setAttribute("pagination", salaryService.list(page));
        getSession().setAttribute("pagination", salaryService.query(page, "queryUserSalaries", null));

        return "redirect:/salary/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("salary", salaryService.search(id));
        return "redirect:/salary/edit.jsp";
    }
}