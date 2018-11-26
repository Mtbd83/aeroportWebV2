package application.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import application.model.Ville;

public interface VilleRepository extends JpaRepository<Ville, Integer> {

	Ville findByNom(String nom);
}
