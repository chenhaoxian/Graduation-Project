package model;

import java.util.List;

public class Student {
	
	private int id ;
	private String sname;
	private String sno;
	private int grade;
	private String password;
	private String usertype;
	private Profession profession;
	private Credit credit;
	
	
	
	@Override
	public String toString() {
		return "Student [id=" + id + ", sname=" + sname + ", sno=" + sno + ", grade=" + grade + ", password=" + password
				+ ", usertype=" + usertype + ", profession=" + profession + ", credit=" + credit + "]";
	}

	public Student(){}
	
	

	public Student(int id, String sname, String sno, int grade, String password, String usertype, Profession profession,
			Credit credit) {
		super();
		this.id = id;
		this.sname = sname;
		this.sno = sno;
		this.grade = grade;
		this.password = password;
		this.usertype = usertype;
		this.profession = profession;
		this.credit = credit;
	}

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

	public Credit getCredit() {
		return credit;
	}

	public void setCredit(Credit credit) {
		this.credit = credit;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public Profession getProfession() {
		return profession;
	}

	public void setProfession(Profession profession) {
		this.profession = profession;
	}
	
	

}
