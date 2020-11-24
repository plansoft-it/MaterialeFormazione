package parte3;

import java.util.LinkedList;

public class Liste {
	
	public static void main(String[] args) {
		
		LinkedList linkList1 = new LinkedList();
		
		LinkedList<String> nomi = new LinkedList<String>();
		
		nomi.add("Gabriele");
		nomi.add("Giacomo");
		nomi.add("Franco");
		
		for (String nome : nomi) {
			System.out.println(nome);
		}
		
		System.out.println("------");

		nomi.add(1, "Nuovo nome");

		for (String nome : nomi) {
			System.out.println(nome);
		}

		System.out.println("------");

		nomi.remove(2);

		for (String nome : nomi) {
			System.out.println(nome);
		}
		
		System.out.println("------");

		System.out.println("Il nome in posizione 1 è " + nomi.get(1));

		System.out.println("------");

		LinkedList<String> nuoviNomi = new LinkedList<String>(nomi);

		System.out.println(nuoviNomi);
		
		if (nuoviNomi.contains("Gabriele")) {
			System.out.println("Nuovi Nomi contiene Gabriele");
		}
		
		nuoviNomi.remove("Gabriele");
		if (nuoviNomi.contains("Gabriele")) {
			System.out.println("Nuovi Nomi contiene Gabriele");
		} else {
			System.out.println("Non contiene più Gabriele");
		}
		
		System.out.println(nuoviNomi.size());
		System.out.println(nuoviNomi.poll());
		System.out.println(nuoviNomi.pollLast());
		System.out.println(nuoviNomi.poll());
		System.out.println(nuoviNomi.size());

		System.out.println();
		nuoviNomi.push("Leonardo");
		nuoviNomi.push("Maria");
		nuoviNomi.push("Lorenzo");
		System.out.println(nuoviNomi.size());
	}

}
