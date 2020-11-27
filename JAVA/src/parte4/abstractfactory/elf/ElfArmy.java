package parte4.abstractfactory.elf;

import parte4.abstractfactory.kingdom.Army;

public class ElfArmy implements Army {
	
	static final String DESCRIPTION = "Elven army";

	@Override
	public String getDescription() {
		return DESCRIPTION;
	}
	

}
