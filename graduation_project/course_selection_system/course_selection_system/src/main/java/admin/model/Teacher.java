package admin.model;

public class Teacher {
	
	private String tname;
	private String tno;
	private String departmentNo;
	private String departmentName;
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
	@Override
	public String toString() {
		return "Teacher [tname=" + tname + ", tno=" + tno + ", departmentNo=" + departmentNo + ", departmentName="
				+ departmentName + "]";
	}
	
	

}
