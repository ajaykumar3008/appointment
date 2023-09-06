package loanmanagement;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class LoanDAO implements LoanDAOContractor {

	@PersistenceContext
	private EntityManager emt;

	@Override
	public List<LoanApplicant> getAll() {
		
		return emt.createQuery("select al from LoanApplicant al").getResultList();
	}
	
}
