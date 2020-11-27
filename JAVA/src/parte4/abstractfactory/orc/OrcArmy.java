package parte4.abstractfactory.orc;

import parte4.abstractfactory.kingdom.Army;

public class OrcArmy implements Army {
	
	static final String DESCRIPTION = "Orcish army";

	@Override
	public String getDescription() {
		return DESCRIPTION;
	}
	

}
