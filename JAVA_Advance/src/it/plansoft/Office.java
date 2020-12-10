package it.plansoft;


public class Office {
	public void addUser( User u ) {
		u.setName("Giovanni");
		u = new User();
	}
	
	public void setSize(int size) {
		size++;
	}
}
