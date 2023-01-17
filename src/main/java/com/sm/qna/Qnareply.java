package com.sm.qna;

public class Qnareply {
	private String r_no;
	private String r_id;
	private String r_name;
	private String r_content;
	private String r_date;
	private String q_no;
	
	public Qnareply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Qnareply(String r_no, String r_id, String r_name, String r_content, String r_date, String q_no) {
		super();
		this.r_no = r_no;
		this.r_id = r_id;
		this.r_name = r_name;
		this.r_content = r_content;
		this.r_date = r_date;
		this.q_no = q_no;
	}

	public String getR_no() {
		return r_no;
	}

	public void setR_no(String r_no) {
		this.r_no = r_no;
	}

	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getQ_no() {
		return q_no;
	}

	public void setQ_no(String q_no) {
		this.q_no = q_no;
	}
	
	
}
