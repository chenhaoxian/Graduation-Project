package model;

public class Teacher {
	
	private int id ;
	private String tname;
	private String tno;
	private String departmentno;
	private String password;
	private int usertype;
	
	public Teacher(){}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTno() {
		return tno;
	}

	public void setTno(String tno) {
		this.tno = tno;
	}

	public String getDepartmentno() {
		return departmentno;
	}

	public void setDepartmentno(String departmentno) {
		this.departmentno = departmentno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUsertype() {
		return usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	public Teacher(int id, String tname, String tno, String departmentno, String password, int usertype) {
		super();
		this.id = id;
		this.tname = tname;
		this.tno = tno;
		this.departmentno = departmentno;
		this.password = password;
		this.usertype = usertype;
	}

	@Override
	public String toString() {
		return "Teacher [id=" + id + ", tname=" + tname + ", tno=" + tno + ", departmentno=" + departmentno + ", password="
				+ password + ", usertype=" + usertype + "]";
	}
	
	

}
