package parte2;

public class Classi {
	
	public static void main(String[] args) {
		Persona person = new Persona();
		
		person.name = "Gabriele";
		System.out.println(person.name);
		person.surname = "Puliti";
		System.out.println(person.surname);
		// person.age = 1;
		// System.out.println(person.age);
		// Spiegare come mai non è possibile accedere a age
		System.out.println("-----");
		
		Persona person1 = new Persona("Gabriele", "Puliti", 28);
		
		System.out.println("Nome: " + person1.name);
		System.out.println("Cognome: " + person1.surname);
		System.out.println("Eta': " + person1.getAge());
		System.out.println("-----");
		
		Persona person2 = new Persona();
		person2.setAge(28);
		person2.setName("Gab");
		person2.setSurname("Pul");
		System.out.println(person2.toString());
		//Far vedere il to string senza fare l'override
		
	}

}
