package parte4.abstractfactory.orc;

import parte4.abstractfactory.kingdom.Castle;

public class OrcCastle implements Castle {

	static final String DESCRIPTION = "Orcish castle";

	@Override
	public String getDescription() {
		return DESCRIPTION;
	}

}
