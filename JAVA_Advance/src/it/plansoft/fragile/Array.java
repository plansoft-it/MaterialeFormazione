package it.plansoft.fragile;

public class Array {
	
	public void add( Object o ) {
		//impl: aggiungo l'oggetto ad un array interno
	}
	
	public void addAll( Object[] values ) {
		for( Object o : values ) {
			add(o);
		}
	}
	
}
