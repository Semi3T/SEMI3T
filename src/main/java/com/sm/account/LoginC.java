package com.sm.account;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginC")
public class LoginC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("contentPage", "jsp/account/login.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		AccountDAO.login(request);

		AccountDAO.loginCheck(request);
		
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("account");
		
		if (a != null) {
			

			request.setAttribute("contentPage", "jsp/home.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}else
			
			
			request.setAttribute("contentPage", "jsp/account/login.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);

			
		
	}

}
