package model;

public class Teacher {
	
	private String tno;
	private String tname;
	private String password;
	private Department department;
	
	public Teacher() {
		// TODO Auto-generated constructor stub
	}
	
	


	@Override
	public String toString() {
		return "Teacher [tno=" + tno + ", tname=" + tname + ", password=" + password + ", department=" + department + "]";
	}




	public Teacher(String tno, String tname, String password, Department department) {
		super();
		this.tno = tno;
		this.tname = tname;
		this.password = password;
		this.department = department;
	}




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

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	
	
	

}
