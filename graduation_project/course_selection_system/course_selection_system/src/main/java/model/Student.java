package model;

public class Student {
	private int id;
	private String sname;
	private String sno;
	private int grade;
	private String password;
	private String professionNO;
	private int scredit;
	private int usertype;
	
	public Student(){}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProfessionNO() {
		return professionNO;
	}

	public void setProfessionNO(String professionNO) {
		this.professionNO = professionNO;
	}

	public int getScredit() {
		return scredit;
	}

	public void setScredit(int scredit) {
		this.scredit = scredit;
	}

	public int getUsertype() {
		return usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", sname=" + sname + ", sno=" + sno + ", grade=" + grade + ", password=" + password
				+ ", professionNO=" + professionNO + ", scredit=" + scredit + ", usertype=" + usertype + "]";
	}



	public Student(int id, String sname, String sno, int grade, String password, String professionNO, int scredit,
			int usertype) {
		super();
		this.id = id;
		this.sname = sname;
		this.sno = sno;
		this.grade = grade;
		this.password = password;
		this.professionNO = professionNO;
		this.scredit = scredit;
		this.usertype = usertype;
	}



	public int getGrade() {
		return grade;
	}



	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	

}
