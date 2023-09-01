package appointment;

public class Specialization {

	int specId;
	String specialization;

	public Specialization(int specId, String specialization) {

		this.specId = specId;
		this.specialization = specialization;
	}

	public Specialization() {

	}

	public int getSpecId() {
		return specId;
	}

	public String getSpecialization() {
		return specialization;
	}

	public void setSpecId(int specId) {
		this.specId = specId;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

}
