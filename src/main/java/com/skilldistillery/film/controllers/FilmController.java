package com.skilldistillery.film.controllers;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.skilldistillery.film.dao.FilmDAO;
import com.skilldistillery.film.entities.Film;
@Controller
public class FilmController {
	@Autowired
	private FilmDAO filmDao;
	
	@RequestMapping(path = { "/", "home.do" })
	public String home() {
		return "WEB-INF/home.jsp";
	}
	
	@RequestMapping(path="findById.do", method=RequestMethod.GET)
	public ModelAndView findById(@RequestParam("filmId") int filmId) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findById(filmId);
		String category = filmDao.findFilmCategory(filmId);
		mv.addObject("filmById", film);
		mv.addObject("category", category);
		mv.setViewName("WEB-INF/findById.jsp");
		return mv;
	}
	
	@RequestMapping(path="addNewFilm.do", method=RequestMethod.GET)
	public ModelAndView addNewFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		boolean isAdded = filmDao.addNewFilm(film);
		mv.addObject("isAdded", isAdded);
		mv.setViewName("WEB-INF/addNewFilm.jsp");
		return mv;
	}
	
	@RequestMapping(path="deleteFilm.do", method=RequestMethod.GET)
	public String deleteFilm(Model model, int id) {
		boolean isDeleted = filmDao.deleteFilm(id);
		model.addAttribute("isDeleted", isDeleted);
		return "WEB-INF/deleteFilm.jsp";
	}
	
	@RequestMapping(path="editFilm.do", method=RequestMethod.GET)
	public String editFilm(Model model, Film film) {
		boolean isEdited = filmDao.editFilm(film);
		model.addAttribute("isEdited", isEdited);
		return "WEB-INF/editFilm.jsp";
	}
	
	@RequestMapping(path="keyword.do", method=RequestMethod.GET)
	public String findFilmsByKeyword(Model model, String title, String description) {
		List<Film> films = filmDao.findFilmsByKeyword(title, description);
		model.addAttribute("films", films);
		return "WEB-INF/keywordFilms.jsp";
	}
}
	