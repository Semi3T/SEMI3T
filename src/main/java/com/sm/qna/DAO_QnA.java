package com.sm.qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.sm.main.DBManager;

public class DAO_QnA {

	public static void getAllqna(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from qna order by q_date";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Qnas> qnas = new ArrayList<Qnas>();
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
			
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
}
