package model;

public enum Titre {
	M("Monsieur"), MME("Madame"), MLLE("Mademoiseille");

	private String titre;

	private Titre(String titre) {
		this.titre = titre;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}
	
}
