package parte2;

import java.util.Scanner;

public class Esercizio2 {
	
	static Scanner userInput = new Scanner(System.in);

	public static void main(String[] args) {
		int losses = 0;
		int wins = 0;
		int restart = 1;
		while (restart == 1) {
			int guess = 0;
			int attempts = 0;
			int random = (int) (Math.random() * 50);
			System.out.println(random);
			while (true) {
				System.out.println("Tentativo numero " + (attempts++ + 1));
				System.out.print("Inserisci un numero compreso tra 0 e 50: ");
				if (userInput.hasNextInt()) {
					guess = userInput.nextInt();
					if (guess == random) {
						System.out.println("Hai indovinato!");
						System.out.println("Con un numero di tentativi pari a " + attempts);
						wins++;
						break;
					} else if (guess > random) {
						System.out.println("Troppo alto!");
					} else {
						System.out.println("Troppo basso!");
					}
					if (attempts >= 10) {
						System.out.println("Hai perso, hai fatto troppi tentativi!");
						losses++;
						break;
					} else {
						System.out.println("Ritenta...");
					}
				} else {
					System.out.println("Hai inserito: " + userInput.next());
					System.out.println("Devi inserire un numero!");
				}
			}
			while (true) {
				System.out.println("Vuoi giocare di nuovo? (1=si, 0=no)");
				if (userInput.hasNextInt()) {
					restart = userInput.nextInt();
					if (restart == 0 || restart == 1) {
						break;
					} else {
						System.out.println("Devi inserire 1 per dire si oppure 0 per dire no)");
					}
				}
			}
		}
		System.out.println("Hai giocato: " + (wins + losses));
		System.out.println("Hai vinto: " + wins);
		System.out.println("Hai perso: " + losses);
	}

}
