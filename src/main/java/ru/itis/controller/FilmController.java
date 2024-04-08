package ru.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import ru.itis.entity.Film;
import ru.itis.service.FilmService;
import ru.itis.service.ReviewService;

@Controller
public class FilmController {
    @Autowired
    private FilmService filmService;

    @Autowired
    private ReviewService reviewService;

    @GetMapping("/filmlist")
    public String showFilms(Model model) {
//        model.addAttribute("Transporter", filmService.findFilmById(1L));
//        model.addAttribute("ForrestGump", filmService.findFilmById(2L));
//        model.addAttribute("DarkKnight", filmService.findFilmById(3L));
        model.addAttribute("films", filmService.getAllFilms());
        return "filmlist";
    }

    @GetMapping("/filmlist/{film_id}")
    public String getFilm(@PathVariable("film_id") Long filmId, Model model) {
        model.addAttribute("film", filmService.findFilmById(filmId));
        return "filmpage";
    }

    @PostMapping("/add-review/{film_id}")
    public String addReview(@PathVariable("film_id") Long filmId, String text) {
        reviewService.saveReview(filmId, text);
        return "redirect:/filmlist/" + filmId;
    }
}
