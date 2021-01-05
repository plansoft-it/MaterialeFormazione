package spring.oop.principles.right;

import java.util.List;

public class Manager extends SuperEmployee<Boolean> {
	
	public Manager(Employee employee) {
		super(employee.getName(), employee.getSurname(), employee.getCompany());
	}
	
	public boolean isPromotionAvailableThisYear(Employee employee) {
		return this.getValue(employee);
	}

	public void setEmployee(List<Employee> employees, boolean promotion) {
		for (Employee employee : employees) {
			this.employees.put(employee, promotion);
		}
	}

	@Override
	public void doThings() {
		this.getCompany().getTimeBank().addHours(this, 12);
		this.employees.forEach( 
				(key, value) -> employees.put(key, !value)
		);
	}

}
