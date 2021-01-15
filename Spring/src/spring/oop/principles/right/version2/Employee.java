package spring.oop.principles.right.version2;

public abstract class Employee extends Person {

	private Company company;

	public Employee(String name, String surname, Company company) {
		super(name, surname);
		this.company = company;
	}

	public abstract void doThings();

	public Company getCompany() {
		return company;
	}

}
