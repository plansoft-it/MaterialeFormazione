package spring.oop.principles.wrong;

public class Main {

	public static void main(String[] args) {
		Employee employee = new Employee("Gabriele", "Puliti");
		System.out.println("Dipendente: " + employee.getName() + employee.getSurname());
		System.out.println("Promozione: " + employee.isPromotionAvailableThisYear());
		System.out.println("Salario: " + employee.getSalary());
		employee.doThings();
		System.out.println("Dipendente: " + employee.getName() + employee.getSurname());
		System.out.println("Promozione: " + employee.isPromotionAvailableThisYear());
		System.out.println("Salario: " + employee.getSalary());
	}

}
