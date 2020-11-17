package parte2;

import java.util.Arrays;

public class Vettori {

	public static void main(String[] args) {
		int array[] = { 1, 123, 4, 6 };

		for (int i = 0; i < array.length; i++) {
			System.out.println(array[i]);
		}

		System.out.println("------");

		for (int i = array.length - 1; i >= 0; i--) {
			array[i] = (int) Math.pow(2, i);
			System.out.println(array[i]);
		}

		System.out.println("------");

		int array2[][] = new int[5][5];
		for (int i = 0; i < array2.length; i++) {
			for (int j = 0; j < array2.length; j++) {
				array2[i][j] = i + j;
			}
		}
		for (int i = 0; i < array2.length; i++) {
			System.out.print("|");
			for (int j = 0; j < array2.length; j++) {
				System.out.print(array2[i][j] + "|");
			}
			System.out.println("");
		}
		// questo è il metodo classico per scorrere un array di tipo primitivo
		System.out.println("------");
		for (int element : array) {
			System.out.println(element);
		}

		System.out.println("------");
		for (int[] row : array2) {
			System.out.print("|");
			for (int element : row) {
				System.out.print(element + "|");
			}
			System.out.println();
		}
		System.out.println("------");
		// iterazione di elementi iterabili

		Arrays.fill(array, 0);
		for (int element : array) {
			System.out.println(element);
		}
		System.out.println("------");
		// iterazione di elementi iterabili

		System.out.println(Arrays.toString(array2[2]));
	}

}
