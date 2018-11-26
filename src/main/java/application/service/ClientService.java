package application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import application.model.Client;
import application.model.Reservation;
import application.repositories.ClientRepository;
import application.repositories.ReservationRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ClientService {

	@Autowired
	private ClientRepository clientRepository;

	@Autowired
	private ReservationRepository reservationRepository;

	public void createclient(Client client) {
		if (client != null) {
			clientRepository.save(client);
		}
	}

	public void deleteclient(Integer idclient) {
		Optional<Client> opt = clientRepository.findClientWithReservation(idclient);
		if (opt.isPresent()) {
			Client client = opt.get();
			List<Reservation> reservations = client.getReservations();
			for (Reservation resa : reservations) {
				Optional<Reservation> optResa = reservationRepository.findById(resa.getNumeroReservation());
				if (optResa.isPresent()) {
					reservationRepository.delete(resa);
				}
			}
		}
		clientRepository.deleteById(idclient);
	}

	public void deleteAllclient() {
		List<Client> clients = clientRepository.findAll();
		for (Client client : clients) {
			deleteclient(client.getIdClient());
		}
	}

	public void deleteclient(Client client) {
		deleteclient(client.getIdClient());
	}

	public List<Client> showAll() {
		List<Client> clients = clientRepository.findAll();
		return clients;
	}

	public Client showclient(Integer idclient) {
		Optional<Client> opt = clientRepository.findById(idclient);
		Client client = null;
		if (opt.isPresent()) {
			client = opt.get();
		}
		return client;
	}
}
