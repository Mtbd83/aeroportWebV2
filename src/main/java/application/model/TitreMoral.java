package application.model;

public enum TitreMoral {
	EI("Entreprise Individuelle"), SC("Soci�t� Civile"), SASU("Soci�t� Commerciale (Personnes ou Capitaux)"), 
	GIE("Groupement d'Int�r�ts Economique"), ASS("Association"), SCO("Soci�t� Coop�rative"), SM("Soci�t� Mutuelle");

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
