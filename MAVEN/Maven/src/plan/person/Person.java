package plan.person;

import lombok.Getter;
import lombok.Setter;

public class Person {
	
	@Getter @Setter String name;
	@Setter String surname;
	
	public Person(String name, String surname) {
		this.setName(name);
		this.setSurname(name);
	}

}
