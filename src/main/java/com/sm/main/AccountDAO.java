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
		
		//���� ����� ����Ǹ� �Ʒ��� ������ �Ƿ�������
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
					request.setAttribute("r", "�α��� ����!");
					
					
					//id,name lhb(������ġ��)�� �ݰ����ϴ�
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
					
					request.setAttribute("r", "�н����� ����");
				}
				
			}else {
				
				request.setAttribute("r", "���������ʴ� ȸ���Դϴ�.");
				
			}
			
			
			
		
			
		} catch (Exception e) {
		 e.printStackTrace();
		}
		
		
		
		
		
	}




	public static void logOut(HttpServletRequest request) {
	
		//�α� �ƿ� �ϴ� ��
		//���� ���̱�
		
		HttpSession hs = request.getSession();
		
	hs.setAttribute("account", null);
	//	hs.removeAttribute("account");
	// hs.invalidate(); 
		loginCheck(request);
		//���ʿ� �����������  ���ų�,�����ð� ����
	}




	public static void regAccount(HttpServletRequest request) {
		// �����ϴ� �� = crud =C 
		
		
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into account_test values(?, ?, ?, ?, ?, ?, ?, ?)";
		
		
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("account/imgFolder");
			System.out.println(path);
			
			MultipartRequest mr = new MultipartRequest(request, path, 20 * 1024 * 1024, "utf-8" , new DefaultFileRenamePolicy());
			
			
			//���� �� �� ����.
			
			

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
	System.out.println("-- > ���Լ���");
 request.setAttribute("r", "���Լ���");
}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
			
		}
		
	}




	


		
	}

