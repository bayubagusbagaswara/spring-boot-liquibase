package com.bayu.liquibase.service;

import com.bayu.liquibase.dto.EmployeeResponse;

import java.util.List;

public interface EmployeeService {

    List<EmployeeResponse> getEmployees();
}
