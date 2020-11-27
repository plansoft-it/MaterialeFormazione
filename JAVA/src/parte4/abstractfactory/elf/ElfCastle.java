package parte4.abstractfactory.elf;

import parte4.abstractfactory.kingdom.Castle;

public class ElfCastle implements Castle {

	static final String DESCRIPTION = "Elven castle";

	@Override
	public String getDescription() {
		return DESCRIPTION;
	}

}
