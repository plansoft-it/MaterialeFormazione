package spring.oop.principles.right.version2;

public class Administrator extends Employee {

	public Administrator(String name, String surname, Company company) {
		super(name, surname, company);
	}

	@Override
	public void doThings() {
		TimeBank timeBank = this.getCompany().getTimeBank();
		timeBank.addHoursToEmployee(this, 4);
		for (Employee employee : this.getCompany().getEmployees()) {
			if (timeBank.getHoursOfEmployee(employee) > 0) {
				PayRoll payRoll = this.getCompany().getPayRollOfEmployee(employee);
				payRoll.setSalary(calculateSalaryOfEmployee(employee, payRoll));
			}
		}
	}

	public int calculateSalaryOfEmployee(Employee employee, PayRoll payRoll) {
		return this.getCompany().getTimeBank().getHoursOfEmployee(employee) * (10 + payRoll.getPromotions());
	}

}
