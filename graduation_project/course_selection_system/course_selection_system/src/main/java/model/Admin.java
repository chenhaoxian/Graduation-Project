package model;

public class Admin {
	private int id;
	private String aid;
	private String password ;
	private String name;
	private int usertype;
	
	public Admin(){}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getUsertype() {
		return usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	public Admin(int id, String aid, String password, String name, int usertype) {
		super();
		this.id = id;
		this.aid = aid;
		this.password = password;
		this.name = name;
		this.usertype = usertype;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", aid=" + aid + ", password=" + password + ", name=" + name + ", usertype=" + usertype
				+ "]";
	}
	

}
