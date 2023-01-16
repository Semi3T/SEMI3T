package com.sm.account;

import java.util.Date;

public class Account {
 private String l_id;
 private String l_pw;
 private String l_name;
 private String l_phonenumber;
 private Date l_birthday;
 private String l_address;
 private String l_gender;

 public Account() {
	super();
	// TODO Auto-generated constructor stub
}

public Account(String l_id, String l_pw, String l_name, String l_phonenumber, Date l_birthday, String l_address,
		String l_gender) {
	super();
	this.l_id = l_id;
	this.l_pw = l_pw;
	this.l_name = l_name;
	this.l_phonenumber = l_phonenumber;
	this.l_birthday = l_birthday;
	this.l_address = l_address;
	this.l_gender = l_gender;
}

public String getL_id() {
	return l_id;
}

public void setL_id(String l_id) {
	this.l_id = l_id;
}

public String getL_pw() {
	return l_pw;
}

public void setL_pw(String l_pw) {
	this.l_pw = l_pw;
}

public String getL_name() {
	return l_name;
}

public void setL_name(String l_name) {
	this.l_name = l_name;
}

public String getL_phonenumber() {
	return l_phonenumber;
}

public void setL_phonenumber(String l_phonenumber) {
	this.l_phonenumber = l_phonenumber;
}

public Date getL_birthday() {
	return l_birthday;
}

public void setL_birthday(Date l_birthday) {
	this.l_birthday = l_birthday;
}

public String getL_address() {
	return l_address;
}

public void setL_address(String l_address) {
	this.l_address = l_address;
}

public String getL_gender() {
	return l_gender;
}

public void setL_gender(String l_gender) {
	this.l_gender = l_gender;
}
 
}
