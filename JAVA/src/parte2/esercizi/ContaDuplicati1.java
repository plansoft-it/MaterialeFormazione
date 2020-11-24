package parte2.esercizi;

import java.util.Arrays;

public class ContaDuplicati1 {
	
	// supponiamo di avere un array di 100 elementi con valori da 0 a 50 
	public static void main(String[] args) {
		int[] vect = new int[100];
		int maxValue = 50;
		
		for (int i = 0; i < vect.length; i++) {
			vect[i] = (int)(Math.random() * maxValue);
		}
		
		int[] duplicates = new int[maxValue]; // conto le ripetizioni
		
		// complessita' n = 100
		for (int i = 0; i < vect.length; i++) {
			duplicates[vect[i]]++;
		}

		System.out.println(Arrays.toString(vect));
		System.out.println(Arrays.toString(duplicates));
		for (int i = 0; i < duplicates.length; i++) {
			if (duplicates[i] > 0) {
				System.out.print(i + "(" + duplicates[i] + ") ");
			}
		}
		System.out.println("");
		
	}

}
