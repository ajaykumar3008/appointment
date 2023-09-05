package appointment;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class ImpAppointmentDAO implements AppointmentDAO {

	JdbcTemplate jdbc;

	public ImpAppointmentDAO(DataSource data) {

		this.jdbc = new JdbcTemplate(data);
	}

	public List<Doctor> getAllDoctors() {

		return jdbc.query("select * from doctors", new DoctorMapper());
	}

	@Override
	public List<Specialization> getAllSpecializations() {

		return jdbc.query("select * from specialization", new SpecializationMapper());
	}

	@Override
	public List<SlotCalendar> getAllSlots(int doctorID) {

		String query = "select * from appointmentsslotcalendar where doctorid=" + doctorID;
		return jdbc.query(query, new SlotMapper());
	}
	
	public int addDoctorSchedule(DoctorSchedule ds) {
		System.out.println(ds.getDays());
		return 2;
	}

}
