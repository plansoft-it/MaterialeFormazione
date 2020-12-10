package it.plansoft.nestedclass;

import java.util.LinkedList;
import java.util.List;

public class User {

	private static class Address {
		private String address;
		private String city;
		private String cap;
		public Address(String address, String city, String cap) {
			super();
			this.address = address;
			this.city = city;
			this.cap = cap;
		}

		
		
	}
	
	private List<Address> addresses = new LinkedList<>(); 
	
	
	public void addAddress( String address, String city, String cap) {
		addresses.add(new Address(address, city, cap));
	}
	
}
