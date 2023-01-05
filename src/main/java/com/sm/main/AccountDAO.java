package com.sm.main;


import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AccountDAO {
	
	
	public static boolean loginCheck(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("account");
		
		if (a == null) {
			request.setAttribute("loginPage", "jsp/login.jsp");
			return false;
		} else {
			request.setAttribute("loginPage", "jsp/loginOK.jsp");
			return true;
		}
		
	
	}
	
	
	

	public static void login(HttpServletRequest request) {
		String userID = request.getParameter("id");
		String userPW = request.getParameter("pw");
		
		//업뎃 기능이 수행되면 아래의 값들은 실려있을것
		String iddd = (String) request.getAttribute("iddd");
		String pwww = (String) request.getAttribute("pwww");
		
		if (iddd != null) {
			userID = iddd;
			userPW = pwww;
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from account_test where s_id=?";
		
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				
				if(userPW.equals(rs.getString("pw"))) {
					request.setAttribute("r", "로그인 성공!");
					
					
					//id,name lhb(엘에이치비)님 반갑습니다
					Account a = new Account();
					a.setS_id(rs.getString("id"));
					a.setS_pw(rs.getString("pw"));
					a.setS_name(rs.getString("name"));
					a.setS_hp(rs.getString("hp"));
					a.setS_birthday(rs.getDate("birthday"));
					a.setS_addr(rs.getString("addr"));
					a.setS_gender(rs.getString("gender"));
					
					  
				request.setAttribute("account", a);
					HttpSession hs = request.getSession();
					hs.setAttribute("account", a);
					hs.setMaxInactiveInterval(30);
					
				
					
				} else {
					
					request.setAttribute("r", "패스워드 에러");
				}
				
			}else {
				
				request.setAttribute("r", "존재하지않는 회원입니다.");
				
			}
			
			
			
		
			
		} catch (Exception e) {
		 e.printStackTrace();
		}
		
		
		
		
		
	}




	public static void logOut(HttpServletRequest request) {
	
		//로그 아웃 하는 일
		//세션 죽이기
		
		HttpSession hs = request.getSession();
		
	hs.setAttribute("account", null);
	//	hs.removeAttribute("account");
	// hs.invalidate(); 
		loginCheck(request);
		//애초에 만들어진적도  없거나,설정시간 만료
	}




	public static void regAccount(HttpServletRequest request) {
		// 가입하는 일 = crud =C 
		
		
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into account_test values(?, ?, ?, ?, ?, ?, ?, ?)";
		
		
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("account/imgFolder");
			System.out.println(path);
			
			MultipartRequest mr = new MultipartRequest(request, path, 20 * 1024 * 1024, "utf-8" , new DefaultFileRenamePolicy());
			
			
			//받은 값 다 띄우기.
			
			

			request.setCharacterEncoding("utf-8");
			
			String id = mr.getParameter("id");
			String pw = mr.getParameter("pw");
			String name = mr.getParameter("name");
			String hp = mr.getParameter("hp");
			String birthday = mr.getParameter("birthday");
			String addr = mr.getParameter("addr");
			String gender = mr.getParameter("gender");
			
			System.out.println(id);
			System.out.println(pw);
			System.out.println(name);
			System.out.println(hp);
			System.out.println(birthday);
			System.out.println(addr);
			System.out.println(gender);
		
		



if (pstmt.executeUpdate() == 1) {
	System.out.println("-- > 가입성공");
 request.setAttribute("r", "가입성공");
}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
			
		}
		
	}




	


		
	}

