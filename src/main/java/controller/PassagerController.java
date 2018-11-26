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


import model.Passager;
import service.PassagerService;

@Controller
@RequestMapping("/passager")
public class PassagerController {

	@Autowired
	private PassagerService passagerService;

	@RequestMapping("")
	public ModelAndView home() {
		return new ModelAndView("redirect:/passager/");
	}

	@GetMapping(value = { "/" })
	public ModelAndView list() {
		System.out.println(passagerService.showAll());
		ModelAndView modelAndView = new ModelAndView("passager/list", "passagers", passagerService.showAll());
		return modelAndView;
	}

	@GetMapping("/delete")
	public ModelAndView delete(@RequestParam(name = "idPassager", required = true) Integer idPassager) {
		passagerService.deletePassagerById(idPassager);
		return new ModelAndView("redirect:/passager/");
	}

	
	@GetMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "idPassager", required = true) Integer idPassager) {
		Passager p = passagerService.showPassager(idPassager);
		return goEdit (p);
	}

	private ModelAndView goEdit(Passager p) {
		ModelAndView modelAndView = new ModelAndView("passager/form", "passager", p);
		modelAndView.addObject(passagerService);
		return modelAndView;
	}

	@GetMapping("/add")
	public ModelAndView add() {
		return goEdit(new Passager());
	}

	@PostMapping("/savePassager")
	public ModelAndView savePassager(@Valid @ModelAttribute("passager") Passager passager, BindingResult br) {
		return save(passager, br);
	}

	private ModelAndView save(Passager passager, BindingResult br) {
		if (br.hasErrors()) {
			return goEdit(passager);
		}
		if (passager.getIdPassager() != null) {
			passagerService.createPassager(passager);
		}else {
			passagerService.createPassager(passager);
		}
			return new ModelAndView("redirect:/passager/");
		}
	}

