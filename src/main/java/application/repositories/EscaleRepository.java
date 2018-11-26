package application.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import application.model.Escale;
import application.model.EscaleKey;

public interface EscaleRepository extends JpaRepository<Escale,EscaleKey> {

}
