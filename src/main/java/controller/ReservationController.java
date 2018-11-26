package controller;

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

import model.Client;
import model.ClientMoral;
import model.Reservation;
import service.ClientService;
import service.PassagerService;
import service.ReservationService;
import service.VolService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@Autowired
	ReservationService resaService;
	
	@Autowired
	VolService volService;
	
	@Autowired
	PassagerService passagerService;
	
	@Autowired
	ClientService clientService;
	
	
	
	@RequestMapping
	public ModelAndView home() {
		return new ModelAndView("redirect:/reservation/");
	}
	
	@GetMapping("/")
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("reservation/list", "reservations", resaService.showAll());
		return modelAndView;
	}
	
	@GetMapping("/delete")
	public ModelAndView delete(@RequestParam(name="id", required=true) Integer id) {
		 resaService.deleteReservation(id);
		return new ModelAndView("redirect:/reservation/");
	}
	
	@GetMapping("/edit")
	public ModelAndView edit(@RequestParam(name="id", required=true) Integer id) {
		Reservation resa = resaService.showReservation(id);
		return goEdit(resa);
	}
	
	@GetMapping("/addReservation")
	public ModelAndView addReservation() {
		return goEdit(new Reservation());
	}
	

	
	private ModelAndView goEdit(Reservation resa) {
		ModelAndView modelAndView= new ModelAndView("reservation/form", "reservation",resa);
		modelAndView.addObject("vols",volService.showAll());
		modelAndView.addObject("clients", clientService.showAll());
		modelAndView.addObject("passagers", passagerService.showAll());
		return modelAndView;
	}
	
	@PostMapping("/saveReservation")
	public ModelAndView saveReservation(@Valid @ModelAttribute("reservation") Reservation resa, BindingResult br, @RequestParam("clientResa") Integer id) {
		if(br.hasErrors()) {
			System.out.println(br.getAllErrors());
			return goEdit(resa);
		}else {
			Client client= clientService.showclient(id);
			resa.setClient(client);
			resaService.createReservation(resa);
			return new ModelAndView("redirect:/reservation/");
		}
		
	}
	

	
	

}
