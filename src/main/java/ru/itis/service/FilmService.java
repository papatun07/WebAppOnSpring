package ru.itis.service;

import org.springframework.stereotype.Service;
import ru.itis.dto.FilmDto;
import ru.itis.entity.Film;
import ru.itis.repository.FilmRepository;
import ru.itis.repository.RoleRepository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class FilmService {

    @PersistenceContext
    private EntityManager em;

    private final FilmRepository filmRepository;


    public FilmService(FilmRepository filmRepository) {
        this.filmRepository = filmRepository;
    }

    public List<Film> showFilm() {
        return filmRepository.findAll();
    }

    public Film findFilmById(Long filmId) {
        Optional<Film> film = filmRepository.findById(filmId);
        return film.orElse(new Film());
    }

    public List<FilmDto> getAllFilms() {
        return filmRepository.findAll().stream()
                .map(x -> new FilmDto(x.getId(), x.getName(), x.getDescription()))
                .collect(Collectors.toList());
    }
}
