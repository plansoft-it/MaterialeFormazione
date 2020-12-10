package it.plansoft.filter;

public class AndFilter implements Filter{
	private Filter filter1;
	private Filter filter2;

	public AndFilter(Filter filter1, Filter filter2) {
		this.filter1 = filter1;
		this.filter2 = filter2;
	}
	
	@Override
	public boolean accept(int value) {
		return filter1.accept(value) && filter2.accept(value);
	}
	
}
