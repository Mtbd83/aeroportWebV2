package application.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import application.model.Passager;

public interface PassagerRepository extends JpaRepository<Passager, Integer>{

	List<Passager> findByNom(String nom);
	
	List<Passager> findByReservations(Integer numeroReservation);

}
