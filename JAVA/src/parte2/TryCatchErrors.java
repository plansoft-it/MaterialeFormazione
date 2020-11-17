package parte2;

import java.util.Scanner;

public class TryCatchErrors {

	static Scanner userI = new Scanner(System.in);

	public static void main(String[] args) {
		// divideByZeroNoCatch(10);

		divideByZero(10);
		// per far vedere che gli errori terminano l'intero flusso eseguire anche con la
		// prima funzione

		// una volta spiegato il motivo per cui la prima funzione è bloccante allora
		// commentarla

		try {
			divideByZeroThrows(10);
		} catch (ArithmeticException e) {
			System.out.println("Errore!");
		}
	}

	private static void divideByZeroNoCatch(int i) {
		System.out.println(i / 0);
	}

	private static void divideByZero(int i) {
		try {
			System.out.println(i / 0);
		} catch (ArithmeticException e) {
			System.out.println("Messaggio dell'errore: " + e.getMessage());
			System.out.println("Tipologia dell'errore: " + e.toString());
		}
	}

	private static void divideByZeroThrows(int i) throws ArithmeticException {
		System.out.println(i / 0);
	}

}
