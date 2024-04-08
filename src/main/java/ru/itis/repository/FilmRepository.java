package ru.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.entity.Film;

public interface FilmRepository extends JpaRepository<Film, Long> {
}
