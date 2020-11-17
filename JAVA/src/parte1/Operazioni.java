package parte1;

public class Operazioni {

	public static void main(String[] args) {

		int a = 10;

		System.out.println(a + 2);
		System.out.println(a - 2);
		System.out.println(a / 2);
		System.out.println(a * 2);
		System.out.println(a % 2);

		double b = 2.2;

		System.out.println(a + b);
		System.out.println(a - b);
		System.out.println(a / b);
		System.out.println(a * b);
		System.out.println(a % b);

		// per assegnare il valore di queste ultime operazioni ad una variabile, di che
		// tipo deve essere?

		int c = 21;

		c += 2;
		c -= 2;
		c *= 2;
		c /= 2;
		c %= 2;
		c++;
		c--;
		
		System.out.println(c);
		
		// precedenza tra gli operatori
		System.out.println(100 + 50 - 25 * 4 / 5 % 3);
		
		// selezione multipla
		// 1) 100
		// 2) 102
		// 3) 148
		// 4) 150
	}
}
