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
public class AppointmentController {

	AppointmentDAO appoint;
	LogicLayer logic;

	@Autowired
	public AppointmentController(AppointmentDAO appoint, LogicLayer logic) {

		this.appoint = appoint;
		this.logic = logic;
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {

		return "home";
	} 
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "login";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {

		return "register";
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
	public String AvailableDates(@RequestParam("doctorID") String id, Model mod) {
		int ID = Integer.parseInt(id);
		mod.addAttribute("doctor",ID);
		mod.addAttribute("days", logic.getAllAvailableDatesForDoctor(ID));
		mod.addAttribute("month","September");
		List<String> time= new ArrayList<>();
		time.add("10:00 - 11:00");
		time.add("11:00 - 12:00");
		mod.addAttribute("time", time);
		return "slots";
	}
	
	@RequestMapping(value="/slot",method=RequestMethod.GET)
	public String AvailableSlots(@RequestParam("doctor") String id,@RequestParam("day") String day,Model mod) {
		
		int Id=Integer.parseInt(id);
		int Day=Integer.parseInt(day);
		mod.addAttribute("time",logic.getAllSlotsByDoctor(Id,Day));
		mod.addAttribute("date",Day);
		System.out.println(Day);
		mod.addAttribute("doctor", Id);
		mod.addAttribute("month","September");
		mod.addAttribute("days",logic.getAllAvailableDatesForDoctor(Id));
		return "slots";
	}
	
	@RequestMapping(value="/patient",method=RequestMethod.GET)
	public String patiant(@RequestParam("doctor") String id,@RequestParam("date") String date,@RequestParam("slot") String slot,Model mod) {
		
		int ID=Integer.parseInt(id);
		mod.addAttribute("doctor",ID);
		mod.addAttribute("date",date);
		mod.addAttribute("slot",slot);
		
		return "patiant";
	}
	
	@RequestMapping(value="/preview",method=RequestMethod.GET)
	public String appointmentPreview(@RequestParam("doctor") String id,@RequestParam("date") String date,@RequestParam("slot") String slot,Patiant pat,Model mod) {
		
		int Id=Integer.parseInt(id);
		mod.addAttribute("doctor",logic.getDoctorById(Id).getFullName()
				);
		mod.addAttribute("date",date);
		mod.addAttribute("slot",slot);
		mod.addAttribute("patient",pat);
		
		return "preview";
	}
}
