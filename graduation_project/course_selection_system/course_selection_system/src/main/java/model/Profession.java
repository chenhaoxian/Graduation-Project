package model;

public class Profession {
	
	private String professionName;
	private String professionNo;
	private Department department;
	
	public Profession(){}

	public Profession(String professionName, String professionNo, Department department) {
		super();
		this.professionName = professionName;
		this.professionNo = professionNo;
		this.department = department;
	}

	@Override
	public String toString() {
		return "Profession [professionName=" + professionName + ", professionNo=" + professionNo + ", department="
				+ department + "]";
	}

	public String getProfessionName() {
		return professionName;
	}

	public void setProfessionName(String professionName) {
		this.professionName = professionName;
	}

	public String getProfessionNo() {
		return professionNo;
	}

	public void setProfessionNo(String professionNo) {
		this.professionNo = professionNo;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	
	
	

}
