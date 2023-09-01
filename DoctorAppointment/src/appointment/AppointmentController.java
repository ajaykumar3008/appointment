package appointment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AppointmentController {

	AppointmentDAO appoint;
	LogicLayer logic;

	@Autowired
	public AppointmentController(AppointmentDAO appoint, LogicLayer logic) {

		this.appoint = appoint;
		this.logic = logic;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "login";
	}

	@RequestMapping(value = "/verify", method = RequestMethod.GET)
	public String Verify(Model mod) {

		List<Doctor> docList = appoint.getAllDoctors();
		mod.addAttribute("doctors", docList);
		return "doctors";
	}

	@RequestMapping(value = "/doctor", method = RequestMethod.GET)
	public String AvailableDoctor(@RequestParam("doctorID") String id, Model mod) {

		int ID = Integer.parseInt(id);

		mod.addAttribute("doctor", logic.getDoctorById(ID));
		mod.addAttribute("special", logic.getSpecialization(ID));
		return "doctor";
	}

	@RequestMapping(value = "/slots", method = RequestMethod.GET)
	public String AvailableSlots(@RequestParam("doctorID") String id, Model mod) {
		int ID = Integer.parseInt(id);

		mod.addAttribute("slots", appoint.getAllSlots(ID));
		return "slots";
	}
}
