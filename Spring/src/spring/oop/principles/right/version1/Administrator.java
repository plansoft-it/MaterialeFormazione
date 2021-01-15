package spring.oop.principles.right.version1;

public class Administrator extends Employee {
	
	public Administrator(String name, String surname, Company company) {
		super(name, surname, company);
	}

	public int getSalary(Employee employee) {
		return this.getCompany().getTimeBank().getSalaryOfEmployee(employee);
	}

	@Override
	public void doThings() {
		TimeBank timeBank = this.getCompany().getTimeBank();
		timeBank.addHours(this, 6);
		this.getCompany().getEmployees().forEach(
				(key) -> {
					int hours = timeBank.getHoursOfEmployee(key);
					timeBank.addEmployeeSalary(key, hours * 10);
				}
		);
	}

}
