package model;

public class Department {
	
	private String departmentNo;
	private String departmentName;
	
	public Department(){}

	public Department(String departmentNo, String departmentName) {
		super();
		this.departmentNo = departmentNo;
		this.departmentName = departmentName;
	}

	@Override
	public String toString() {
		return "Department [departmentNo=" + departmentNo + ", departmentName=" + departmentName + "]";
	}

	public String getDepartmentNo() {
		return departmentNo;
	}

	public void setDepartmentNo(String departmentNo) {
		this.departmentNo = departmentNo;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
	
	

}
