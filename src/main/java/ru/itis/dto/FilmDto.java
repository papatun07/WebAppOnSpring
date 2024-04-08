package ru.itis.dto;

public class FilmDto {
    private Long id;
    private String name;
    private String description;

    public String getDescription() {
        return description;
    }

    public FilmDto(Long id, String name, String description) {
        this.id = id;
        this.name = name;
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
