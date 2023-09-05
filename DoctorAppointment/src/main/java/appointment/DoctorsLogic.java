package appointment;

import java.util.ArrayList;
import java.util.Calendar;
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

	@Override
	public List<Integer> getAllAvailableDatesForDoctor(int doctorID) {
		
		List<SlotCalendar> slotList=appoint.getAllSlots(doctorID);
		List<Integer> dateList=new ArrayList<>();
		
		for(SlotCalendar sc:slotList) {
			
			if(sc.getSlotDoctorid()==doctorID) {
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(sc.getSlotdate());
				int day = calendar.get(Calendar.DAY_OF_MONTH);
				dateList.add(day);
				
			}
			
		}
		
		return dateList;
	}

	@Override
	public List<String> getAllSlotsByDoctor(int doctorId, int day) {
		List<String> timeList=new ArrayList<>();
		List<SlotCalendar> slotList=appoint.getAllSlots(doctorId);
		
		for(SlotCalendar sc:slotList) {
			
			if(sc.getSlotDoctorid()==doctorId) {
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(sc.getSlotdate());
				int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
				
				if(dayOfMonth==day) {
					String time=""+sc.getSlotfrom()+" - "+sc.getSlotto();
					timeList.add(time);
				}
				
			}
			
		}
		
		return timeList;
	}

}
