package com.sm.mypage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.master.DAO_Master;

@WebServlet("/MyPageC")
public class MyPageC extends HttpServlet {
<<<<<<< HEAD:src/main/java/com/sm/account/MyPageC.java
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AccountDAO.loginCheck(request);

		request.setAttribute("contentPage", "jsp/account/myPage.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);

=======
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setAttribute("contentPage", "jsp/myPage/myPage.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
>>>>>>> c229859abb7066d4be7ef187e5c82cf8b09bd84a:src/main/java/com/sm/mypage/MyPageC.java
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
