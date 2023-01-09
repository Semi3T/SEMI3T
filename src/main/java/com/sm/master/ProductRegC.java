package com.sm.master;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProductRegC")
public class ProductRegC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("contentPage", "jsp/master/master.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			DAO_Master.regproduct(request);
			DAO_Master.getAllProduct(request);
			request.setAttribute("contentPage", "jsp/home.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
