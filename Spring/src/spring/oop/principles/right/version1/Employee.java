package spring.oop.principles.right.version1;

public class Employee implements Person {
	
	private String name;
	private String surname;
	private Company company;
	
	public Employee (String name, String surname, Company company) {
		this.name = name;
		this.surname = surname;
		this.company = company;
	}
	
	public void doThings() {
		this.setName("Gianni");
		this.setSurname("Pallino");
		this.company.getTimeBank().addHours(this, 8);
	}
	
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	@Override
	public String getName() {
		return name;
	}

	@Override
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String getSurname() {
		return surname;
	}

	@Override
	public void setSurname(String surname) {
		this.surname = surname;
	}

}
