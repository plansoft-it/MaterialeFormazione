package parte2;

public class Methods {
	
	static String hello = "Hello";
	
	public static void main(String[] args) {
		printHello();
		System.out.println("-------");
		// Quale hello stampa?
		System.out.println(hello);
		System.out.println("-------");
		// Quale hello stampa?
		printHello("Hola");
		System.out.println("-------");
		// output?
		printHello(hello);
		System.out.println("-------");
		// output?
		int a = 10;
		printHello(String.valueOf(sum10(a)));
		System.out.println(a);
		System.out.println("-------");
		// output del secondo sysout?
		a = sum10(a);
		System.out.println(a);
		System.out.println("-------");
		// output?
		// passa il valore non l'oggetto o l'elemento stesso
	}

	private static int sum10(int a) {
		a += 10;
		return a;
	}

	// modificatori di accesso: private, public, protected
	private static void printHello() {
		String hello = "Ciao";
		System.out.println(hello);
	}

	// passaggio di parametri
	private static void printHello(String hello) {
		System.out.println(hello);
	}
}
