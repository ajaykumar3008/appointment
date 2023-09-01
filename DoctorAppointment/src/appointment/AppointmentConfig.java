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
		dm.setUrl("jdbc:postgresql://192.168.110.48:5432/plf_training");
		dm.setUsername("plf_training_admin");
		dm.setPassword("pff123");
		return dm;
	}
}
