package com.example.employeemanager.model;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Employee {
    @Size(min = 4,max = 4)
    @NotBlank
    private String id;
    @Size(min = 3,max = 30)
    @NotBlank
    private String name;
    private boolean male;
    @DateTimeFormat(pattern = "dd/mm/yyyy")
    private Date birthday;
    @Size(min = 3,max = 30)
    @NotBlank
    private String address;
    @Size(max = 10)
    private String phone;
    @Size(max = 30)
    private String department;
    @Size(max = 3)
    private String title;
    private long wageRate;

    @Override
    public String toString() {
        return "Employee{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", male=" + male +
                ", birthday=" + birthday +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", department='" + department + '\'' +
                ", title='" + title + '\'' +
                ", wageRate=" + wageRate +
                '}';
    }
}
