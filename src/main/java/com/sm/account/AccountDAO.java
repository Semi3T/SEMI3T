package com.sm.account;


import java.io.File;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.lhb.main.DBManager;
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
					request.setAttribute("r", "로그인 성공!");
					
					
					Account a = new Account();
					a.setA_name(rs.getString("a_name"));
					a.setA_id(rs.getString("a_id"));
					a.setA_pw(rs.getString("a_pw"));
					a.setA_gender(rs.getString("a_gender"));
					a.setA_addr(rs.getString("a_addr"));
					a.setA_interest(rs.getString("a_interest"));
					a.setA_introduce(rs.getString("a_introduce"));
					a.setA_img(rs.getString("a_img"));
					  
				request.setAttribute("account", a);
					HttpSession hs = request.getSession();
					hs.setAttribute("account", a);
					hs.setMaxInactiveInterval(30);
					
				
					
				} else {
					
					request.setAttribute("r", "비밀번호 오류입니다");
				}
				
			}else {
				
				request.setAttribute("r", "로그인 실패..");
				
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
			
			String name = mr.getParameter("name");
			String id = mr.getParameter("id");
			String pw = mr.getParameter("pw");
			String gender = mr.getParameter("gender");
			String addr = mr.getParameter("addr");
			String[] interest = mr.getParameterValues("interest");
			String introduce = mr.getParameter("introduce");
			String file = mr.getFilesystemName("img");
			String interest2 ="";
			
			
			if(interest != null) {
				
			
			for (String s : interest) {
		//		System.out.println(s);
				interest2 += s + "!"; // food!excer!game
			}

			}else {
				interest2= "���ɻ� ����";
			}

			if(introduce.isEmpty()){
				introduce = "...";

			}

System.out.println(name);
System.out.println(id);
System.out.println(pw);
System.out.println(gender);
System.out.println(addr);
// System.out.println(interest);
System.out.println(interest2);
System.out.println(introduce);

pstmt.setString(1, name);
pstmt.setString(2, id);
pstmt.setString(3, pw);
pstmt.setString(4, gender);
pstmt.setString(5, addr);
pstmt.setString(6, interest2);
pstmt.setString(7, introduce);
pstmt.setString(8, file);

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




	public static void delAccount(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete account_test where a_id=?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			Account a = (Account) request.getSession().getAttribute("account");
			pstmt.setString(1, a.getA_id());
			
			request.getParameter("id");
			
			
			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r","Ż�� ����");
				logOut(request);
			}
			
		} catch (Exception e) {
			request.setAttribute("r","db error...");
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
	}




	public static void updateAccount(HttpServletRequest request) {
		// �����ϴ� �� = crud =C 
		
		
		
		
				Connection con = null;
				PreparedStatement pstmt = null;
				String sql = "update account_test set a_name= ?, a_pw=?, a_addr=?, a_interest=?, a_introduce=?," + " a_img=? where a_id=? "; 
						
				
				
				
				try {
					con = DBManager.connect();
					pstmt = con.prepareStatement(sql);
					
					String path = request.getSession().getServletContext().getRealPath("account/imgFolder");
					System.out.println(path);
					
					MultipartRequest mr = new MultipartRequest(request, path, 20 * 1024 * 1024, "utf-8" , new DefaultFileRenamePolicy());
					
					
					//���� �� �� ����.
					
					

					request.setCharacterEncoding("utf-8");
					
					String name = mr.getParameter("name");
					String pw = mr.getParameter("pw");
					String addr = mr.getParameter("addr");
					String[] interest = mr.getParameterValues("interest");
					String introduce = mr.getParameter("introduce");
					
					String oldFile = mr.getFilesystemName("img"); //11.Jpg ���� ����
					String newFile = mr.getFilesystemName("img2"); // ������ ���� �߰���
					
					String interest2 ="";
					
					
					if(interest != null) {
						
					
					for (String s : interest) {
				//		System.out.println(s);
						interest2 += s + "!"; // food!excer!game
					}

					}else {
						interest2= "���ɻ� ����";
					}
					

		if(introduce.isEmpty()){
			introduce = "...";
		}

		System.out.println(name);
		System.out.println(pw);
		System.out.println(addr);
		System.out.println(interest2);
		System.out.println(introduce);
		System.out.println(oldFile);
		System.out.println(newFile);

		
		
		pstmt.setString(1, name);
		pstmt.setString(2, pw);
		pstmt.setString(3, addr);
		pstmt.setString(4, interest2);

		pstmt.setString(5, introduce);
		
		if (newFile == null) {
			pstmt.setString(6, oldFile);
			
		}else {
			
			pstmt.setString(6, newFile);
			String delFile = path + "/" + oldFile; //  ���� ����(��� ����)
			File f = new File(delFile);
			f.delete();
		}
		
		// �Ķ���� /����
		
		Account a = (Account) request.getSession().getAttribute("account");
		pstmt.setString(7, a.getA_id());

		if (pstmt.executeUpdate() == 1) {
			System.out.println("-- > ��������");
		
			request.setAttribute("r", "��������");
			request.setAttribute("iddd", a.getA_id());
			request.setAttribute("pwww", pw);
			login(request);
			makeInterest(request);
			
		
		}
		
	
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					DBManager.close(con, pstmt, null);
					
				}
				
	}
}
