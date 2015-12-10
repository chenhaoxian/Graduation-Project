package model;

import org.springframework.beans.factory.annotation.Autowired;

public class User {
	
	@Autowired
	private int id ;
	@Autowired
	private String name;
	@Autowired
	private String sid;
	@Autowired
	private String password;
	@Autowired
	private int user_type;
	
	public User(){}

	public User(int id, String name, String sid, String password, int user_type) {
		super();
		this.id = id;
		this.name = name;
		this.sid = sid;
		this.password = password;
		this.user_type = user_type;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", sid=" + sid + ", password=" + password + ", user_type=" + user_type
				+ "]";
	}
	
	
	
	
	
	
	
}
