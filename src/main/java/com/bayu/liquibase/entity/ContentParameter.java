package com.bayu.liquibase.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "content_parameter")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ContentParameter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
}
