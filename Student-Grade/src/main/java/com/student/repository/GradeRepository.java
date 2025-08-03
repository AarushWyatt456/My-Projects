package com.student.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.student.model.Grade;

public interface GradeRepository extends JpaRepository<Grade, Integer> {
    List<Grade> findByStudentId(Integer studentId);
}