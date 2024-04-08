package ru.itis.service;

import org.springframework.stereotype.Service;
import ru.itis.entity.Film;
import ru.itis.entity.Review;
import ru.itis.repository.FilmRepository;
import ru.itis.repository.ReviewRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ReviewService {

    private final ReviewRepository reviewRepository;

    private final FilmService filmService;

    public ReviewService(ReviewRepository reviewRepository, FilmService filmService) {
        this.reviewRepository = reviewRepository;
        this.filmService = filmService;
    }

    public void saveReview(Long filmId, String text) {
        Review review = new Review();
        Film film = filmService.findFilmById(filmId);
        review.setFilm(film);
        review.setDescription(text);
        reviewRepository.save(review);
    }

    public Review findReviewById(Long reviewId) {
        Optional<Review> review = reviewRepository.findById(reviewId);
        return review.orElse(new Review());
    }

    public List<Review> allReviews() {
        return reviewRepository.findAll();
    }

    public boolean deleteReview(Long reviewId) {
        if (reviewRepository.findById(reviewId).isPresent()) {
            reviewRepository.deleteById(reviewId);
            return true;
        }
        return false;
    }
}
