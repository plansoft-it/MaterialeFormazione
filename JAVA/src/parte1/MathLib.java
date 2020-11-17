package parte1;

import java.util.Scanner;

public class MathLib {

	static Scanner userInput = new Scanner(System.in);

	public static void main(String[] args) {

		System.out.println("DISTANZA TRA DUE NUMERI!");
		System.out.print("Inserisci primo numero: ");

		if (userInput.hasNextInt()) {
			int firstNumber = userInput.nextInt();

			System.out.println("Il tuo primo numero è: " + firstNumber);
			System.out.print("Inserisci il secondo numero:");

			if (userInput.hasNextInt()) {
				int secondNumber = userInput.nextInt();

				System.out.println("Il tuo secondo numero è: " + secondNumber);

				int distance = Math.abs(firstNumber - secondNumber);

				System.out.println("La distanza tra i 2 numeri è: " + distance);

				System.out.println("Oltre alla distanza posso anche dividere i 2 numeri!");
				
				double division = (double) firstNumber / secondNumber;
				
				System.out.println(division);
				System.out.println((int)division);
				System.out.println(Math.floor(division)); // difetto
				System.out.println(Math.ceil(division));  // eccesso
				System.out.println(Math.round(division)); // matematico
				// 13 8

			} else {
				System.out.println("Devi inserire un numero!");
			}
		} else {
			System.out.println("Devi inserire un numero!");
		}
		
	}

}
