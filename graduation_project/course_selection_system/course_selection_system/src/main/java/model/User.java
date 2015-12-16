package model;

import org.springframework.beans.factory.annotation.Autowired;

public class User {
	
	//@Autowired
	private int id ;
	//@Autowired
	private String name;
	//@Autowired
	private String userId;
	//@Autowired
	private String password;
	//@Autowired
	private int user_type;
	
	public User(){}

	public User(int id, String name, String userId, String password, int user_type) {
		super();
		this.id = id;
		this.name = name;
		this.userId = userId;
		this.password = password;
		this.user_type = user_type;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", userId=" + userId + ", password=" + password + ", user_type=" + user_type
				+ "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUser_type() {
		return user_type;
	}

	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}
	
	
	
	
	
	
	
}
