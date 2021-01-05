package spring.oop.principles.right;

public class Administrator extends Employee {
	
	public Administrator(Employee employee) {
		super(employee.getName(), employee.getSurname(), employee.getCompany());
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
