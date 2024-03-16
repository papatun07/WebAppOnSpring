package ru.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.itis.entity.Film;

public interface FilmRepository extends JpaRepository<Film, Long> {

    @Query(value = "select (select count(name) from film)", nativeQuery = true)
    Integer findCountOfFilms();
}
