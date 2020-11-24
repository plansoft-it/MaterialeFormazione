package parte2.esercizi;

import java.util.Arrays;

public class MinMaxMatrice {

	public static void main(String[] args) {
		int[][] matrice = new int[5][5];

		for (int riga = 0; riga < matrice.length; riga++) {
			for (int colonna = 0; colonna < matrice[riga].length; colonna++) {
				matrice[riga][colonna] = (int) (Math.random() * 50);
			}
		}

		for (int[] riga : matrice) {
			System.out.println(Arrays.toString(riga));
		}

		System.out.println("metodi min max");
		System.out.println(findMin(matrice));
		System.out.println(findMax(matrice));
		System.out.println("--------");
		System.out.println("lambda");
		System.out.println(find(matrice, (a, b) -> a > b));
		System.out.println(find(matrice, (a, b) -> a < b));
		System.out.println("--------");
		System.out.println("Arrays");
		for (int[] riga : matrice) {
			Arrays.sort(riga);
		}
		System.out.println(findMinArrays(matrice));
		System.out.println(findMaxArrays(matrice));
		for (int[] riga : matrice) {
			System.out.println(Arrays.toString(riga));
		}
	}

	private static int findMin(int[][] matrice) {
		int min = matrice[0][0];

		for (int riga = 0; riga < matrice.length; riga++) {
			for (int colonna = 0; colonna < matrice.length; colonna++) {
				if (min > matrice[riga][colonna]) {
					min = matrice[riga][colonna];
				}
			}
		}
		return min;
	}

	private static int findMax(int[][] matrice) {
		int max = matrice[0][0];

		for (int riga = 0; riga < matrice.length; riga++) {
			for (int colonna = 0; colonna < matrice.length; colonna++) {
				if (max < matrice[riga][colonna]) {
					max = matrice[riga][colonna];
				}
			}
		}
		return max;
	}

	private static int findMinArrays(int[][] matrice) {
		int element = matrice[0][0];
		for (int i = 1; i < matrice.length; i++) {
			if (element > matrice[i][0]) {
				element = matrice[i][0];
			}
		}
		return element;
	}

	private static int findMaxArrays(int[][] matrice) {
		int length = matrice[0].length - 1;
		int element = matrice[0][length];
		for (int i = 1; i < matrice.length; i++) {
			if (element < matrice[i][length]) {
				element = matrice[i][length];
			}
		}
		return element;
	}

	// lambda
	private interface OrderRelation {
		boolean relation(int a, int b);
	}

	private static int find(int[][] matrice, OrderRelation relation) {
		int element = matrice[0][0];

		for (int riga = 0; riga < matrice.length; riga++) {
			for (int colonna = 1; colonna < matrice.length; colonna++) {
				if (relation.relation(element, matrice[riga][colonna])) {
					element = matrice[riga][colonna];
				}
			}
		}
		return element;
	}

}
