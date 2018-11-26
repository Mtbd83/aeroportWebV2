package application.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import application.model.Compagnie;

public interface CompagnieRepository extends JpaRepository<Compagnie, Integer> {

	Compagnie findByNom(String nom);

}
