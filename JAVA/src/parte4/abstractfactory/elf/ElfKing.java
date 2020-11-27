package parte4.abstractfactory.elf;

import parte4.abstractfactory.kingdom.King;

public class ElfKing implements King {
	
	static final String DESCRIPTION = "Elven king";

	@Override
	public String getDescription() {
		return DESCRIPTION;
	}

}
