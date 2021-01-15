package spring.oop.principles.right.version1;

public class Main {

	public static void main(String[] args) {
		Company company = new Company();
		company.setTimeBank(new TimeBank());
		company.addEmployee(new Employee("Gabriele", "Puliti", company));
		company.addEmployee(new Manager("Loredana", "Justina", company));
		company.addEmployee(new Administrator("Gianna", "Franceschi", company));
		company.setAdministrator(company.getEmployees().get(2));
		company.setManager(company.getEmployees().get(1));
		company.getManager().setEmployee(company.getEmployees(), false);
		
		company.getEmployeeStatus();
		company.letEmployeeWork();
		company.getEmployeeStatus();
	}

}
