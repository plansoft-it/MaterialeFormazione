package parte2.esercizi;

import java.util.Arrays;

public class MinMaxVettore {
	
	public static void main(String[] args) {
		int vect[] = new int[10];
		
		for (int i = 0; i < vect.length; i++) {
			vect[i] = (int) (Math.random() * 50);
		}
		
		System.out.println(Arrays.toString(vect));
		
		// lasciando inalterato vect
		System.out.println("metodi min e max");
		System.out.println(minVect(vect));
		System.out.println(maxVect(vect));
		System.out.println("------");

		// utilizzando lambda
		System.out.println("Lambda");
		System.out.println(findElement(vect, (a,b) -> a > b));
		System.out.println(findElement(vect, (a,b) -> a < b));
		System.out.println("------");

		// alterando il vect
		System.out.println("Array.sort");
		Arrays.sort(vect);
		System.out.println(Arrays.toString(vect));
		System.out.println(vect[0]);
		System.out.println(vect[vect.length - 1]);
		System.out.println("------");

	}

	private static int minVect(int[] vect) {
		int min = vect[0];
		for (int i = 1; i < vect.length; i++) {
			if (min > vect[i]) {
				min = vect[i];
			}
		}
		return min;
	}

	private static int maxVect(int[] vect) {
		int max = vect[0];
		for (int i = 1; i < vect.length; i++) {
			if (max < vect[i]) {
				max = vect[i];
			}
		}
		return max;
	}
	
	// lambda interface
	private interface OrderRelation {
		
		public boolean relation(int a, int b);
		
	}
	
	private static int findElement(int[] vect, OrderRelation order) {
		int find = vect[0];
		for (int i = 1; i < vect.length; i++) {
			if (order.relation(find, vect[i])) {
				find = vect[i];
			}
		}
		return find;
	}

}
