package com.example.employeemanager.service;

import com.example.employeemanager.model.Employee;

import java.util.*;

public class EmployeeService {
    private static final EmployeeService instance = new EmployeeService();
    private HashMap<String,Employee> employees ;
    private List<String> departments;
    private List<String> titles;

    public static EmployeeService getInstance() {
        return instance;
    }

    EmployeeService(){
        init();
    }

    private void init(){
        employees = new HashMap<String,Employee>();

        Employee em1 = new Employee("A001","Trần Văn Trà",false,
                new Date(1954,11,11),"Quang Trung 16/3","0972611865","BGĐ","GĐ",20000000);
        Employee em2 = new Employee("A002","Nguyễn Thị Mỹ Dung",false,
                new Date(1953,12,13),"Nguyễn Thị Minh Khai 10","097262342","SX","NV",2400000);
        Employee em3 = new Employee("A003","Trần Quyết Thắng",true,
                new Date(1960,12,4),"Quang Trung 20/3","0974511865","KT","PP",17500000);
        Employee em4 = new Employee("A004","Phạm Hùng",true,
                new Date(1970,7,7),"Nguyễn Gia 8","","SX","TP",20000000);

        employees.put(em1.getId(),em1);
        employees.put(em2.getId(),em2);
        employees.put(em3.getId(),em3);
        employees.put(em4.getId(),em4);

        departments = new ArrayList<>();
        departments.add("SX");
        departments.add("KT");
        departments.add("KHTV");
        departments.add("BGĐ");

        titles = new ArrayList<>();
        titles.add("GĐ");
        titles.add("PGĐ");
        titles.add("TP");
        titles.add("PP");
        titles.add("NV");
    }

    public Collection<Employee> getEmployees() {
        return employees.values();
    }

    public List<String> getDepartments() {
        return departments;
    }

    public List<String> getTitles() {
        return titles;
    }

    public Employee findEmployee(String id){
        return employees.get(id);
    }
    public void addEmployee(Employee employee){
        employees.put(employee.getId(), employee);
    }
}
