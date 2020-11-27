package parte4.decorator;

public class Bufala extends Decorator {

	public Bufala(BasePizza decorate) {
		super(decorate);
	}
	
	@Override
	public String getIngredients() {
		return decorated.getIngredients() + " bufala";
	}

}
