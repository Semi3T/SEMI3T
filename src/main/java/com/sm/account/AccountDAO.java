package com.sm.account;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sm.main.DBManager;

public class AccountDAO {

	public static boolean loginCheck(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("account");

		if (a == null) {
			
			
		
			request.setAttribute("contentPage", "account/login.jsp");

			request.setAttribute("contentPage", "jsp/account/login.jsp");

			return false;
		} else {
			request.setAttribute("contentPage", "jsp/home.jsp");
			return true;
		}

	}

	public static void login(HttpServletRequest request) {
		boolean result = false;
		String userID = request.getParameter("id");
		String userPW = request.getParameter("pw");

		String iddd = (String) request.getAttribute("iddd");
		String pwww = (String) request.getAttribute("pwww");

		if (iddd != null) {
			userID = iddd;
			userPW = pwww;
		}

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from login where l_id=?";
		int count = 0;
		
		try {

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			

			if (rs.next()) {

				if (userPW.equals(rs.getString("l_pw"))) {
					request.setAttribute("r", "");

					Account a = new Account();
					a.setL_id(rs.getString("l_id"));
					a.setL_pw(rs.getString("l_pw"));
					a.setL_name(rs.getString("l_name"));
					a.setL_phonenumber(rs.getString("l_phonenumber"));
					a.setL_birthday(rs.getDate("l_birthday"));
					a.setL_address(rs.getString("l_address"));
					a.setL_gender(rs.getString("l_gender"));

					HttpSession hs = request.getSession();
					hs.setAttribute("account", a);
					hs.setMaxInactiveInterval(60 * 10);
					count = pstmt.executeUpdate();
					
				} else {

					request.setAttribute("r", "아이디 또는 비밀번호가 일치하지않습니다");
				}

			} else {

				request.setAttribute("r", "아이디 또는 비밀번호가 일치하지않습니다");

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
		if (count != 0) {
			result = true;
		}
		else {
			result = false;
		}
	}

	public static void logOut(HttpServletRequest request) {

		HttpSession hs = request.getSession();

		hs.setAttribute("account", null);

		loginCheck(request);

	}

	public static void regAccount(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into login values(?, ?, ?, ?, ?, ?, ?)";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			request.setCharacterEncoding("UTF-8");

			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("login_name");
			String phonenumber = request.getParameter("phonenumber");
			String birthday = request.getParameter("birthday");
			String address = request.getParameter("address");
			String gender = request.getParameter("gender");

			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, phonenumber);
			pstmt.setString(5, birthday);
			pstmt.setString(6, address);
			pstmt.setString(7, gender);

			System.out.println(id);
			System.out.println(pw);
			System.out.println(name);
			System.out.println(phonenumber);
			System.out.println(birthday);
			System.out.println(address);
			System.out.println(gender);

			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "환영합니다");
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "가입실패");
		} finally {
			DBManager.close(con, pstmt, null);

		}

	}

	public static void findId(HttpServletRequest request) {
		String name = request.getParameter("name");
		String phonenumber = request.getParameter("phonenumber");
		String id = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select l_id from login where l_name=? and l_phonenumber=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			

			pstmt.setString(1, name);
			pstmt.setString(2, phonenumber);
			rs = pstmt.executeQuery();

			
			if (rs.next()) {
	
				id = rs.getString("l_id");
				

			}else {
				request.setAttribute("r", "회원정보가 일치하지않습니다");
			}

			System.out.println(id);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		request.setAttribute("idresult", id);
	}

	public static void findPw(HttpServletRequest request) {
		String name = request.getParameter("name");
		String phonenumber = request.getParameter("phonenumber");
		String id = request.getParameter("id");
		String pw = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
			
		
		try {
			String sql = "select l_pw from login where l_id=? and l_name=? and l_phonenumber=?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, phonenumber);
			rs = pstmt.executeQuery();

			
			if (rs.next()) {
	
				pw = rs.getString("l_pw");
				

			}else {
				request.setAttribute("r", "회원정보가 일치하지않습니다");
			}

			System.out.println(pw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		request.setAttribute("pwresult", pw);
	}
		
	
}
