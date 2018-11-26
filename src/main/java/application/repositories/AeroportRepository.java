package application.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import application.model.Aeroport;

public interface AeroportRepository extends JpaRepository<Aeroport, Integer> {

	Aeroport findByNom(String nom);

}
