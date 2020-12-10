package it.plansoft.nestedclass;

public class Main {
	public static void main(String[] args) {


		Sizeable s = new List();
		print(s);
		
		class SimpleSizeable implements Sizeable{
			@Override
			public int getSize() {
				return 10;
			}
		}
		
		Sizeable s2 = new SimpleSizeable();
		
		Sizeable s3 = new Sizeable() {
			@Override
			public int getSize() {
				return 10;
			}
		};
		
		Sizeable s4 = () -> 10;
		
		print(s2);
		print(s3);
		print(s4);
		
	}
	
	private static void print(Sizeable s) {
		System.out.println(s.getSize());
	}
}
