package parte4.abstractfactory.orc;

import parte4.abstractfactory.kingdom.Army;
import parte4.abstractfactory.kingdom.Castle;
import parte4.abstractfactory.kingdom.King;
import parte4.abstractfactory.kingdom.KingdomFactory;

public class OrcKingdomFactory implements KingdomFactory {

	@Override
	public Castle createCastle() {
		return new OrcCastle();
	}

	@Override
	public King createKing() {
		return new OrcKing();
	}

	@Override
	public Army createArmy() {
		return new OrcArmy();
	}

}
