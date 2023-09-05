package appointment;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WorkController {

	AppointmentDAO appoint;
	LogicLayer logic;

	@Autowired
	public WorkController(AppointmentDAO appoint, LogicLayer logic) {

		this.appoint = appoint;
		this.logic = logic;
	}
	

	
	@RequestMapping(value = "/doctorlogin", method = RequestMethod.GET)
	public String doctorlogin() {

		return "doctorlogin";
	}
	
	@RequestMapping(value = "/doctorverify", method = RequestMethod.GET)
	public String doctorverify() {

		return "workenroll";
	}
	
	@RequestMapping(value = "/workpreview", method = RequestMethod.GET)
	public String workpreview() {

		return "workpreview";
	}

	@RequestMapping(value = "/confirmwokingdays", method = RequestMethod.GET)
	public String addWorkingDays() {

		System.out.println(1);
		
		return "";
	}
	

	
}
