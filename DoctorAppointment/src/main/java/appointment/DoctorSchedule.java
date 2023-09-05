package appointment;

import java.sql.Time;

public class DoctorSchedule {

	Time availableFrom;
	Time availableTo;
	String days;
	int session;

	public DoctorSchedule(Time availableFrom, Time availableTo, String days, int session) {
		
		this.availableFrom = availableFrom;
		this.availableTo = availableTo;
		this.days = days;
		this.session = session;
	}
	public DoctorSchedule() {
		
	}

	public Time getAvailableFrom() {
		return availableFrom;
	}

	public Time getAvailableTo() {
		return availableTo;
	}

	public String getDays() {
		return days;
	}

	public int getSession() {
		return session;
	}

	public void setAvailableFrom(Time availableFrom) {
		this.availableFrom = availableFrom;
	}

	public void setAvailableTo(Time availableTo) {
		this.availableTo = availableTo;
	}

	public void setDays(String days) {
		this.days = days;
	}

	public void setSession(int session) {
		this.session = session;
	}
	
	
}
