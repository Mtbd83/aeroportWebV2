package repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Client;

public interface ClientRepository extends JpaRepository<Client, Integer>{

	List<Client> findByNom(String nom);
	
	@Query("select c from Client c left join fetch c.reservations where c.idClient=:id") 
	Optional<Client> findClientWithReservation(@Param("id")Integer idClient);
	
}
