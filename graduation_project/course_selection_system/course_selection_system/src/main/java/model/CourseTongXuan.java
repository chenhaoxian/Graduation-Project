package model;

public class CourseTongXuan {
	
	private Integer id;
	private String cno;
	private String cname;
	private String ctype;
	private String ctime;
	private Integer credit;
	private Integer total;
	private Integer margin;
	private String tno;
	private Teacher teacher;
	
	public CourseTongXuan() {
		// TODO Auto-generated constructor stub
	}

	

	public CourseTongXuan(Integer id, String cno, String cname, String ctype, String ctime, Integer credit, Integer total,
			Integer margin, String tno, Teacher teacher) {
		super();
		this.id = id;
		this.cno = cno;
		this.cname = cname;
		this.ctype = ctype;
		this.ctime = ctime;
		this.credit = credit;
		this.total = total;
		this.margin = margin;
		this.tno = tno;
		this.teacher = teacher;
	}



	@Override
	public String toString() {
		return "CourseTongXuan [id=" + id + ", cno=" + cno + ", cname=" + cname + ", ctype=" + ctype + ", ctime=" + ctime
				+ ", credit=" + credit + ", total=" + total + ", margin=" + margin + ", tno=" + tno + ", teacher=" + teacher
				+ "]";
	}



	public String getTno() {
		return tno;
	}



	public void setTno(String tno) {
		this.tno = tno;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCtype() {
		return ctype;
	}

	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}

	public Integer getCredit() {
		return credit;
	}

	public void setCredit(Integer credit) {
		this.credit = credit;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getMargin() {
		return margin;
	}

	public void setMargin(Integer margin) {
		this.margin = margin;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	
	

}
