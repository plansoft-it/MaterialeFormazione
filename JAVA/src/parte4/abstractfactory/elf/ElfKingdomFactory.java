package parte4.abstractfactory.elf;

import parte4.abstractfactory.kingdom.Army;
import parte4.abstractfactory.kingdom.Castle;
import parte4.abstractfactory.kingdom.King;
import parte4.abstractfactory.kingdom.KingdomFactory;

public class ElfKingdomFactory implements KingdomFactory {

	@Override
	public Castle createCastle() {
		return new ElfCastle();
	}

	@Override
	public King createKing() {
		return new ElfKing();
	}

	@Override
	public Army createArmy() {
		return new ElfArmy();
	}

}
