package application.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import application.model.Adresse;
import application.model.Passager;
import application.repositories.PassagerRepository;

@Service
public class PassagerService {

	@Autowired
	private PassagerRepository passagerRepository;

	public void createPassager(Passager passager) {
		if (passager != null) {
			passagerRepository.save(passager);
		}
	}

	public void deletePassager(Passager passager) {
		if (passager != null) {
			passagerRepository.delete(passager);
		}
	}

	public void deletePassagerByName(String name) {
		List<Passager> passagers = passagerRepository.findByNom(name);
		for (Passager passager : passagers) {
			passagerRepository.delete(passager);
		}
	}
	
	public void deletePassagerById(Integer idPassager) {
		Optional<Passager> passagers = passagerRepository.findById(idPassager);
		if (passagers.isPresent()) {			
			passagerRepository.deleteById(passagers.get().getIdPassager());
		}
	}

	public void modifyPassagerName(Passager passager, String name) {
		if (name != null) {
			passager.setNom(name);
			passagerRepository.save(passager);
		}
	}

	public void modifyPassagerFirstname(Passager passager, String firstname) {
		if (firstname != null) {
			passager.setPrenom(firstname);
			passagerRepository.save(passager);
		}
	}

	public void modifyPassagerAdress(Passager passager, Adresse adress) {
		if (adress != null) {
			passager.setAdresse(adress);
			passagerRepository.save(passager);
		}
	}

	public Passager showPassager(Integer idPassager) {
		Optional<Passager> opt = passagerRepository.findById(idPassager);
		Passager passager = null;
		if (opt.isPresent()) {
			passager = opt.get();
		}
		return passager;
	}

	public List<Passager> showAll() {
		List<Passager> passagers = passagerRepository.findAll();
		return passagers;
	}
}
