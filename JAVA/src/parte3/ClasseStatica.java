package parte3;

public class ClasseStatica {
	
	public String saluto = "Ciaooooo";
	public static String altroSaluto = "Ciao22222";
	public static int numeroDiSaluti = 0;
	
	public String restituisciSaluto() {
		numeroDiSaluti++;
		return "Salve";
	}

	public static String restituisciAltroSaluto() {
		numeroDiSaluti++;
		return "Salve2222222";
	}

}
