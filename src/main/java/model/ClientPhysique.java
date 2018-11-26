package model;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("P")
public class ClientPhysique extends Client {
	
	@Column
	private String titrePhysique;
	
	public ClientPhysique() {
		super();
	}
	
	public String getTitrePhysique() {
		return titrePhysique;
	}
	public void setTitrePhysique(String titrePhysique) {
		this.titrePhysique = titrePhysique;
	}

}
