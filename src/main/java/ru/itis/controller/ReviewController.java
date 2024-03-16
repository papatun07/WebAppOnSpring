package ru.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.*;

import ru.itis.JsonResponse;
import ru.itis.dto.ReviewDto;
import ru.itis.entity.Review;
import ru.itis.service.ReviewService;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@RestController
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    @PostMapping("/add-review/{film_id}")
    public ResponseEntity<JsonResponse> addReview(@RequestBody ReviewDto reviewDto, @PathVariable("film_id") Long filmId) {
        JsonResponse response = new JsonResponse();
        if (reviewDto.getReview() == null || reviewDto.getReview().isEmpty()) {
            response.setStatus("FAIL");
            response.setResult("Комментарий не может быть пустым.");
            return ResponseEntity.badRequest().body(response);
        }
        response.setStatus("SUCCESS");
        reviewService.saveReview(filmId, String.valueOf(reviewDto));
        response.setResult("Комментарий успешно сохранен");
        ModelMap model = new ModelMap();
        model.addAttribute("film_id", filmId);
        return ResponseEntity.ok(response);
    }
}
