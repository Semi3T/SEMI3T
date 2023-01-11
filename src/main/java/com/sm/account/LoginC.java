package com.sm.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginC")
public class LoginC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.setAttribute("contentPage", "jsp/login.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.login(request);
		 
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "jsp/loginOK.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
