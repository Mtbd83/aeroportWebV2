package application.controller;

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

import application.model.Client;
import application.model.ClientEl;
import application.model.ClientMoral;
import application.model.ClientPhysique;
import application.model.Login;
import application.model.Titre;
import application.model.TitreMoral;
import application.service.ClientService;
import application.service.LoginService;
import application.service.ReservationService;

@Controller
@RequestMapping("/myaccount")
public class MyAccountController {

	@Autowired
	private ClientService clientService;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("")
	public ModelAndView home() {
		return new ModelAndView("redirect:/myaccount/reservations");
	}
	
	@GetMapping("/reservations")
	public ModelAndView afficherResa(@RequestParam(name="idClient", required=true) Integer idClient) {
		Client client = clientService.showclient(idClient);
		ModelAndView modelAndView = new ModelAndView("myaccount/reservations", "reservations", reservationService.showReservationByClient(client));
		return modelAndView;
	}
	
	
	
	
	



	
}
