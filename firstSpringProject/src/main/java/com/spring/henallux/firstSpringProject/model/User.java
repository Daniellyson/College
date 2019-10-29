package com.spring.henallux.firstSpringProject.model;

import lombok.*;

import javax.validation.constraints.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

    @Size(min=4, max=15)
    @NotBlank
    private String name;
    @Min(1)
    @Max(12)
    @NotNull
    private Integer age;
    @NotNull
    private Boolean male;
    private String hobby;
}
