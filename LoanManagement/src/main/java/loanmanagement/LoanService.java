package loanmanagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoanService {

	LoanDAOContractor loanDAO;

	@Autowired
	LoanService(LoanDAOContractor loan) {

		this.loanDAO = loan;
	}

	public List<LoanApplicant> getALLApplicant(){
		
		
		return loanDAO.getAll();
	}

}
