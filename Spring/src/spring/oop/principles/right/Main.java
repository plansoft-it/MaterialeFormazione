package spring.oop.principles.right;

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
		
		for (Employee employee : company.getEmployees()) {
			System.out.println("Dipendente: " + employee.getName() + employee.getSurname());
			System.out.println("Salario: " + company.getAdministrator().getSalary(employee));
			System.out.println("Promozione: " + company.getManager().isPromotionAvailableThisYear(employee));
			System.out.println("");
		}
		
		for (Employee employee : company.getEmployees()) {
			employee.doThings();
		}
		
		for (Employee employee : company.getEmployees()) {
			System.out.println("Dipendente: " + employee.getName() + employee.getSurname());
			System.out.println("Salario: " + company.getAdministrator().getSalary(employee));
			System.out.println("Promozione: " + company.getManager().isPromotionAvailableThisYear(employee));
			System.out.println("");
		}
	}

}
