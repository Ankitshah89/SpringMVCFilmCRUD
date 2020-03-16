package com.skilldistillery.film.dao;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
  public Film findFilmById(int filmId);
  public Actor findActorById(int actorId);
  public List<Actor> findActorsByFilmId(int filmId);
  public List<Film> findFilmByActorId(int actorId);
  public List<Film> findFilmByKeywords(String keyword);
  public String getLanguageOfFilm(int filmId);
  public void addFilm(Film film);
  public void updateFilm(Film film);
  public boolean deleteFilm(int filmId);
  public String getFilmCategory (int filmId);
  List<String> getFilmInventoryStatus(int filmId);
  
}
