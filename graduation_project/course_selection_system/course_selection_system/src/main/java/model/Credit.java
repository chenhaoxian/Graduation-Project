package model;

public class Credit {
	
	private int required;
	private int selected;
	private int common;
	private String sno;
	
	public Credit(){}
	
	public Credit(int required, int selected, int common, String sno) {
		super();
		this.required = required;
		this.selected = selected;
		this.common = common;
		this.sno = sno;
	}
	
	@Override
	public String toString() {
		return "Credit [required=" + required + ", selected=" + selected + ", common=" + common + ", sno=" + sno + "]";
	}

	public int getRequired() {
		return required;
	}
	public void setRequired(int required) {
		this.required = required;
	}
	public int getSelected() {
		return selected;
	}
	public void setSelected(int selected) {
		this.selected = selected;
	}
	public int getCommon() {
		return common;
	}
	public void setCommon(int common) {
		this.common = common;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	

}
