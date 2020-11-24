package parte3.veicoli;

public class Scooter implements Vehicle {
	
	private final int wheels = 2;
	private double speed;
	
	public Scooter(double speed) {
		setWheels(wheels);
		setSpeed(speed);
	}

	@Override
	public int getWheels() {
		return this.wheels;
	}

	@Override
	public void setWheels(int wheels) {
	}

	@Override
	public double getSpeed() {
		return this.speed;
	}

	@Override
	public void setSpeed(double speed) {
		this.speed = speed;
	}

}
