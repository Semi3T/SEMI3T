package com.sm.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.master.DAO_Master;


@WebServlet("/HC")
public class HC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		DAO_Master.getAllProduct(request);
		request.setAttribute("contentPage", "jsp/home.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
<<<<<<< HEAD
		

=======
>>>>>>> f43475bac38bbcf0666264e095eab639dc8dc320
		

	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
