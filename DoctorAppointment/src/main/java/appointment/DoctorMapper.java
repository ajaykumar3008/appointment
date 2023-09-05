package appointment;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class DoctorMapper implements RowMapper<Doctor> {

	@Override
	public Doctor mapRow(ResultSet rs, int rowNum) throws SQLException {

		Doctor dc = new Doctor();
		dc.setDoctorId(rs.getInt(1));
		dc.setFullName(rs.getString(2));
		dc.setSpecilization(rs.getInt(3));
		dc.setQualification(rs.getString(4));
		dc.setExperiance(rs.getInt(5));
		dc.setDesignation(rs.getString(6));
		dc.setPhoto(rs.getString(7));
		return dc;
	}

}
