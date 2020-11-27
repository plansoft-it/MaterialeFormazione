package parte4.decorator;

public class Prosciutto extends Decorator {

	public Prosciutto(BasePizza decorate) {
		super(decorate);
	}
	
	@Override
	public String getIngredients() {
		return decorated.getIngredients() + " prosciutto";
	}

}
