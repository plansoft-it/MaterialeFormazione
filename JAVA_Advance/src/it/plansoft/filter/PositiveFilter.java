package it.plansoft.filter;

public class PositiveFilter implements Filter {
	@Override
	public boolean accept(int value) {
		return value >= 0;
	}
}
