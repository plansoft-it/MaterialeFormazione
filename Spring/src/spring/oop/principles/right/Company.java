package spring.oop.principles.right;

import java.util.LinkedList;
import java.util.List;

public class Company {
	
	Employee administrator;
	Employee manager;
	List<Employee> employees;
	TimeBank timeBank;
	
	public Company() {
		 this.employees = new LinkedList<Employee>();
	}

	public Administrator getAdministrator() {
		return (Administrator)administrator;
	}

	public void setAdministrator(Employee administrator) {
		this.administrator = administrator;
	}

	public Manager getManager() {
		return (Manager)manager;
	}

	public void setManager(Employee manager) {
		this.manager = manager;
	}

	public TimeBank getTimeBank() {
		return timeBank;
	}

	public void setTimeBank(TimeBank timeBank) {
		this.timeBank = timeBank;
	}

	public List<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}

	public void addEmployee(Employee employee) {
		this.employees.add(employee);
		this.timeBank.addEmployee(employee);
	}
	
	public void letEmployeeWork() {
		for (Employee employee : getEmployees()) {
			employee.doThings();
		}	
	}
	
	public void getEmployeeStatus() {
		for (Employee employee : getEmployees()) {
			System.out.println("Dipendente: " + employee.getName() + employee.getSurname());
			System.out.println("Salario: " + getAdministrator().getSalary(employee));
			System.out.println("Promozione: " + getManager().isPromotionAvailableThisYear(employee));
			System.out.println("");
		}
	}
	
}
