package it.plansoft.fragile;

public class Main {
	public static void main(String[] args) {
		SizedArray a = new SizedArray();
		a.addAll(new String[] {"a", "b", "c"});
		
		System.out.println(a.getSize());
	}
}
