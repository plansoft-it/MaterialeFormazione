package parte3;

import parte3.animali.Animali;
import parte3.animali.Umani;

public class Ereditarieta {

	public static void main(String[] args) {
		Animali animale = new Animali();

		System.out.println(animale.getNome());
		System.out.println(animale.walk());

		animale = new Umani("Gabriele", 3.3);

		System.out.println(animale.getNome());
		//System.out.println(animale.getAltezza());
		System.out.println(animale.walk());
		// Polimorfismo
		System.out.println(((Umani)animale).getAltezza());
		// Qualcuno mi sa spiegare perchè il cast sopra funziona?
		
		if (animale instanceof Umani) {
			System.out.println("Animale è Umano");
		} else {
			System.out.println("Animale NON è Umano");
		}
		
	}

}
