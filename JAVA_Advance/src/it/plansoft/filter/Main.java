package it.plansoft.filter;

public class Main {
	public static void main(String[] args) {
		FilteredCollection c1 = new FilteredCollection(new EvenFilter());

		
		c1.setFilter(new OddFilter());
		
		c1.setFilter(new Filter() {
			@Override
			public boolean accept(int value) {
				return value >= 0;
			}
		});
		
		c1.setFilter( value -> value >= 0);
	
		c1.setFilter(new AndFilter(new OddFilter(), new PositiveFilter()));

		c1.add(-5);
		c1.add(1);
		c1.add(2);
		c1.add(5);
		c1.add(10);

		

		System.out.println(c1.getResult());
	}
}
