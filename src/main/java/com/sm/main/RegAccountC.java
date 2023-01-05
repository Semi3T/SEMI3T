package com.sm.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegAccountC")
public class RegAccountC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		//회원가입하는 페이지를 보여주기
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage","jsp/reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//가입하는 일
		AccountDAO.regAccount(request);

	request.setAttribute("contentPage","index.jsp");
	request.getRequestDispatcher("index.jsp").forward(request,response);
	}
}



