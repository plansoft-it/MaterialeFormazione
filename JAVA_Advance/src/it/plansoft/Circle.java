package it.plansoft;

public class Circle extends Shape{
	private int radius;
	
	public Circle(int radius) {
		this.radius = radius;
	}



	@Override
	public int getArea() {
		return (int) (Math.PI * radius * radius);
	}
	
	public int getSphereVolume() {
		return 0;
	}
}
