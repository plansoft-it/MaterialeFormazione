package spring.oop.principles.right.version2;

public class ClassicWorker extends Employee {

	public ClassicWorker(String name, String surname, Company company) {
		super(name, surname, company);
	}

	@Override
	public void doThings() {
		// lavora 8 ore
		this.getCompany().getTimeBank().addHoursToEmployee(this, 8);
	}

}
