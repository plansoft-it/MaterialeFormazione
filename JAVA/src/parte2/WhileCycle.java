package parte2;

public class WhileCycle {

	public static void main(String[] args) {
		int i = 0;
		while (i < 10) {
			System.out.println(i++);
		}

		System.out.println("-------");

		while (i > 0) {
			if (i-- % 2 != 0) {
				continue;
			}
			System.out.println(i);
		}
		// cosa stamperà questo ciclo?

		System.out.println("-------");

		while (true) {
			if (i > 30) {
				System.out.println(i);
				break;
			}
			i += Math.pow(i, i);
		}
		// questo ciclo si fermerà?

		System.out.println("-------");

		do {
			System.out.println(i);
		} while (i < 10);

		System.out.println("-------");

		do {
			i /= Math.sqrt(i++);
			System.out.println(i);
		} while (i > 10);

		System.out.println("-------");

		// for cycle
		for (i = 0; i < 10; i++) {
			System.out.println(i);
		}

		for (; i >= 0; --i) {
			System.out.println(i);
		}
		// Quale sarà l'output?

	}

}
