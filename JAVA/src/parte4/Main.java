package parte4;

import parte4.abstractfactory.FactoryMaker;
import parte4.abstractfactory.FactoryMaker.KingdomType;
import parte4.abstractfactory.kingdom.Army;
import parte4.abstractfactory.kingdom.Castle;
import parte4.abstractfactory.kingdom.King;
import parte4.abstractfactory.kingdom.KingdomFactory;
import parte4.abstractfactory.orc.OrcKingdomFactory;
import parte4.decorator.BasePizza;
import parte4.decorator.Bufala;
import parte4.decorator.Margherita;
import parte4.decorator.Napoli;
import parte4.decorator.Pizza;
import parte4.decorator.Prosciutto;

public class Main {

	public static void main(String[] args) {
		// decorator
		BasePizza laMiaPizza = new Pizza();

		System.out.println(laMiaPizza.getIngredients());

		laMiaPizza = new Margherita();

		System.out.println(laMiaPizza.getIngredients());

		laMiaPizza = new Bufala(laMiaPizza);

		System.out.println(laMiaPizza.getIngredients());

		laMiaPizza = new Prosciutto(laMiaPizza);

		System.out.println(laMiaPizza.getIngredients());

		laMiaPizza = new Bufala(new Prosciutto(new Napoli()));

		System.out.println(laMiaPizza.getIngredients());
		
		// abstract
		KingdomFactory factory = FactoryMaker.makeKingdomFactory(KingdomType.ELF);

		Castle castle = factory.createCastle();
		King king = factory.createKing();
		Army army = factory.createArmy();
		
		factory = FactoryMaker.makeKingdomFactory(KingdomType.ORC);
		Castle castleOrc = factory.createCastle();
		King kingOrc = factory.createKing();
		Army armyOrc = factory.createArmy();

		System.out.println(castle.getDescription());
		System.out.println(king.getDescription());
		System.out.println(army.getDescription());

		System.out.println(castleOrc.getDescription());
		System.out.println(kingOrc.getDescription());
		System.out.println(armyOrc.getDescription());
	}

}
