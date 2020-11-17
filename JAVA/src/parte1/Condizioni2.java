package parte1;

public class Condizioni2 {

	public static void main(String[] args) {
		int a = 1, b = 2;

		if (a == b) {
			System.out.println("Non Superata");
		} else if (a != b) {
			System.out.println("1 Superata");
		} else {
			System.out.println("Ridondante");
		}

		if (a < b) {
			System.out.println("2 Superata");
		}

		if (a + 1 <= b) {
			System.out.println("3 Superata");
		}

		if (b > a) {
			System.out.println("4 Superata");
		}

		if (b - 1 >= a) {
			System.out.println("5 Superata");
		}

	}

}
