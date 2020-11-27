package parte3;

import java.util.EnumSet;

public class Enumerazioni {

	public static void main(String[] args) {
		
		for (TODO task : TODO.values()) {
			System.out.println(task.toString());
			System.out.println(task.getDescription());
			System.out.println(task.getImportance());
		}
		
		System.out.println("--------");
		
		for (TODO task : EnumSet.range(TODO.task2, TODO.task4)) {
			System.out.println(task.toString());
			System.out.println(task.getDescription());
			System.out.println(task.getImportance());
		}
		

	}

}
