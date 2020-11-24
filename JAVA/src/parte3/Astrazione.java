package parte3;

import parte3.veicoli.Car2;
import parte3.veicoli.Crashable;
import parte3.veicoli.Vehicle;

public class Astrazione {
	
	public static void main(String[] args) {
		Vehicle car = new Car2(6, 200, 20);;
		
		System.out.println(car.getWheels());
		System.out.println(car.getSpeed());
		System.out.println(((Car2)car).getDrivableStrength());
		System.out.println(((Crashable)car).canBeUse());
		
		((Car2)car).crash();
		
		System.out.println(((Crashable)car).canBeUse());
		// Come risolvere questo problema di dover implicitamente fare il cast?
		
		Crashable car2 = new Car2();
		
	}

}
