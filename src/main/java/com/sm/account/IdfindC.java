package com.sm.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IdfindC")
public class IdfindC extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/account/idfind.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("phonenumber"));
		AccountDAO.findId(request);

		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/account/findidresult.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	
		
	}

}
