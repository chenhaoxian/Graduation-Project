package admin.model;

public class Course {
	
	private String cname;
	private String cno;
	private String ctime;
	private String tname;
	private String tno ;
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
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
	@Override
	public String toString() {
		return "Course [cname=" + cname + ", cno=" + cno + ", ctime=" + ctime + ", tname=" + tname + ", tno=" + tno + "]";
	}
	
	

}
