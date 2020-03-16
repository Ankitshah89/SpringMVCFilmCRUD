package com.skilldistillery.film.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.dao.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;
	

	@RequestMapping(path = "home.do", method = RequestMethod.GET)
	public String goHome() {
		return "index.html";
	}


	@RequestMapping(path = "search.do")
	public ModelAndView filmSearchId(int id) {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/result.jsp");
		mv.addObject("film", filmDao.findFilmById(id));
		return mv;
	}

	@RequestMapping(path = "searchKeyword.do")
	public ModelAndView filmSearchKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> filmList = filmDao.findFilmByKeywords(keyword);
		mv.setViewName("WEB-INF/resultkeyword.jsp");
		mv.addObject("filmList", filmList);
		return mv;

	}

	@RequestMapping(path = "addFilm.do", method= RequestMethod.GET)
	public ModelAndView addFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/addFilm.jsp");
		mv.addObject("film", new Film());
		return mv;

	}
	
	@RequestMapping(path = "addFilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm(@Valid Film film, Errors errors) {
		if (errors.hasErrors()) {
			return new ModelAndView("WEB-INF/addFilm.jsp");
		}
		ModelAndView mv = new ModelAndView("WEB-INF/result.jsp");
		filmDao.addFilm(film);
		return mv;
	}
	
	@RequestMapping(path = "deleteFilm.do",params = "id")
	public ModelAndView deleteFilm(int id) {
		boolean isDeleted = filmDao.deleteFilm(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/deletedFilm.jsp");
		mv.addObject("isDeleted", isDeleted);
		mv.addObject("filmId",id);
		return mv;
	}	
	
	@RequestMapping(path = "updateFilm.do", method = RequestMethod.GET, params = "id")
	public ModelAndView getUpdateInfo(int id) {
		
//		boolean result = filmDao.updateFilm(new);
		ModelAndView mv = new ModelAndView("WEB-INF/update.jsp");
		mv.addObject("film", new Film());
		mv.addObject("filmID", id);
	
		return mv;
	}
	

	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public ModelAndView update(@Valid Film film, Errors errors) {
		if (errors.hasErrors()) {
			return new ModelAndView("WEB-INF/update.jsp");
		}
		ModelAndView mv = new ModelAndView("WEB-INF/updatedRecord.jsp");
		if (film != null) {
			mv.addObject("actorList", filmDao.findActorsByFilmId(film.getId()));
		
		}
		filmDao.updateFilm(film);
		mv.addObject("film", film);
		return mv;
	}
	
	@RequestMapping(path= "addNewActor.do")
	public ModelAndView addActorReRoute(int id) {
		Film film = filmDao.findFilmById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/addActor.jsp");
		return mv;
	}
	
}
