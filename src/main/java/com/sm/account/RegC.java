package com.sm.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegC")
public class RegC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
<<<<<<< HEAD
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
=======
>>>>>>> f43475bac38bbcf0666264e095eab639dc8dc320
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

}
 