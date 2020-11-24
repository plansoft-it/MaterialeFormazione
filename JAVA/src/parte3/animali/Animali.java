package parte3.animali;

public class Animali {
	
	// modificatori applicabili a campi e metodi:
	// private, public, protected
	// final // il valorer non può essere cambiato

	private String nome;
	
	public Animali() {
		 setNome("Animale");
	}

	public Animali(String nome) {
		 setNome(nome);
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String walk() {
		return getNome() + " sta camminando!";
	}
	
}
