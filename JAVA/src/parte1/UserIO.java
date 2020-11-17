package parte1;

import java.util.Scanner;

public class UserIO {

	static Scanner userInput = new Scanner(System.in);

	public static void main(String[] args) {
		
		System.out.println("DISTANZA TRA DUE NUMERI!");
		System.out.print("Inserisci primo numero: ");
		
		int firstNumber = userInput.nextInt();
		
		System.out.println("Il tuo primo numero è: " + firstNumber);
		System.out.print("Inserisci il secondo numero:");
		
		int secondNumber = userInput.nextInt();

		System.out.println("Il tuo secondo numero è: " + secondNumber);
		
		int distance = 0;

		if (firstNumber > secondNumber) {
			distance = firstNumber - secondNumber;
		} else {
			distance = secondNumber - firstNumber;
		}
		
		System.out.println("La distanza tra i 2 numeri è: " + distance);
		// quali sono i problemi che potrebbero accadere?
		// controllare l'input con hasNextInt()
	}

}
