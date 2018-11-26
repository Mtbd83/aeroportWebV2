package application.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import application.model.CompagnieVol;
import application.model.CompagnieVolKey;

public interface CompagnieVolRepository extends JpaRepository<CompagnieVol,CompagnieVolKey> {

}
