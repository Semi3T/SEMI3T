package com.sm.master;

public class Product {
	private int p_no;
	private String p_brand;
	private String p_title;
	private int p_new;
	private int p_sale;
	private String p_img;
	private String p_contents;
	private int p_stock;
	private int p_price;
	private int p_like;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(int p_no, String p_brand, String p_title, int p_new, int p_sale, String p_img, String p_contents,
			int p_stock, int p_price, int p_like) {
		super();
		this.p_no = p_no;
		this.p_brand = p_brand;
		this.p_title = p_title;
		this.p_new = p_new;
		this.p_sale = p_sale;
		this.p_img = p_img;
		this.p_contents = p_contents;
		this.p_stock = p_stock;
		this.p_price = p_price;
		this.p_like = p_like;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
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

	public int getP_new() {
		return p_new;
	}

	public void setP_new(int p_new) {
		this.p_new = p_new;
	}

	public int getP_sale() {
		return p_sale;
	}

	public void setP_sale(int p_sale) {
		this.p_sale = p_sale;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_contents() {
		return p_contents;
	}

	public void setP_contents(String p_contents) {
		this.p_contents = p_contents;
	}

	public int getP_stock() {
		return p_stock;
	}

	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getP_like() {
		return p_like;
	}

	public void setP_like(int p_like) {
		this.p_like = p_like;
	}
	
	
}
