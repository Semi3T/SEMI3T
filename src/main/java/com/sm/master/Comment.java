package com.sm.master;

public class Comment {
	private String c_no;
	private String c_id;
	private String c_name;
	private String c_content;
	private String c_date;
	private String p_no;
	
	public Comment() {
		// TODO Auto-generated constructor stub
	}

	public Comment(String c_no, String c_id, String c_name, String c_content, String c_date, String p_no) {
		super();
		this.c_no = c_no;
		this.c_id = c_id;
		this.c_name = c_name;
		this.c_content = c_content;
		this.c_date = c_date;
		this.p_no = p_no;
	}

	public String getC_no() {
		return c_no;
	}

	public void setC_no(String c_no) {
		this.c_no = c_no;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}

	public String getP_no() {
		return p_no;
	}

	public void setP_no(String p_no) {
		this.p_no = p_no;
	}

	
	
	
	
	
	
	
}
