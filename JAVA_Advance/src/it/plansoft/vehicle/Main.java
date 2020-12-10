package it.plansoft.vehicle;

public class Main {
	public static void main(String[] args) {
		
		
		NonEngineVehicle nev = new NonEngineVehicle();
		EngineVehicle ev = new EngineVehicle();
		printData(nev);
		printData(ev);
		
		
	}
	
	private static void printData( Vehicle v ) {
		System.out.println(v.getBrand());
		System.out.println(v.getWheelCount());
	}
}
