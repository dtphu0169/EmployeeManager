package com.example.employeemanager.controller;

import com.example.employeemanager.model.Employee;
import com.example.employeemanager.service.EmployeeService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.List;

@Controller
@SessionAttributes("user")
public class EmployeeController {
    @GetMapping({"dsnhanvien","/"})
    public String dsnv(Model model, HttpSession session){
        Collection<Employee> employees =  EmployeeService.getInstance().getEmployees();
        model.addAttribute("employees",employees);
        return "dsnhanvien";
    }

    @GetMapping("/chitietnhanvien/{id}")
    public String chitietnv(@PathVariable String id, Model model, HttpSession session){
        Employee empl = EmployeeService.getInstance().findEmployee(id);
        model.addAttribute("employee",empl);
        return "chitietnhanvien";
    }

    @GetMapping("/themnv")
    public String themnv(Model model, HttpSession session){
        Employee employee = new Employee();
        model.addAttribute("employee",employee);

        List<String> departments = EmployeeService.getInstance().getDepartments();
        List<String> titles = EmployeeService.getInstance().getTitles();
        model.addAttribute("departments",departments);
        model.addAttribute("titles",titles);
        return "themnhanvien";
    }

    @PostMapping("/themnv")
    public String postthemnv(@Valid @ModelAttribute("employee") Employee employee,
        BindingResult bindingResult, Model model){
        Employee employeeCk = EmployeeService.getInstance().findEmployee(employee.getId());

        if (bindingResult.hasErrors() ||employeeCk != null){
            Employee employee1 = new Employee();
            model.addAttribute("employee",employee1);

            List<String> departments = EmployeeService.getInstance().getDepartments();
            List<String> titles = EmployeeService.getInstance().getTitles();
            model.addAttribute("departments",departments);
            model.addAttribute("titles",titles);
            //if redirect will lost binding error
            //if don't addattitrbute it will lost
            return "themnhanvien";
        }

        EmployeeService.getInstance().addEmployee(employee);

        return "redirect:/dsnhanvien";
    }

    @GetMapping("/suanhanvien/{id}")
    public String suanv(@PathVariable String id, Model model){
        Employee employee = EmployeeService.getInstance().findEmployee(id);
        model.addAttribute("employee",employee);
        return "suanhanvien";
    }

    @PostMapping("/suanhanvien")
    public String suanv(Employee employee, Model model){
        System.out.println(employee);
        EmployeeService.getInstance().addEmployee(employee);
        return "redirect:/dsnhanvien";
    }
}
