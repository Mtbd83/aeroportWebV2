package model;

import java.util.List;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "client")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="type",discriminatorType=DiscriminatorType.STRING,length=20)
@SequenceGenerator(name = "seqClient", sequenceName = "seq_client", initialValue = 1, allocationSize = 1)
public abstract class Client {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seqClient")
	@Column(name = "id_client", length = 50)
	private Integer idClient;

	@Column(name = "nom_client", length = 100)
	private String nom;
	
	@Column(name = "prenom_client", length = 100)
	private String prenom;

	@Column(name = "numero_tel", length = 100)
	private Integer numeroTel;

	@Column(name = "numero_fax", length = 100)
	private Integer numeroFax;

	@Column(name = "mail_client", length = 100)
	private String mail;

	
	@Column(name = "titre_client", length = 100)
	@Enumerated(EnumType.STRING)
	private Titre titre;
	
	@OneToOne
	@JoinColumn(name = "login")
	private Login login;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "rue", column = @Column(name = "rue", length = 20)),
			@AttributeOverride(name = "codePostal", column = @Column(name = "code_postal", length = 20)),
			@AttributeOverride(name = "ville", column = @Column(name = "ville", length = 20)),
			@AttributeOverride(name = "numero", column = @Column(name = "numero", length = 20)),
			@AttributeOverride(name = "pays", column = @Column(name = "pays", length = 20))})
	private Adresse adresse;

	@Version
	private int version;

	@OneToMany(mappedBy = "client")
	private List<Reservation> reservations;

	public Client() {
	}



	public Integer getIdClient() {
		return idClient;
	}



	public void setIdClient(Integer idClient) {
		this.idClient = idClient;
	}



	public String getNom() {
		return nom;
	}



	public void setNom(String nom) {
		this.nom = nom;
	}



	public String getPrenom() {
		return prenom;
	}



	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}



	public Integer getNumeroTel() {
		return numeroTel;
	}



	public void setNumeroTel(Integer numeroTel) {
		this.numeroTel = numeroTel;
	}



	public Integer getNumeroFax() {
		return numeroFax;
	}



	public void setNumeroFax(Integer numeroFax) {
		this.numeroFax = numeroFax;
	}



	public String getMail() {
		return mail;
	}



	public void setMail(String mail) {
		this.mail = mail;
	}



	public Titre getTitre() {
		return titre;
	}



	public void setTitre(Titre titre) {
		this.titre = titre;
	}



	public Login getLogin() {
		return login;
	}



	public void setLogin(Login login) {
		this.login = login;
	}



	public Adresse getAdresse() {
		return adresse;
	}



	public void setAdresse(Adresse adresse) {
		this.adresse = adresse;
	}



	public int getVersion() {
		return version;
	}


	public void setVersion(int version) {
		this.version = version;
	}

	public List<Reservation> getReservations() {
		return reservations;
	}

	public void setReservations(List<Reservation> reservations) {
		this.reservations = reservations;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idClient == null) ? 0 : idClient.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Client other = (Client) obj;
		if (idClient == null) {
			if (other.idClient != null)
				return false;
		} else if (!idClient.equals(other.idClient))
			return false;
		return true;
	}

}
