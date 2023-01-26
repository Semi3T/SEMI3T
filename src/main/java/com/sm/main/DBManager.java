package com.sm.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {
	public static Connection connect() throws SQLException {

		// 건우
		// String url = "jdbc:oracle:thin:@URJ817BYXD912F6F_high?TNS_ADMIN=C:/JGW/Wallet_URJ817BYXD912F6F";
		// String url = "jdbc:oracle:thin:@URJ817BYXD912F6F_high?TNS_ADMIN=C:/gw/Wallet_URJ817BYXD912F6F";
	

		// 영웅
		 String url = "jdbc:oracle:thin:@URJ817BYXD912F6F_high?TNS_ADMIN=C:/Wallet_URJ817BYXD912F6F";
		
		// 용규
		 String url = "jdbc:oracle:thin:@URJ817BYXD912F6F_high?TNS_ADMIN=/Users/jeon-yong-gyu/Documents/Wallet_URJ817BYXD912F6F";

		// 현빈
		// String url = "jdbc:oracle:thin:@URJ817BYXD912F6F_high?TNS_ADMIN=D:/lhb/semi3tWorkspace/Wallet/Wallet_URJ817BYXD912F6F";

		
		String user="YGG";
		String password="Soldesk802!!";
		return DriverManager.getConnection(url, user, password);
		
	}

	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}