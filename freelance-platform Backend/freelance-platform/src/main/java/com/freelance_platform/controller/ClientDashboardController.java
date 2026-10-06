package com.freelance_platform.controller;

import com.freelance_platform.dto.ClientDashboardResponse;
import com.freelance_platform.service.ClientDashboardService;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/client-dashboard")
@CrossOrigin(origins = "http://localhost:5173")
public class ClientDashboardController {

    private final ClientDashboardService
            clientDashboardService;


    public ClientDashboardController(
            ClientDashboardService clientDashboardService) {

        this.clientDashboardService =
                clientDashboardService;
    }


    @GetMapping("/{userId}")
    public ClientDashboardResponse getDashboard(
            @PathVariable Integer userId) {

        return clientDashboardService
                .getDashboard(userId);
    }
}