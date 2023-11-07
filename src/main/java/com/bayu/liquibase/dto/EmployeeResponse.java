package com.bayu.liquibase.dto;

import lombok.Builder;

@Builder
public record EmployeeResponse(
        Long id,
        String name,
        String email,
        Boolean active
) {
}
