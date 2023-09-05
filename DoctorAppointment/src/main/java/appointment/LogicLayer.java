package appointment;

import java.util.List;

public interface LogicLayer {

	String getSpecialization(int id);

	Doctor getDoctorById(int id);
	
	List<Integer> getAllAvailableDatesForDoctor(int doctorID);
	
	List<String> getAllSlotsByDoctor(int doctorId,int day);
}
