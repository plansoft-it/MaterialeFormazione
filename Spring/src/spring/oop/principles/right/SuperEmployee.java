package spring.oop.principles.right;

import java.util.HashMap;
import java.util.Map;

public abstract class SuperEmployee<T> extends Employee {

	protected Map<Employee, T> employees;

	public SuperEmployee(String name, String surname, Company company) {
		super(name, surname, company);
		this.employees = new HashMap<>();
	}

	public void addEmployee(Employee employee, T value) {
		employees.put(employee, value);
	}
	
	public T getValue(Employee employee) {
		return employees.get(employee);
	}
	
}