package model;

public class Teacher {
	
	private String tno;
	private String tname;
	private String password;
	private String departmentNo;
	private String departmentName;
	
	private Department department;
	
	public Teacher() {}

	public String getTno() {
		return tno;
	}

	public void setTno(String tno) {
		this.tno = tno;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getDepartmentNo() {
		return departmentNo;
	}

	public void setDepartmentNo(String departmentNo) {
		this.departmentNo = departmentNo;
	}

	

	@Override
	public String toString() {
		return "Teacher [tno=" + tno + ", tname=" + tname + ", password=" + password + ", departmentNo=" + departmentNo
				+ ", departmentName=" + departmentName + ", department=" + department + "]";
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	
	

}
