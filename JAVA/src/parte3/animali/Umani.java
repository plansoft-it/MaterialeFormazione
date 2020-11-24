package parte3.animali;

public class Umani extends Animali {
	
	private double altezza;
	
	public Umani() {
		super("Umano");
		setAltezza(2.0);
	}
	
	public Umani(String nome, double altezza) {
		super(nome);
		setAltezza(altezza);
	}
	
	public double getAltezza() {
		return altezza;
	}
	
	public void setAltezza(double altezza) {
		this.altezza = altezza;
	}

	@Override
	public String walk() {
		return getNome() + " alto " + getAltezza() + " metri, si sta muovendo";
	}

}
