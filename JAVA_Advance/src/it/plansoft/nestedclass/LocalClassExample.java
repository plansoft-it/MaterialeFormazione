package it.plansoft.nestedclass;

public class LocalClassExample {
	
	private String name;
	
	public void doSomething() {
		int localVariable = 10;
		
		class InnerClass {
			private int value;
			
			public InnerClass(int value) {
				this.value = value;
			}
			
			public void aMethod() {
				name = "Hello";
				System.out.println(localVariable);
			}
		}
		
		InnerClass i = new InnerClass(10);
		
		i.aMethod();
		
	}
	
}
