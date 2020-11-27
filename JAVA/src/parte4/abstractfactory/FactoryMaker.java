package parte4.abstractfactory;

import parte4.abstractfactory.kingdom.KingdomFactory;
import parte4.abstractfactory.orc.OrcKingdomFactory;
import parte4.abstractfactory.elf.ElfKingdomFactory;

public class FactoryMaker {

	public enum KingdomType {
		ELF, ORC
	}

	public static KingdomFactory makeKingdomFactory(KingdomType type) {
		switch (type) {
		case ELF:
			return new ElfKingdomFactory();
		case ORC:
			return new OrcKingdomFactory();
		default:
			throw new IllegalArgumentException("KingdomType not supported.");
		}
	}
}
