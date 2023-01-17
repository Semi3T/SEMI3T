package com.sm.qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sm.account.Account;
import com.sm.main.DBManager;
import com.sm.master.Comment;

public class DAO_QnA {
	
	private static ArrayList<Qnas> qnas;
	private static ArrayList<Qnareply> qnareply;

	public static void getAllqna(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from qna order by q_date";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			qnas = new ArrayList<Qnas>();
			Qnas q = null;
			
			while (rs.next()) {
				q = new Qnas();
				q.setNo(rs.getInt("q_no"));
				q.setTitle(rs.getString("q_title"));
				q.setContents(rs.getString("q_contents"));
				q.setDate(rs.getDate("q_date"));
				q.setImg(rs.getString("q_img"));
				q.setId(rs.getString("q_id"));
				qnas.add(q);
			}
			request.setAttribute("q", qnas);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static void getQna(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from qna where q_no=?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
			rs = pstmt.executeQuery();
			
			Qnas q = null;
			
			if (rs.next()) {
				q = new Qnas();
				q.setNo(rs.getInt("q_no"));
				q.setTitle(rs.getString("q_title"));
				q.setContents(rs.getString("q_contents"));
				q.setDate(rs.getDate("q_date"));
				q.setImg(rs.getString("q_img"));
				q.setId(rs.getString("q_id"));
			}
			
			request.setAttribute("q", q);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static void updateQna(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "update qna set q_title=?, q_contents=? where q_no=?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("title"));
			pstmt.setString(2, request.getParameter("contents"));
			pstmt.setString(3, request.getParameter("no"));
			pstmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
			
		}
		
	}
	
	public static void regQna(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		HttpSession hs = request.getSession();
		Account a = (Account)hs.getAttribute("account");
		
		String lid = null;
		if (a != null) {
			lid = a.getL_id();
		} else {
			lid = "비회원";
		}
		
		String sql = "insert into qna values(qna_seq.nextval, ?, ?, sysdate, ?, ?, ?)";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("jsp/qna/imgFolder");
			System.out.println(path);
			
			MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
			
			String title = mr.getParameter("title");
			String contents = mr.getParameter("contents");
			String img = mr.getFilesystemName("img");
			int pw = Integer.parseInt(mr.getParameter("pw"));
			
			pstmt.setString(1, title);
			pstmt.setString(2, contents);
			pstmt.setString(3, img);
			pstmt.setString(4, lid);
			pstmt.setInt(5, pw);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
	public static void qnaPaging(int page, HttpServletRequest request) {
		
		request.setAttribute("curPageNo", page);
		
		int cnt = 20; // 한페이지당 보여줄 개수
		int total = qnas.size();	// 총데이터개수
		int pageCount = (int)Math.ceil((double)total / cnt); // 총 페이지 수
		
		request.setAttribute("pageCount", pageCount);
		
		int start = total - (cnt * (page - 1));
		int end = (page == pageCount) ? -1 : start - (cnt + 1);
		
		ArrayList<Qnas> qnaitems = new ArrayList<Qnas>();
		for (int i = start-1; i > end; i--) {
			qnaitems.add(qnas.get(i));
		}
		
		request.setAttribute("q", qnaitems);
	}

	public static void passCk(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select q_pw from qna where q_no=?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
			rs = pstmt.executeQuery();
			
			String dbpw = null;
			
			if (rs.next()) {
				dbpw = rs.getString("q_pw");
			}
			
					
			request.setAttribute("dbpw", dbpw);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public static void regReply(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("account");
		
		String lid = null;
		String lname = null;
		if (a != null) {
			lid = a.getL_id();
			lname = a.getL_name();
		} else {
			lid = "unknown";
			lname = "비회원";
		}
		
		String sql = "insert into qna_reply values(qna_reply_seq.nextval,?,?,?,sysdate,?)";
		
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, lid);
			pstmt.setString(2, lname);
			pstmt.setString(3, request.getParameter("r_content"));
			pstmt.setInt(4, Integer.parseInt(request.getParameter("no")));
			pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("등록실패");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt,null);
		}
	}
	

	public static void getReply(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from qna_reply where q_no=?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
			rs = pstmt.executeQuery();

			qnareply = new ArrayList<Qnareply>();
			Qnareply q = null;
			while (rs.next()) {
				q = new Qnareply();
				q.setR_no(rs.getString("r_no"));
				q.setR_id(rs.getString("r_id"));
				q.setR_name(rs.getString("r_name"));
				q.setR_content(rs.getString("r_content"));
				q.setR_date(rs.getString("r_date"));
				q.setQ_no(rs.getString("q_no"));
				qnareply.add(q);
			}
			request.setAttribute("qnareply", qnareply);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	
}
