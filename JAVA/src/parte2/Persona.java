package parte2;

public class Persona {

	public final String DESCRIPTION = "Questa è una persona";

	public String name;
	protected String surname;
	private int age;

	public Persona() {
		this.name = "";
		this.surname = "";
		this.age = 0;
	}

	public Persona(String name, String surname, int age) {
		this.name = name;
		this.surname = surname;
		this.age = age;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		// TODO Auto-generated method stub
		this.age = age;
	}

	@Override
	public String toString() {
		return "Persona{" + "name=\'" + this.getName() + "\', surname:\'" + this.getSurname() + "\',age=\'"
				+ this.getAge() + "\'}";
	}

	private String getSurname() {
		return this.surname;
	}

	private String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

}
