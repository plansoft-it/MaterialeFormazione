package it.plansoft;

public class Set implements Sizeable, FillRatioProvider {
	
	@Override
	public int getSize() {
		return 20;
	}
	
	@Override
	public double getFillRatio() {
		return 20.;
	}
}
