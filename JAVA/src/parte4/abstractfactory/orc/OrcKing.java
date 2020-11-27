package parte4.abstractfactory.orc;

import parte4.abstractfactory.kingdom.King;

public class OrcKing implements King {
	
	static final String DESCRIPTION = "Orcish king";

	@Override
	public String getDescription() {
		return DESCRIPTION;
	}

}
