package com.sm.main;

import java.util.Date;

public class Account {
	private String s_id;
	private String s_pw;
	private String s_name;
	private String s_hp;
	private Date s_birthday;
	private String s_addr;
	private String s_gender;
	

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Account(String s_id, String s_pw, String s_name, String s_hp, Date s_birthday, String s_addr,
			String s_gender) {
		super();
		this.s_id = s_id;
		this.s_pw = s_pw;
		this.s_name = s_name;
		this.s_hp = s_hp;
		this.s_birthday = s_birthday;
		this.s_addr = s_addr;
		this.s_gender = s_gender;
	}


	public String getS_id() {
		return s_id;
	}


	public void setS_id(String s_id) {
		this.s_id = s_id;
	}


	public String getS_pw() {
		return s_pw;
	}


	public void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}


	public String getS_name() {
		return s_name;
	}


	public void setS_name(String s_name) {
		this.s_name = s_name;
	}


	public String getS_hp() {
		return s_hp;
	}


	public void setS_hp(String s_hp) {
		this.s_hp = s_hp;
	}


	public Date getS_birthday() {
		return s_birthday;
	}


	public void setS_birthday(Date s_birthday) {
		this.s_birthday = s_birthday;
	}


	public String getS_addr() {
		return s_addr;
	}


	public void setS_addr(String s_addr) {
		this.s_addr = s_addr;
	}


	public String getS_gender() {
		return s_gender;
	}


	public void setS_gender(String s_gender) {
		this.s_gender = s_gender;
	}
	
	
	
}

