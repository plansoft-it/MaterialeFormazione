package spring.oop.principles.right.version2;

import java.util.HashMap;
import java.util.Map;

public class TimeBank {

	private Map<Employee, Integer> bank;

	public TimeBank() {
		this.bank = new HashMap<Employee, Integer>();
	}

	public void addHoursToEmployee(Employee employee, Integer hours) {
		int currentHours = this.getHoursOfEmployee(employee);
		bank.put(employee, currentHours + hours);
	}

	public int getHoursOfEmployee(Employee employee) {
		try {
			return bank.get(employee);
		} catch (NullPointerException e) {
			return 0;
		}
	}

}
