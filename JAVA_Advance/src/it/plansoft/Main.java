package it.plansoft;

public class Main {
	
	public static void main(String[] args) {
		Sizeable l = new List();
		Set s = new Set();
		Map m = new Map();
		
		
		printSize(l);
		printSize(s);
		printFillRatio(s);
		printFillRatio(m);
		
	}
	
	private static void printSize( Sizeable s ) {
		System.out.println(s.getSize());
	}
	
	private static void printFillRatio( FillRatioProvider p ) {
		System.out.println(p.getFillRatio());
	}
	
	
	
	
}
