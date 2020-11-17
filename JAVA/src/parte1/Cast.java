package parte1;

public class Cast {

	public static void main(String[] args) {
		// cast double into integer
		double doubleValue = 1.23456789;
		int intValue = (int) doubleValue;
		System.out.println(intValue);

		// cast max double into integer
		double doubleValue2 = Double.MAX_VALUE;
		int intValue2 = (int) doubleValue2;
		System.out.println(doubleValue2);
		System.out.println(intValue2);
		
		// parse string into integer
		int stringToInt = Integer.parseInt("41") + 1;
		System.out.println(stringToInt);
		
		// transform integer into string
		String intToString = Integer.toString(41) + 1;
		System.out.println(intToString);
	}
}
