package parte3.veicoli;

public class Car implements Vehicle {

	private int wheels = 4;
	private double speed = 0;

	public Car() {
	}

	public Car(int wheels, double speed) {
		setWheels(wheels);
		setSpeed(speed);
	}

	@Override
	public int getWheels() {
		return this.wheels;
	}

	@Override
	public void setWheels(int wheels) {
		this.wheels = wheels;
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
