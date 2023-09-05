package appointment;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
@ComponentScan("appointment")
public class AppointmentConfig {

	@Autowired
	Environment env;

	@Bean
	DataSource dataSource() {

		DriverManagerDataSource dm = new DriverManagerDataSource();

		dm.setDriverClassName("org.postgresql.Driver");
		dm.setUrl("jdbc:postgresql://localhost:5432/ajay");
		dm.setUsername("postgres");
		dm.setPassword("Maddineni@123");
		return dm;
	}
}
