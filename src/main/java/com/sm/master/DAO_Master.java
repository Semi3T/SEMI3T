package com.sm.master;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sm.main.DBManager;

public class DAO_Master {

	public static void regproduct(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into product_table values(product_table_seq.nextval,?,?,?,?,?,?,?,?,?)";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("jsp/master/imgFolder");
			System.out.println(path);
			
			MultipartRequest mr = new MultipartRequest(request, path,30*1024*1024,"utf-8",new DefaultFileRenamePolicy()); 			
			
			String tilte_img = mr.getFilesystemName("tilte_img");
			String brand = mr.getParameter("brand");
			String title = mr.getParameter("title");
			int p_new = Integer.parseInt(mr.getParameter("p_new"));
			int sale = Integer.parseInt( mr.getParameter("sale"));
			String content_img = mr.getFilesystemName("content_img");
			int stock = Integer.parseInt( mr.getParameter("stock"));
			int price = Integer.parseInt( mr.getParameter("price"));
			int like = Integer.parseInt( mr.getParameter("like"));
			
			System.out.println(tilte_img);
			System.out.println(brand);
			System.out.println(title);
			System.out.println(p_new);
			System.out.println(sale);
			System.out.println(content_img);
			System.out.println(stock);
			System.out.println(price);
			System.out.println(like);
			
			
			pstmt.setString(1, brand);
			pstmt.setString(2, title);
			pstmt.setInt(3, p_new);
			pstmt.setInt(4, sale);
			pstmt.setString(5, tilte_img);
			pstmt.setString(6, content_img);
			pstmt.setInt(7, stock);
			pstmt.setInt(8, price);
			pstmt.setInt(9, like);
			
//			���߿� js�� ���â�� ��� ���� ��� �ֱ�
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "��� ����");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	public static void getAllProduct(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product_table";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Product> products = new ArrayList<Product>();
			Product p = null;
			while (rs.next()) {
				p = new Product();
				p.setP_no(rs.getInt("p_no"));
				p.setP_new(rs.getInt("p_new"));
				p.setP_sale(rs.getInt("p_sale"));
				p.setP_stock(rs.getInt("p_stock"));
				p.setP_price(rs.getInt("p_price"));
				p.setP_like(rs.getInt("p_like"));
				p.setP_brand(rs.getString("p_brand"));
				p.setP_title(rs.getString("p_title"));
				p.setP_img(rs.getString("p_img"));
				p.setP_contents(rs.getString("p_contents"));
				products.add(p);
			}
				request.setAttribute("product", products);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

}
