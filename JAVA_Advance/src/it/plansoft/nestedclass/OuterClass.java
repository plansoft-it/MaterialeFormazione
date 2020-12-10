package it.plansoft.nestedclass;

public class OuterClass {
	
	public class InnerClass {
		
		public void method() {
			doSomething();
			System.out.println(value);
		}
	}
	
	
	
	public OuterClass(int value) {
		super();
		this.value = value;
	}

	private int value;
	
	public static void doSomething() {
	}
	
	public void nonStaticMethod() {
		InnerClass i = new InnerClass();
		i.method();
	}
	
	public InnerClass getInnerClassInstance() {
		return new InnerClass();
	}

}
