package com.skilldistillery.film.dao;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {

	Film findById(int filmId);
	
	List<Actor> findActorsByFilmId(int filmId);
	
	
}
