package parte2.esercizi;

public class FizzBuzz {

	public static void main(String[] args) {
		System.out.println("Fizz Buzz: 50");
		System.out.println(fizzBuzz(20));
	}

	private static String fizzBuzz(int max) {
		String result = "0,";
		for (int i = 1; i < max + 1; i++) {
			if (i % 15 == 0) {
				result += " FizzBuzz";
			} else if (i % 3 == 0) {
				result += " Fizz";
			} else if (i % 5 == 0) {
				result += " Buzz";
			} else {
				result += " " + i;
			}
			result += ",";

		}
		return result;
	}

}
