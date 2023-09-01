package appointment;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SpecializationMapper implements RowMapper<Specialization> {

	@Override
	public Specialization mapRow(ResultSet rs, int rowNum) throws SQLException {

		Specialization sp = new Specialization();
		sp.setSpecId(rs.getInt(1));
		sp.setSpecialization(rs.getString(2));

		return sp;
	}

}
