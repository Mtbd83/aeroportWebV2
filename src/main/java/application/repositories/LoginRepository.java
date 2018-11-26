package application.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import application.model.Login;

public interface LoginRepository extends JpaRepository<Login, String> {
	
	@Query("select l from Login l left join fetch l.roles where l.identifiant=?1")
	public Optional<Login> findByIdWithRoles(String identifiant); 
	
}
