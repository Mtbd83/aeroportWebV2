package application.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import application.model.Passager;
import application.model.Vol;
import application.service.VolService;



@Controller
@RequestMapping("/flightResearch")
public class VolResearchController {
	
	@Autowired
	private VolService volService;
	

	@RequestMapping("")
	public ModelAndView home() {
		return new ModelAndView("redirect:/flightResearch/");
	}
	
	
	@GetMapping("/")
	public ModelAndView homeSearch() {
		return new ModelAndView("flightResearch/search", "vol", new Vol());
		
	}
	
	
	
	
	@PostMapping("/searchVol")
	public ModelAndView afficherPassager(@RequestParam(name = "idVol", required = true) Integer idVol) {
		Vol vol =volService.showVol(idVol);
		ModelAndView modelAndView = new ModelAndView("flightResearch/result", "vol",vol);
		return modelAndView;
	}

	
}
