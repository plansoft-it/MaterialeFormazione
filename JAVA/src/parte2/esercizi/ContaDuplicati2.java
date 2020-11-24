package parte2.esercizi;

import java.util.Arrays;

public class ContaDuplicati2 {

	// supponiamo di avere un array di 100 elementi con valori da 0 a 50
	public static void main(String[] args) {
		int[] vect = new int[100];
		int maxValue = 50;

		for (int i = 0; i < vect.length; i++) {
			vect[i] = (int) (Math.random() * maxValue);
		}

		int[] vectNoDuplicates = new int[100];
		int[] vectNoDuplicatesCounter = new int[100];
		// complessita' n = 100
		Arrays.fill(vectNoDuplicates, -1);

		// complessita' n^2 
		vectNoDuplicates[0] = vect[0];
		for (int i = 0; i < vect.length; i++) {
			for (int j = 0; j < vectNoDuplicates.length; j++) {
				if (vect[i] == vectNoDuplicates[j]) {
					vectNoDuplicatesCounter[j]++;
					break;
				} else if (vectNoDuplicates[j] == -1) {
					vectNoDuplicatesCounter[j] = 1;
					vectNoDuplicates[j] = vect[i];
					break;
				}
			}
		}

		System.out.println(Arrays.toString(vect));

		for (int i = 0; i < vectNoDuplicates.length; i++) {
			if (vectNoDuplicates[i] != -1) {
				System.out.print(vectNoDuplicates[i] + "(" + vectNoDuplicatesCounter[i] + ") ");
			} else {
				break;
			}
		}

	}

}
