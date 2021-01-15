package spring.oop.principles.right.version2;

public class PayRoll {

	private int salary;
	private int promotions;

	public PayRoll() {
		this.salary = 0;
		this.promotions = 0;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getPromotions() {
		return promotions;
	}

	public void promote() {
		this.promotions += 1;
	}

}
