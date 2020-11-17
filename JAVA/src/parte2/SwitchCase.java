package parte2;

import java.util.Scanner;

public class SwitchCase {

	static Scanner userInput = new Scanner(System.in);
	
	public static void main(String[] args) {
		System.out.println("Cosa vuoi dirmi?");
		switch (userInput.next()) {
		case "Ciao":
			System.out.println("Ciao a te");
			break;
		case "Hello":
		case "Hi":
			System.out.println("Hi");
			break;
		default:
			System.out.println("Non so cosa mi stai dicendo");
			break;
		}
	}

}
