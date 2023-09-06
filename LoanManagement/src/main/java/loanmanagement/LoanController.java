package loanmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoanController {

	LoanService loan;
	
	@Autowired
	LoanController(LoanService loan){
		this.loan=loan;
	}
	
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String adminlogin() {
		
		return "admin";
	}
	
	@RequestMapping(value="/applicant",method=RequestMethod.GET)
	public String loanApplicants(Model mod) {
		mod.addAttribute("applicants",loan.getALLApplicant());
		return "applicants";
	}
	
	public String appication(Model mod) {
		
		return "application";
	}
}
