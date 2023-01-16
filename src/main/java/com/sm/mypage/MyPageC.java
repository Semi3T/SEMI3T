package com.sm.mypage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.account.AccountDAO;
import com.sm.master.DAO_Master;

@WebServlet("/MyPageC")
public class MyPageC extends HttpServlet {
<<<<<<< HEAD

=======
>>>>>>> 53391b7adda984c91b6ff9f7560ad3ebace9af03
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AccountDAO.loginCheck(request);

<<<<<<< HEAD
		request.setAttribute("contentPage", "jsp/account/myPage.jsp");
=======
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/myPage/myPage.jsp");
>>>>>>> 53391b7adda984c91b6ff9f7560ad3ebace9af03
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
