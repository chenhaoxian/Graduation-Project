package model;

import java.util.List;

public class SelectCourse {
	
	private String sno;
	
	private String status;
	
	private String courseName;
	
	private String ctime;
	
	private String teacherName;

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	@Override
	public String toString() {
		return "SelectCourse [sno=" + sno + ", status=" + status + ", courseName=" + courseName + ", ctime=" + ctime
				+ ", teacherName=" + teacherName + "]";
	}

	

	

}
