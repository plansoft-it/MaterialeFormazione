package parte2.esercizi;

public class InvertiStringa {
	
	public static void main(String[] args) {
		String stringa = "Invertimi";
		String stringaInv = "";
		
		for (char carattere : stringa.toCharArray()) {
			stringaInv = carattere + stringaInv;
		}
		
		System.out.println(stringaInv);
		
	}

}
