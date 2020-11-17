package parte1;

import java.util.Scanner;

public class Esercizio1 {

	static Scanner userInput = new Scanner(System.in);

	public static void main(String[] args) {

		System.out.print("Inserisci primo numero: ");

		if (userInput.hasNextInt()) {
			int firstNumber = userInput.nextInt();
			System.out.println("Il tuo primo numero è: " + firstNumber);

			System.out.print("Inserisci secondo numero: ");
			if (userInput.hasNextInt()) {
				int secondNumber = userInput.nextInt();
				System.out.println("Il tuo secondo numero è: " + secondNumber);

				System.out.println("Il massimo tra i 2: " + Math.max(firstNumber, secondNumber));
				System.out.println("Il minimo tra i 2: " + Math.min(firstNumber, secondNumber));
				
				int random = (int) (Math.random() * 10);

				if (random > 5) {
					System.out.println("Maggiore di 5: " + random);
				} else if (random < 5) {
					System.out.println("Minore di 5: " + random);
				}

				if ((firstNumber % random + secondNumber % random) != 0) {
					System.out.println("Il quadrato del random: " + Math.pow(random, 2));
				}				
			} else {
				System.out.println("Deve essere un numero intero!");
			}
		} else {
			System.out.println("Deve essere un numero intero!");
		}

	}

}
