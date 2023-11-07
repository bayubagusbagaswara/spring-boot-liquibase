package com.bayu.liquibase.service.impl;

import com.bayu.liquibase.dto.EmployeeResponse;
import com.bayu.liquibase.repository.EmployeeRepository;
import com.bayu.liquibase.service.EmployeeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class EmployeeServiceImpl implements EmployeeService {

    private final EmployeeRepository employeeRepository;

    @Override
    public List<EmployeeResponse> getEmployees() {
        return employeeRepository.findAll().stream()
                .map(employee -> EmployeeResponse.builder()
                        .id(employee.getId())
                        .name(employee.getName())
                        .email(employee.getEmail())
                        .active(employee.getActive())
                        .build())
                .toList();
    }
}
