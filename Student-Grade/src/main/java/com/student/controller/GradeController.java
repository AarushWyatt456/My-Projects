package com.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.student.dto.input.GradeInput;
import com.student.model.Grade;
import com.student.service.GradeService;

import java.util.List;

@RestController
@RequestMapping("/api/grades")
public class GradeController {
    private final GradeService gradeService;

    @Autowired
    public GradeController(GradeService gradeService) {
        this.gradeService = gradeService;
    }

    @GetMapping
    public List<Grade> getAllGrades() {
        return gradeService.getAllGrades();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Grade> getGradeById(@PathVariable Integer id) {
        Grade grade = gradeService.getGradeById(id);
        if (grade != null) {
            return ResponseEntity.ok(grade);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public ResponseEntity<Grade> createGrade(@RequestBody GradeInput gradeInput) {
        Grade createdGrade = gradeService.createGrade(gradeInput);
        return ResponseEntity.ok(createdGrade);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteGrade(@PathVariable Integer id) {
        gradeService.deleteGrade(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/student/{studentId}")
    public List<Grade> getGradesByStudentId(@PathVariable Integer studentId) {
        return gradeService.getGradesByStudentId(studentId);
    }
}