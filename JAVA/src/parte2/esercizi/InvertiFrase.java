package parte2.esercizi;

public class InvertiFrase {
	
	public static void main(String[] args) {
		String frase = "pizza con il prezzemolo";
		String fraseInv = "";
		
		for (String parola: frase.split(" ")) {
			fraseInv = parola + " " + fraseInv; 
		}
		
		System.out.println(fraseInv);
	}

}
