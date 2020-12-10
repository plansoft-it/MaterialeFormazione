package it.plansoft.fragile;

public class SizedArray extends Array{
	private int size;
	
	public int getSize() {
		return size;
	}
	
	@Override
	public void add(Object o) {
		super.add(o);
		size++;
	}
	
	@Override
	public void addAll(Object[] values) {
		super.addAll(values);
		size += values.length;
	}
}
