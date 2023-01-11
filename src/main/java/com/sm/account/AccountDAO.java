package com.sm.account;



import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sm.main.DBManager;

public class AccountDAO {
	
	
	public static boolean loginCheck(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("account");
		
		if (a == null) {
			request.setAttribute("loginPage", "login.jsp");
			return false;
		} else {
			request.setAttribute("loginPage", "loginOK.jsp");
			return true;
		}
		
	
	}
	
	
	

	public static void login(HttpServletRequest request) {
		String userID = request.getParameter("id");
		String userPW = request.getParameter("pw");
		
		//
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
		
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				
				if(userPW.equals(rs.getString("l_pw"))) {
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
					hs.setMaxInactiveInterval(30);
					
					Cookie[] coo = request.getCookies();
					Cookie userId = new Cookie(U, sql)
					
					
					
					
					
				
					
				} else {
					
					request.setAttribute("r", "아이디 또는 비밀번호가 일치하지않습니다");
				}
				
			}else {
				
				request.setAttribute("r", "아이디 또는 비밀번호가 일치하지않습니다");
				
			}
			
			
			
		
			
		} catch (Exception e) {
		 e.printStackTrace();
		}
		
		
		
		
		
	}




	public static void logOut(HttpServletRequest request) {
	
		
		
		HttpSession hs = request.getSession();
		
	hs.setAttribute("account", null);
 
		loginCheck(request);
		
	}




	public static void regAccount(HttpServletRequest request) {
		//가입
		
		
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into login values(?, ?, ?, ?, ?, ?, ?)";
		
		
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			request.setCharacterEncoding("UTF-8");
			

			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String phonenumber = request.getParameter("phonenumber");
			String birthday = request.getParameter("birthday");
			String address = request.getParameter("address");
			String gender = request.getParameter("gender");

			
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, pw);
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
	System.out.println("-- > 가입 성공");
 request.setAttribute("r", "가입성공");
}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
			
		}
		
	}



				
	
}
