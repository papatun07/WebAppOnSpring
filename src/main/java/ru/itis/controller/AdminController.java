package ru.itis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itis.service.ReviewService;
import ru.itis.service.UserService;

@Controller
public class AdminController {
    private ReviewService reviewService;

    private UserService userService;

    public AdminController(ReviewService reviewService, UserService userService) {
        this.reviewService = reviewService;
        this.userService = userService;
    }

    @GetMapping("/admin")
    public String getReview(Model model) {
        model.addAttribute("reviewForCheck", reviewService.allReviews());
        return "reviewlist";
    }


    @PostMapping("/admin")
    public String deleteReview(@RequestParam(required = true, defaultValue = "") Long reviewId, @RequestParam(required = true, defaultValue = "") String action) {
        if (action.equals("delete")) {
            reviewService.deleteReview(reviewId);
        }
        return "redirect:/admin";
    }

    @GetMapping("/admin/user-list")
    public String getUserList(Model model) {
        model.addAttribute("userList", userService.getAllRolesWithRoleUser());
        return "userlist";
    }
}
