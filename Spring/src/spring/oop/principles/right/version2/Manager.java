package spring.oop.principles.right.version2;

public class Manager extends Employee {

	public Manager(String name, String surname, Company company) {
		super(name, surname, company);
	}

	@Override
	public void doThings() {
		TimeBank timeBank = this.getCompany().getTimeBank();
		timeBank.addHoursToEmployee(this, 6);
		for (Employee employee : this.getCompany().getEmployees()) {
			if (calculatePromotionOfEmployee(employee)) {
				PayRoll payRoll = this.getCompany().getPayRollOfEmployee(employee);
				payRoll.promote();
			}
		}
	}

	public boolean calculatePromotionOfEmployee(Employee employee) {
		return this.getCompany().getTimeBank().getHoursOfEmployee(employee) >= 10;
	}

}
