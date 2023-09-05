package appointment;

import java.util.List;

public interface AppointmentDAO {

	List<Doctor> getAllDoctors();

	List<SlotCalendar> getAllSlots(int doctorID);

	List<Specialization> getAllSpecializations();
	
	int addDoctorSchedule(DoctorSchedule ds);
}
