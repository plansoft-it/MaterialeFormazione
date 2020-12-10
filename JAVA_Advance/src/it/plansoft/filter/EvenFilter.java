package it.plansoft.filter;

public class EvenFilter implements Filter{
	@Override
	public boolean accept(int value) {
		return value % 2 == 0;
	}
}
