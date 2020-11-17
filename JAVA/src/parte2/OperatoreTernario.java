package parte2;

import java.util.Scanner;

public class OperatoreTernario {

	static Scanner userInput = new Scanner(System.in);

	public static void main(String[] args) {
		int a = (Math.random() < 0.5) ? 0 : 1;

		System.out.println(a);

		System.out.println("Limite " + ((a == 1) ? "superiore" : "inferiore"));
	}

}
