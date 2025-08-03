package com.student.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.student.dto.input.GradeInput;
import com.student.model.Grade;
import com.student.model.Student;
import com.student.repository.GradeRepository;
import com.student.repository.StudentRepository;
import java.util.List;

@Service
public class GradeService {
    private final GradeRepository gradeRepository;
    private final StudentRepository studentRepository;

    @Autowired
    public GradeService(GradeRepository gradeRepository, StudentRepository studentRepository) {
        this.gradeRepository = gradeRepository;
        this.studentRepository = studentRepository;
    }

    public List<Grade> getAllGrades() {
        return gradeRepository.findAll();
    }

    public Grade getGradeById(Integer id) {
        return gradeRepository.findById(id).orElse(null);
    }

    public Grade createGrade(GradeInput gradeInput) {
        Student student = studentRepository.findById(gradeInput.studentId())
                .orElseThrow(() -> new RuntimeException("Student not found with id: " + gradeInput.studentId()));

        Grade grade = new Grade();
        grade.setName(gradeInput.name());
        grade.setStatus(gradeInput.status());
        grade.setStudent(student);
        
        return gradeRepository.save(grade);
    }

    public void deleteGrade(Integer id) {
        gradeRepository.deleteById(id);
    }

    public List<Grade> getGradesByStudentId(Integer studentId) {
        return gradeRepository.findByStudentId(studentId);
    }
}