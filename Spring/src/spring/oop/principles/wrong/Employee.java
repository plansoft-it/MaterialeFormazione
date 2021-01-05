package spring.oop.principles.wrong;

public class Employee {
	
	private String name;
	private String surname;
	private boolean isPromotionAvailableThisYear;
	private int hoursThisYear;
	private int salary;
	
	public Employee (String name, String surname) {
		this.name = name;
		this.surname = surname;
		this.isPromotionAvailableThisYear = false;
		this.hoursThisYear = 0;
		this.salary = 0;
	}
	
	public void doThings() {
		calculateSalaryPay();
		calculatePromotionWithinYear();
		this.setName("Gianni");
		this.setSurname("Pallino");
		moreHoursDone(8);
		calculateSalaryPay();
	}

	private void moreHoursDone(int hours) {
		this.hoursThisYear += hours;
	}

	private void calculatePromotionWithinYear() {
		// if qualcosa allora qualcos altro altrimenti questo
		this.isPromotionAvailableThisYear = true;
	}

	private void calculateSalaryPay() {
		setSalary(getHoursThisYear() * 10);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public boolean isPromotionAvailableThisYear() {
		return isPromotionAvailableThisYear;
	}

	public void setPromotionAvailableThisYear(boolean isPromotionAvailableThisYear) {
		this.isPromotionAvailableThisYear = isPromotionAvailableThisYear;
	}

	public int getHoursThisYear() {
		return hoursThisYear;
	}

	public void setHoursThisYear(int hoursThisYear) {
		this.hoursThisYear = hoursThisYear;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

}
