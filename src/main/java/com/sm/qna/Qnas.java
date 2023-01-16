package com.sm.qna;

import java.util.Date;

public class Qnas {
	private int no;
	private String title;
	private String contents;
	private Date date;
	private String img;
	private String id;
	private String pw;
	
	public Qnas() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Qnas(int no, String title, String contents, Date date, String img, String id, String pw) {
		super();
		this.no = no;
		this.title = title;
		this.contents = contents;
		this.date = date;
		this.img = img;
		this.id = id;
		this.pw = pw;
	}
	

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
}
