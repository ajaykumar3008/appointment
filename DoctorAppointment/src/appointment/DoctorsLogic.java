package appointment;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class DoctorsLogic implements LogicLayer {

	List<Doctor> docList = new ArrayList<>();
	List<Specialization> specList = new ArrayList<>();

	AppointmentDAO appoint;

	@Autowired
	public DoctorsLogic(AppointmentDAO appoint) {

		this.appoint = appoint;
	}

	public String getSpecialization(int doctorID) {

		docList = appoint.getAllDoctors();
		specList = appoint.getAllSpecializations();
		int specialID = 0;
		String specialization = "";

		for (Doctor d : docList) {
			if (d.getDoctorId() == doctorID) {

				specialID = d.getSpecilization();
				break;
			}
		}

		for (Specialization spec : specList) {

			if (spec.getSpecId() == specialID) {
				specialization = spec.getSpecialization();
				break;
			}
		}
		return specialization;
	}

	@Override
	public Doctor getDoctorById(int id) {

		docList = appoint.getAllDoctors();
		Doctor d = new Doctor();
		for (Doctor doc : docList) {
			if (doc.getDoctorId() == id) {

				d = doc;
				break;
			}
		}

		return d;
	}

}
