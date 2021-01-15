package spring.oop.principles.right.version1;

import java.util.HashMap;
import java.util.Map;

public class TimeBank {
	
	private Map<Employee, Integer> employeesHours;
	private Map<Employee, Integer> employeesSalary;
	
	public TimeBank() {
		this.employeesHours = new HashMap<>();
		this.employeesSalary = new HashMap<>();
	}

	public void addHours(Employee employee, int hours) {
		employeesHours.put(employee, employeesHours.get(employee) + hours);
	}
	
	public int getHoursOfEmployee(Employee employee) {
		return employeesHours.get(employee);
	}
	
	public void addEmployee(Employee employee) {
		employeesHours.put(employee, 0);
		employeesSalary.put(employee, 0);
	}
	
	public void addEmployeeSalary(Employee employee, Integer salary) {
		employeesSalary.put(employee, salary);
	}

	public int getSalaryOfEmployee(Employee employee) {
		return employeesSalary.get(employee);
	}
	
}
