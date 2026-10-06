package com.freelance_platform.controller;

import com.freelance_platform.dto.AdminDashboardResponse;
import com.freelance_platform.service.AdminDashboardService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/admin-dashboard")
@CrossOrigin(origins = "http://localhost:5173")
public class AdminDashboardController {

    private final AdminDashboardService adminDashboardService;

    public AdminDashboardController(
            AdminDashboardService adminDashboardService) {

        this.adminDashboardService =
                adminDashboardService;
    }

    @GetMapping
    public AdminDashboardResponse getDashboard() {

        return adminDashboardService.getDashboard();
    }
}