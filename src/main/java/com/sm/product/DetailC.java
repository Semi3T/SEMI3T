package com.sm.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.account.AccountDAO;
import com.sm.master.DAO_Master;

@WebServlet("/DetailC")
public class DetailC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		DAO_Master.getdetailproduct(request);
		DAO_Master.getcomment(request);
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/detail/detailproduct.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO_Master.regcomment(request);
		DAO_Master.getdetailproduct(request);
		DAO_Master.getcomment(request);
		request.setAttribute("headerPage", "jsp/header.jsp");
		request.setAttribute("contentPage", "jsp/detail/detailproduct.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
		
	}

}
