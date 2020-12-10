package it.plansoft;

public class Rectangle extends Shape {
	private int width;
	private int height;
	
	public Rectangle(int width, int height) {
		this.width = width;
		this.height = height;
	}



	@Override
	public int getArea() {
		return width * height;
	}
	
	@Override
	public String getName() {
		return "Rectangle";
	}
	
	public void grow(int amount) {
		
	}
}
