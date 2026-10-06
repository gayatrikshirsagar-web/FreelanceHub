package com.freelance_platform.controller;

import com.freelance_platform.dto.StudentDashboardResponse;
import com.freelance_platform.service.StudentDashboardService;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/student-dashboard")
@CrossOrigin(origins = "http://localhost:5173")
public class StudentDashboardController {

    private final StudentDashboardService
            studentDashboardService;

    public StudentDashboardController(
            StudentDashboardService studentDashboardService) {

        this.studentDashboardService =
                studentDashboardService;
    }

    @GetMapping("/{userId}")
    public StudentDashboardResponse getDashboard(
            @PathVariable Integer userId) {

        return studentDashboardService
                .getDashboard(userId);
    }
}
