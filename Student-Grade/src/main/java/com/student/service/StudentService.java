package com.student.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.student.dto.input.StudentInput;
import com.student.model.Student;
import com.student.repository.StudentRepository;
import java.util.List;

@Service
public class StudentService {
    private final StudentRepository studentRepository;

    @Autowired
    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    public Student getStudentById(Integer id) {
        return studentRepository.findById(id).orElse(null);
    }

    public Student createStudent(StudentInput studentInput) {
        Student student = new Student();
        student.setName(studentInput.name());
        student.setGender(studentInput.gender());
        student.setEmail(studentInput.email());
        student.setAddress(studentInput.address());
        return studentRepository.save(student);
    }

    public void deleteStudent(Integer id) {
        studentRepository.deleteById(id);
    }
}