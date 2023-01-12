package com.sm.brand;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sm.master.DAO_Master;


@WebServlet("/brand_srtC")
public class brand_srtC extends HttpServlet {

     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DAO_Master.getBrand(request);
		request.setAttribute("contentPage", "jsp/brand/brand_srt.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}