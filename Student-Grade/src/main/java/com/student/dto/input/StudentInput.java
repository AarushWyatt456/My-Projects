package com.student.dto.input;

public record StudentInput(
        String name,
        String gender,
        String email,
        String address,
        Integer gradeId
) {}