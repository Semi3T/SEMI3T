package com.sm.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.account.AccountDAO;

@WebServlet("/buyPageC")
public class buyPageC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		AccountDAO.loginCheck(request);
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/buy/buypage.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
