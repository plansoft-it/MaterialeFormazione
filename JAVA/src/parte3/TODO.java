package parte3;

public enum TODO {
	
	task1("Task importante", 3),
	task2("Task medio", 2),
	task3("Task non importante", 1),
	task4("Task altro", 3),
	task5("Ciao", 2),
	task6("Ultimo task", 1);
	
	private final String description;
	private final int importance;
	
	TODO (String description, int importance) {
		this.description = description;
		this.importance = importance;
	}

	public String getDescription() {
		return description;
	}

	public int getImportance() {
		return importance;
	}
	

	
}
