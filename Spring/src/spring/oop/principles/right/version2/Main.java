package spring.oop.principles.right.version2;

public class Main {

	public static void main(String[] args) {

		Company company = new Company(new TimeBank());

		company.addEmployee(new ClassicWorker("Gabriele", "Puliti", company));
		company.addEmployee(new Manager("Stefano", "Verdi", company));
		company.addEmployee(new Administrator("Giulia", "Rossi", company));

		for (Employee employee : company.getEmployees()) {
			printSummaryEmployee(employee, company.getTimeBank());
			System.out.println("-----------");
		}

		// ciclo di lavoro 1
		for (Employee employee : company.getEmployees()) {
			employee.doThings();
		}

		// ciclo di lavoro 2
		for (Employee employee : company.getEmployees()) {
			employee.doThings();
		}

		System.out.println("-----------");

		for (Employee employee : company.getEmployees()) {
			printSummaryEmployee(employee, company.getTimeBank());
			System.out.println("-----------");
		}

	}

	public static void printSummaryEmployee(Employee employee, TimeBank timeBank) {
		System.out.println("Dipendente: " + employee.getName() + employee.getSurname());
		System.out.println("Ore lavorate: " + timeBank.getHoursOfEmployee(employee));
		System.out.println("Stipendio guadagnato: " + employee.getCompany().getPayRollOfEmployee(employee).getSalary());
		System.out.println(
				"Promozioni guadagnate: " + employee.getCompany().getPayRollOfEmployee(employee).getPromotions());
	}

}
