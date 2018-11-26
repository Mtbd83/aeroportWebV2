package model;

public enum TitreMoral {
	EI("Entreprise Individuelle"), SC("Société Civile"), SASU("Société Commerciale (Personnes ou Capitaux)"), 
	GIE("Groupement d'Intérêts Economique"), ASS("Association"), SCO("Société Coopérative"), SM("Société Mutuelle");

	private String titre;

	private TitreMoral(String titre) {
		this.titre = titre;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}
}
