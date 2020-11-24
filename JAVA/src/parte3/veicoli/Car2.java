package parte3.veicoli;

public class Car2 extends Crashable implements Vehicle {

	private int wheels = 4;
	private double speed = 0;
	private int carStrength;

	public Car2() {
	}

	public Car2(int wheels, double speed) {
		setWheels(wheels);
		setSpeed(speed);
	}

	public Car2(int wheels, double speed, int carStrength) {
		setWheels(wheels);
		setSpeed(speed);
		setDrivableStrength(carStrength);
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

	@Override
	public void setDrivableStrength(int carStrength) {
		this.carStrength = carStrength;
	}

	@Override
	public int getDrivableStrength() {
		return this.carStrength;
	}

}
