package application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import application.model.Passager;
import application.model.Vol;
import application.repositories.PassagerRepository;
import application.service.ReservationService;
import application.service.VolService;

@Controller
@RequestMapping("/vol")
public class VolController {

	@Autowired
	private VolService volService;
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private PassagerRepository passagerRepository;

	@RequestMapping("")
	public ModelAndView home() {
		return new ModelAndView("redirect:/vol/");
	}

	@GetMapping("/")
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("vol/list", "vols", volService.showAll());
		return modelAndView;
	}

	@GetMapping("/delete")
	public ModelAndView delete(@RequestParam(name = "idVol", required = true) Integer idVol) {
		volService.deleteVol(idVol);
		return new ModelAndView("redirect:/vol/");
	}

	@GetMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "idVol", required = true) Integer idVol) {
		Vol vol = volService.showVol(idVol);
		return goEdit(vol);
	}

	@GetMapping("/addVol")
	public ModelAndView addVol() {
		return goEdit(new Vol());
	}
	

	public ModelAndView goEdit(Vol vol) {
		ModelAndView modelAndView = new ModelAndView("vol/form", "vol", vol);
		return modelAndView;
	}

	@PostMapping("/saveVol")
	public ModelAndView saveVol(@Valid @ModelAttribute("vol") Vol vol, BindingResult br) {
		return save(vol, br);
	}
	
	@GetMapping("/passagersVol")
	public ModelAndView afficherPassager(@RequestParam(name = "idVol", required = true) Integer idVol) {
		List<Passager> passagers = volService.showPassagerByVol(idVol);
		ModelAndView modelAndView = new ModelAndView("vol/passagersVol", "passagers", passagers);
		return modelAndView;
	}
	
	public ModelAndView save(Vol vol, BindingResult br) {
		if(br.hasErrors()) {
			return goEdit(vol);
		}	
		volService.createVol(vol);
		return new ModelAndView("redirect:/vol/");
	}
}
