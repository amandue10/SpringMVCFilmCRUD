package com.skilldistillery.film.controllers;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.dao.FilmDAO;
import com.skilldistillery.film.dao.FilmDaoJdbcImpl;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	private Film filmForDisplay  = null;
	
	
	@Autowired
	private FilmDAO filmDao;
	
	
	public void setFilmDAO(FilmDaoJdbcImpl filmdao) {
		this.filmDao= filmdao;
	}

	@RequestMapping(path = "home.do", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/home.jsp");
		
		return mv;
		
	}
	
	@RequestMapping(path = "findFilmById.do", method = RequestMethod.GET, params = "id")
	public ModelAndView findFilmByID(@RequestParam("id") String filmId) {
		ModelAndView mv = new ModelAndView();

		Pattern p = Pattern.compile("^[0-9]");
		Matcher m = p.matcher(filmId);

		if (m.find()) {

			int id = Integer.parseInt(filmId);

			if (id != 0) {
				Film film = filmDao.findById(id);

				if (film != null) {
					
					filmForDisplay= film;
					
					mv.addObject("film", film);
					mv.setViewName("WEB-INF/result.jsp");
				}

				else {
					mv.addObject("noFilm", "Invalid Film, try Again!");
					mv.setViewName("WEB-INF/filmByID.jsp");
				}
			}
			
			else {
				mv.addObject("noFilm", "Invalid Film, try Again!");
				mv.setViewName("WEB-INF/filmByID.jsp");
			}

		}

		return mv;
	}
		
	}

