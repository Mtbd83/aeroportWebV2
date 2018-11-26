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
@RequestMapping("/account")
public class AccountController {

	@Autowired
	private ClientService clientService;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("")
	public ModelAndView home() {
		return new ModelAndView("redirect:/account/typeclient");
	}
	

	
	private ModelAndView goEdit(Client client) {
		ModelAndView modelAndView = new ModelAndView("account/form", "client", client);
		modelAndView.addObject("titres", Titre.values());
		modelAndView.addObject("titresM", TitreMoral.values());
		modelAndView.addObject("login", client.getLogin());
		modelAndView.addObject("reservations", client.getReservations());
		return modelAndView;
	}
	
	
	@GetMapping("/reservations")
	public ModelAndView afficherResa(@RequestParam(name="idClient", required=true) Integer idClient) {
		Client client = clientService.showclient(idClient);
		ModelAndView modelAndView = new ModelAndView("account/reservations", "reservations", reservationService.showReservationByClient(client));
		return modelAndView;
	}

	@GetMapping("/typeclient")
	public void type() {
	}
	
	
	@GetMapping("/addClientEl")
	public ModelAndView addClientEl() {
		return goEdit(new ClientEl());
	}
	
	@GetMapping("/addClientMoral")
	public ModelAndView addClientMoral() {
		return goEdit(new ClientMoral());
	}
	
	@GetMapping("/addClientPhysique")
	public ModelAndView addClientPhysique() {
		return goEdit(new ClientPhysique());
	}
	
	@PostMapping("/saveClientEl")
	public ModelAndView saveClientEl(@Valid @ModelAttribute(name="client") ClientEl client, BindingResult result) {
		return save(client, result);
	}
	
	@PostMapping("/saveClientMoral")
	public ModelAndView saveClientMoral(@Valid @ModelAttribute(name="client") ClientMoral client, BindingResult result) {
		return save(client, result);
	}
	
	@PostMapping("/saveClientPhysique")
	public ModelAndView saveClientPhysique(@Valid @ModelAttribute(name="client") ClientPhysique client, BindingResult result) {
		return save(client, result);
	}
	
	private ModelAndView save(Client client, BindingResult result) {
		if(result.hasErrors()) {
			return goEdit(client);
		}
		Login login = client.getLogin();
		loginService.CreateLogin(login);
		clientService.createclient(client);
		return new ModelAndView("redirect:/home");
	}
	
}
