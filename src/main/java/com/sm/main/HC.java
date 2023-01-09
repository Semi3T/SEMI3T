package com.sm.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.sm.account.AccountDAO;

import com.sm.master.DAO_Master;


@WebServlet("/HC")
public class HC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
// <<<<<<< HEAD
		AccountDAO.loginCheck(request);
// =======
// >>>>>>> 61b613e8ac67b05cefaf624c7461c272a9c854f8
	
		
		DAO_Master.getAllProduct(request);
		request.setAttribute("contentPage", "jsp/home.jsp");
		request.getRequestDispatcher("jsp/header.jsp").forward(request, response);
		

		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
