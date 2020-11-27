package parte3;

public class Statico {
	
	public static void main(String[] args) {
		ClasseStatica stat = new ClasseStatica();
		
		System.out.println(stat.saluto);
		System.out.println(stat.restituisciSaluto());
		System.out.println(ClasseStatica.altroSaluto);
		System.out.println(ClasseStatica.restituisciAltroSaluto());
		System.out.println(ClasseStatica.numeroDiSaluti);

		ClasseStatica stat2 = new ClasseStatica();
		System.out.println(stat2.restituisciSaluto());
		System.out.println(ClasseStatica.numeroDiSaluti);
		System.out.println(ClasseStatica.restituisciAltroSaluto());
		System.out.println(ClasseStatica.numeroDiSaluti);
	}

}
