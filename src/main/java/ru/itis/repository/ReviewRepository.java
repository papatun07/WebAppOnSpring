package ru.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.itis.entity.Film;
import ru.itis.entity.Review;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
}
