package com.sm.master;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.tag.common.core.SetSupport;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sm.account.Account;
import com.sm.account.AccountDAO;
import com.sm.main.DBManager;

public class DAO_Master {

	private static ArrayList<Product> products;
	private static ArrayList<Product> products_new;
	private static ArrayList<Product> products_sale;
	private static ArrayList<Product> brand;
	private static ArrayList<Comment> comments;
	
	
	public static void regproduct(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into product_table values(product_table_seq.nextval,?,?,?,?,?,?,?,?,?)";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String path = request.getSession().getServletContext().getRealPath("jsp/master/imgFolder");
			System.out.println(path);

			MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
 
			String tilte_img = mr.getFilesystemName("tilte_img");
			String brand = mr.getParameter("brand");
			String title = mr.getParameter("title");
			int p_new = Integer.parseInt(mr.getParameter("p_new"));
			int sale = Integer.parseInt(mr.getParameter("sale"));
			String content_img = mr.getFilesystemName("content_img");
			int stock = Integer.parseInt(mr.getParameter("stock"));
			int price = Integer.parseInt(mr.getParameter("price"));
			int like = Integer.parseInt(mr.getParameter("like"));

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

//			나중에 js로 등록성공 경고창으로 뛰우기
			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "등록 성공");

			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "등록 실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void getAllProduct(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product_table order by p_no DESC";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			products = new ArrayList<Product>();
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

	public static void getdetailproduct(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product_table where p_no=?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("p_no"));
			rs = pstmt.executeQuery();

			Product p = null;
			if (rs.next()) {

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
			}
			request.setAttribute("product", p);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void newproduct(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product_table where p_new=1 order by p_no";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			products_new = new ArrayList<Product>();
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
				products_new.add(p);
			}
			request.setAttribute("product", products_new);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void saleproduct(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product_table where p_sale=1 order by p_no";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			products_sale = new ArrayList<Product>();
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
				products_sale.add(p);
			}
			request.setAttribute("product", products_sale);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static void paging_new(int newpage, HttpServletRequest request) {

		request.setAttribute("curPageNo", newpage);
		int count = 9;
		int total = products_new.size();
		int pageCount = (int) Math.ceil((double) total / count);

		request.setAttribute("pageCount", pageCount);

		int start = total - (count * (newpage - 1));
		int end = (newpage == pageCount) ? -1 : start - (count + 1);

		ArrayList<Product> items = new ArrayList<Product>(); // 9개를 담을 새로운 그릇
		for (int i = start - 1; i > end; i--) {
			items.add(products_new.get(i));
		}
		request.setAttribute("product", items);
	}

	public static void paging_sale(int salepage, HttpServletRequest request) {

		request.setAttribute("curPageNo", salepage);

		int count = 9;
		int total = products_sale.size();
		int pageCount = (int) Math.ceil((double) total / count);

		request.setAttribute("pageCount", pageCount);

		int start = total - (count * (salepage - 1));
		int end = (salepage == pageCount) ? -1 : start - (count + 1);

		ArrayList<Product> items = new ArrayList<Product>(); // 9개를 담을 새로운 그릇
		for (int i = start - 1; i > end; i--) {
			items.add(products_sale.get(i));
		}
		request.setAttribute("product", items);

	}

	

	public static void getBrand(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product_table where p_brand=? order by p_no desc";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("brand"));
				
			rs = pstmt.executeQuery();
			brand = new ArrayList<Product>();
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
				brand.add(p);
			}
			request.setAttribute("brand", brand);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
		public static void getcomment(HttpServletRequest request) {
			
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from comments where p_no=?";
			try {
				con = DBManager.connect();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, request.getParameter("p_no"));
				rs = pstmt.executeQuery();

				comments = new ArrayList<Comment>();
				Comment c = null;
				while (rs.next()) {
					c = new Comment();
					c.setC_no(rs.getString("c_no"));
					c.setC_id(rs.getString("c_id"));
					c.setC_name(rs.getString("c_name"));
					c.setC_content(rs.getString("c_content"));
					c.setC_date(rs.getString("c_date"));
					c.setP_no(rs.getString("p_no"));
					comments.add(c);
				}
				request.setAttribute("comment", comments);

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, rs);
			}
			
		}

		public static void regcomment(HttpServletRequest request) {
			Connection con = null;
			PreparedStatement pstmt = null;
			HttpSession hs = request.getSession();
			Account a = (Account) hs.getAttribute("account");
			
			String sql = "insert into comments values(comments_seq.nextval,?,?,?,sysdate,?)";
			
			try {
				request.setCharacterEncoding("utf-8");
				con = DBManager.connect();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, a.getL_id());
				pstmt.setString(2, a.getL_name());
				pstmt.setString(3, request.getParameter("c_content"));
				pstmt.setInt(4, Integer.parseInt(request.getParameter("p_no")));
				pstmt.executeUpdate();
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt,null);
			}
		
		
	}

		public static void deletecomment(HttpServletRequest request) {
			Connection con = null;
			PreparedStatement pstmt = null;
			String sql = "delete from comments where c_no=?";
			try {
				con = DBManager.connect();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, request.getParameter("c_no"));
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt,null);
			}
		
		}

		public static void updatecomment(HttpServletRequest request) {
			
			
		}

		public static void updateReg(HttpServletRequest request) {

			Connection con = null;
			PreparedStatement pstmt = null;
			String sql = "update login set l_pw=?, l_name=?, l_phonenumber=?, l_address=? where l_id=?";
			Account account = (Account)request.getSession().getAttribute("account");
			
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String phonenumber = request.getParameter("phonenumber");
			String address = request.getParameter("address");
			
			try {
				con = DBManager.connect();
				request.setCharacterEncoding("utf-8");
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, pw);
				pstmt.setString(2, name);
				pstmt.setString(3, phonenumber);
				pstmt.setString(4, address);
				pstmt.setString(5, account.getL_id());
				if (pstmt.executeUpdate() == 1) {
					
					 account.setL_pw(pw);
					 account.setL_name(name);
					 account.setL_phonenumber(phonenumber);
					 account.setL_address(address);
					 
					 request.setAttribute("result", "회원정보가 정상적으로 수정 되었습니다.");
					/*
					 * request.setAttribute("iddd", account.getL_id()); request.setAttribute("pwww",
					 * pw); AccountDAO.login(request);
					 */
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("result", "비정상 접근");
			}finally {
				DBManager.close(con, pstmt, null);
			}
		}

		public static void deleteCustomer(HttpServletRequest request) {

			Connection con = null;
			PreparedStatement pstmt = null;
			String sql = "delete from login where l_id=?";
			HttpSession hs = request.getSession();
			Account a = (Account) hs.getAttribute("account");
			
			try {
				con = DBManager.connect();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, a.getL_id());
				pstmt.executeUpdate();
				
				request.setAttribute("result", "회원님의 정보가 정상적으로 삭제 되었습니다.");
				
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("result", "-비정상 접근- 다시 시도 해주세요.");
			}DBManager.close(con, pstmt, null);
			
		}

		

}