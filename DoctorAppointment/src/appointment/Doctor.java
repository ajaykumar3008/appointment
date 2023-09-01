package appointment;

public class Doctor {

	int doctorId;
	String fullName;
	int specilization;
	String qualification;
	int experiance;
	String designation;
	String photo;

	public Doctor(int doctorId, String fullName, int specilization, String qualification, int experiance,
			String designation, String photo) {

		this.doctorId = doctorId;
		this.fullName = fullName;
		this.specilization = specilization;
		this.qualification = qualification;
		this.experiance = experiance;
		this.designation = designation;
		this.photo = photo;
	}

	public Doctor() {

	}

	public int getDoctorId() {
		return doctorId;
	}

	public String getFullName() {
		return fullName;
	}

	public int getSpecilization() {
		return specilization;
	}

	public String getQualification() {
		return qualification;
	}

	public int getExperiance() {
		return experiance;
	}

	public String getDesignation() {
		return designation;
	}

	public String getPhoto() {
		return photo;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public void setSpecilization(int specilization) {
		this.specilization = specilization;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public void setExperiance(int experiance) {
		this.experiance = experiance;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

}
