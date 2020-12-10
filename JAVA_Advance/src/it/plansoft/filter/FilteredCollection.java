package it.plansoft.filter;

import java.util.LinkedList;
import java.util.List;

public class FilteredCollection {

	private List<Integer> values;
	
	private Filter filter;

	public FilteredCollection(Filter filter) {
		values = new LinkedList<>();
		this.filter = filter;
	}
	
	public void setFilter(Filter filter) {
		this.filter = filter;
	}

	public void add(int value) {
		if (filter.accept(value)) {
			values.add(value);
		}
	}

	public List<Integer> getResult() {
		return values;
	}
	
}
