package parte1;

public class Condizioni {

	public static void main(String[] args) {
		boolean someCondition = true;

		System.out.println("La mia condizione è: " + someCondition);

		if (someCondition == true) {
			System.out.println("Superata");
		}

		if (someCondition) {
			System.out.println("Superata di nuovo");
		} else {
			System.out.println("Non verrò mai stampato");
		}

		someCondition = !someCondition;

		System.out.println("La mia condizione è: " + someCondition);

		if (someCondition) {
			System.out.println("Non verrò mai stampato");
		} else if (!someCondition) {
			System.out.println("Superata");
		}
		
		// operatori
		System.out.println("Operatori:");
		System.out.println("!true = " + !true);
		System.out.println("true & true = " + (true & true));
		System.out.println("true & false = " + (true & false));
		System.out.println("true && true = " + (true && true));
		System.out.println("true && false = " + (true && false));
		System.out.println("true | false = " + (true | true));
		System.out.println("false || false = " + (false || false));
		System.out.println("true ^ false = " + (true ^ false));
		System.out.println("true ^ true = " + (true ^ true));
	}

}
