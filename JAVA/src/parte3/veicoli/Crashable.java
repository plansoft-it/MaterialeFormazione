package parte3.veicoli;

public abstract class Crashable implements Vehicle {
	// Inserire Vehicle solo a fine Astrazione

	boolean drivable = true;

	public void crash() {
		this.drivable = false;
	}

	public String canBeUse() {
		if (drivable) {
			return "Yes";
		} else {
			return "No";
		}
	}

	public abstract void setDrivableStrength(int carStrength);

	public abstract int getDrivableStrength();

}
