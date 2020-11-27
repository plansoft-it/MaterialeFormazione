package parte4.decorator;

public abstract class Decorator extends Pizza {
	
	protected BasePizza decorated; 
	
	public Decorator(BasePizza decorate) {
		this.decorated = decorate;
	}

}
