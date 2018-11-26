package application.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import application.model.VilleAeroport;
import application.model.VilleAeroportKey;

public interface VilleAeroportRepository extends JpaRepository<VilleAeroport,VilleAeroportKey> {

}
