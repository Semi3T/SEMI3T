package com.sm.master;

public class Newpage {

	private int p_no;
	private String p_img;
	private String p_brand;
	private String p_title;
	private int p_price;
	
	public Newpage() {
		// TODO Auto-generated constructor stub
	}

	public Newpage(int p_no, String p_img, String p_brand, String p_title, int p_price) {
		super();
		this.p_no = p_no;
		this.p_img = p_img;
		this.p_brand = p_brand;
		this.p_title = p_title;
		this.p_price = p_price;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_brand() {
		return p_brand;
	}

	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}

	public String getP_title() {
		return p_title;
	}

	public void setP_title(String p_title) {
		this.p_title = p_title;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	
}
