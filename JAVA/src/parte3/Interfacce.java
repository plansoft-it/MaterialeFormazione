package parte3;

import parte3.veicoli.Vehicle;
import parte3.veicoli.Car;
import parte3.veicoli.Scooter;

public class Interfacce {

	public static void main(String[] args) {
		Vehicle mioVeicolo = new Car(4, 120.4);
		
		System.out.println(mioVeicolo.getWheels());
		System.out.println(mioVeicolo.getSpeed());
		
		mioVeicolo = new Scooter(50);

		System.out.println(mioVeicolo.getWheels());
		System.out.println(mioVeicolo.getSpeed());
	}
	
}
