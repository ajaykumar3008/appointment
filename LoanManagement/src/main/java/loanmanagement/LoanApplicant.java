package loanmanagement;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="applicants")
@Entity
public class LoanApplicant {

	@Id
	int appicantid;
	String apllicantname;
	int customerid;
	
	
	public LoanApplicant() {
		
	}
	public LoanApplicant(int appicantid, String apllicantname, int customerid) {
		
		this.appicantid = appicantid;
		this.apllicantname = apllicantname;
		this.customerid = customerid;
	}
	public int getAppicantid() {
		return appicantid;
	}
	public String getApllicantname() {
		return apllicantname;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setAppicantid(int appicantid) {
		this.appicantid = appicantid;
	}
	public void setApllicantname(String apllicantname) {
		this.apllicantname = apllicantname;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	
	
}
