package spring.oop.principles.right.version1;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Manager extends Employee{

	protected Map<Employee, Boolean> employees;
	
	public Manager(String name, String surname, Company company) {
		super(name, surname, company);
		this.employees = new HashMap<>();
	}
	
	public void addEmployee(Employee employee, Boolean value) {
		employees.put(employee, value);
	}
	
	public boolean getValue(Employee employee) {
		return employees.get(employee);
	}

	public void setEmployee(List<Employee> employees, boolean promotion) {
		for (Employee employee : employees) {
			this.employees.put(employee, promotion);
		}
	}

	public boolean isPromotionAvailableThisYear(Employee employee) {
		return this.getValue(employee);
	}


	@Override
	public void doThings() {
		this.getCompany().getTimeBank().addHours(this, 12);
		this.employees.forEach( 
				(key, value) -> employees.put(key, !value)
		);
	}

}
