package spring.oop.principles.right.version2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Company {

	List<Employee> employees;
	TimeBank timeBank;
	Map<Employee, PayRoll> employeeSalary;

	public Company(TimeBank timeBank) {
		this.employees = new ArrayList<>();
		this.timeBank = timeBank;
		this.employeeSalary = new HashMap<>();
	}

	public void addEmployee(Employee employee) {
		this.employees.add(employee);
		this.employeeSalary.put(employee, new PayRoll());
	}

	public List<Employee> getEmployees() {
		return employees;
	}

	public TimeBank getTimeBank() {
		return timeBank;
	}

	public PayRoll getPayRollOfEmployee(Employee employee) {
		return employeeSalary.get(employee);
	}

}
